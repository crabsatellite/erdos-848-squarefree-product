#!/usr/bin/env python3
"""Build generated Erdős 848 OLean certificates under hard resource bounds.

Lake's normal ``leanArts`` job emits OLean, ILean, C, and IR JSON and may expose
thousands of independent leaves at once.  This driver invokes ``lake env lean``
directly, writes only the kernel-importable OLean, caps time and memory per
compiler process, records resumable progress, and kills complete process trees
on interruption or failure.
"""

from __future__ import annotations

import argparse
import atexit
from collections import deque
from concurrent.futures import FIRST_COMPLETED, Future, ThreadPoolExecutor, wait
import ctypes
from dataclasses import asdict, dataclass
from datetime import datetime, timezone
from functools import lru_cache
import hashlib
import json
import os
from pathlib import Path
import shutil
import signal
import subprocess
import sys
import threading
import time
import uuid
import re


@dataclass
class Result:
    module: str
    stage: str
    status: str
    elapsed_seconds: float
    return_code: int | None
    output_tail: list[str]
    finished_at: str


class ProcessRegistry:
    def __init__(self) -> None:
        self._lock = threading.Lock()
        self._processes: dict[int, subprocess.Popen[str]] = {}

    def add(self, process: subprocess.Popen[str]) -> None:
        with self._lock:
            self._processes[process.pid] = process

    def remove(self, process: subprocess.Popen[str]) -> None:
        with self._lock:
            self._processes.pop(process.pid, None)

    def terminate_all(self) -> None:
        with self._lock:
            processes = list(self._processes.values())
        for process in processes:
            terminate_process_tree(process)


def process_is_alive(pid: int) -> bool:
    if pid <= 0:
        return False
    if os.name == "nt":
        synchronize = 0x00100000
        wait_timeout = 0x00000102
        kernel32 = ctypes.windll.kernel32
        kernel32.OpenProcess.argtypes = (
            ctypes.c_uint32, ctypes.c_int, ctypes.c_uint32,
        )
        kernel32.OpenProcess.restype = ctypes.c_void_p
        kernel32.WaitForSingleObject.argtypes = (
            ctypes.c_void_p, ctypes.c_uint32,
        )
        kernel32.WaitForSingleObject.restype = ctypes.c_uint32
        kernel32.CloseHandle.argtypes = (ctypes.c_void_p,)
        handle = kernel32.OpenProcess(synchronize, False, pid)
        if not handle:
            return False
        try:
            return kernel32.WaitForSingleObject(handle, 0) == wait_timeout
        finally:
            kernel32.CloseHandle(handle)
    try:
        os.kill(pid, 0)
    except (OSError, ProcessLookupError):
        return False
    return True


class BuildLock:
    """Exclusive per-status-file lock with automatic stale-lock recovery."""

    def __init__(self, path: Path) -> None:
        self.path = path
        self.token = uuid.uuid4().hex
        self._owned = False

    def acquire(self) -> None:
        self.path.parent.mkdir(parents=True, exist_ok=True)
        payload = json.dumps({"pid": os.getpid(), "token": self.token}) + "\n"
        for _ in range(2):
            try:
                descriptor = os.open(
                    self.path, os.O_WRONLY | os.O_CREAT | os.O_EXCL
                )
            except FileExistsError:
                try:
                    previous = json.loads(self.path.read_text(encoding="utf-8"))
                    previous_pid = int(previous.get("pid", 0))
                except (OSError, ValueError, json.JSONDecodeError):
                    previous_pid = 0
                if process_is_alive(previous_pid):
                    raise RuntimeError(
                        f"another certificate builder is active (pid {previous_pid})"
                    )
                self.path.unlink(missing_ok=True)
                continue
            with os.fdopen(descriptor, "w", encoding="utf-8") as stream:
                stream.write(payload)
            self._owned = True
            return
        raise RuntimeError(f"could not acquire build lock: {self.path}")

    def release(self) -> None:
        if not self._owned:
            return
        try:
            payload = json.loads(self.path.read_text(encoding="utf-8"))
            if payload.get("token") == self.token:
                self.path.unlink(missing_ok=True)
        except (OSError, json.JSONDecodeError):
            pass
        self._owned = False


class ParentWatchdog:
    """Kill the active Lake trees if the invoking shell disappears."""

    def __init__(self, registry: ProcessRegistry) -> None:
        self.parent_pid = os.getppid()
        self.registry = registry
        self.thread = threading.Thread(target=self._run, daemon=True)

    def start(self) -> None:
        self.thread.start()

    def _run(self) -> None:
        while True:
            time.sleep(1.0)
            if not process_is_alive(self.parent_pid):
                self.registry.terminate_all()
                os._exit(130)


def terminate_process_tree(process: subprocess.Popen[str]) -> None:
    if process.poll() is not None:
        return
    if os.name == "nt":
        subprocess.run(
            ["taskkill", "/PID", str(process.pid), "/T", "/F"],
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
            check=False,
        )
    else:
        try:
            os.killpg(process.pid, signal.SIGKILL)
        except ProcessLookupError:
            pass


def utc_now() -> str:
    return datetime.now(timezone.utc).isoformat()


def write_status(path: Path, payload: dict[str, object]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    serialized = json.dumps(payload, indent=2, sort_keys=True) + "\n"
    # Windows can transiently reject an atomic replace while an indexer or
    # antivirus scanner has the status file open.  A certificate build must
    # not lose hours of kernel work because one progress checkpoint collided
    # with that short-lived handle, so use a unique temporary and bounded
    # retries.  The proof artifacts themselves are unaffected by this path.
    last_error: OSError | None = None
    for attempt in range(6):
        temporary = path.with_name(
            f"{path.name}.{os.getpid()}.{threading.get_ident()}.{attempt}.tmp"
        )
        try:
            temporary.write_text(serialized, encoding="utf-8")
            temporary.replace(path)
            return
        except OSError as error:
            last_error = error
            temporary.unlink(missing_ok=True)
            if attempt < 5:
                time.sleep(0.05 * (attempt + 1))
    assert last_error is not None
    raise last_error


def build_input_signature(
    lean_dir: Path, source_dir: Path, kind: str,
) -> str:
    """Fingerprint every source whose change must invalidate resume records."""
    core_dir = lean_dir / "Erdos848"
    paths = {
        *source_dir.rglob("*.lean"),
        core_dir / "Asymptotic.lean",
        core_dir / "MainTheorem.lean",
        core_dir / "FinitePrefixChecker.lean",
        lean_dir / "lakefile.toml",
        lean_dir / "lake-manifest.json",
        lean_dir / "lean-toolchain",
    }
    if kind == "diagonal":
        paths.add(core_dir / "IndexedDiagonalChecker.lean")
        paths.add(core_dir / "LowRangeArithmetic.lean")
        paths.add(core_dir / "LowRangeCombinatorics.lean")
        paths.add(core_dir / "LowRangeDiagonalChecker.lean")
    if kind == "factor":
        paths.add(core_dir / "PrattTableExtensionChecker.lean")
        for dependency_dir in core_dir.glob("Generated*PrattCoverage"):
            paths.update(dependency_dir.rglob("*.lean"))
    if kind == "pratt":
        paths.add(core_dir / "PrattTableExtensionChecker.lean")
    if kind == "trace":
        paths.add(core_dir / "IndexedDiagonalChecker.lean")
        paths.add(core_dir / "PrefixTraceChecker.lean")
        paths.add(core_dir / "OutsideTraceChecker.lean")
        paths.add(core_dir / "LowRangeDiagonalChecker.lean")
        paths.add(core_dir / "LowRangePrefixTraceChecker.lean")
        for dependency_dir in core_dir.glob("Generated*Coverage"):
            paths.update(dependency_dir.rglob("*.lean"))
    digest = hashlib.sha256()
    for path in sorted((path for path in paths if path.is_file()), key=str):
        relative = path.relative_to(lean_dir).as_posix()
        digest.update(relative.encode("utf-8"))
        digest.update(b"\0")
        with path.open("rb") as stream:
            for chunk in iter(lambda: stream.read(1024 * 1024), b""):
                digest.update(chunk)
        digest.update(b"\n")
    return digest.hexdigest()


def trace_input_signatures(lean_dir: Path, source_dir: Path) -> tuple[str, str]:
    """Separate stable anchor results from the independently rechunked candidate layer."""
    core_dir = lean_dir / "Erdos848"
    common = {
        core_dir / "Asymptotic.lean",
        core_dir / "MainTheorem.lean",
        core_dir / "FinitePrefixChecker.lean",
        core_dir / "IndexedDiagonalChecker.lean",
        core_dir / "PrefixTraceChecker.lean",
        core_dir / "OutsideTraceChecker.lean",
        core_dir / "LowRangeDiagonalChecker.lean",
        core_dir / "LowRangePrefixTraceChecker.lean",
        lean_dir / "lakefile.toml",
        lean_dir / "lake-manifest.json",
        lean_dir / "lean-toolchain",
    }
    for dependency_dir in core_dir.glob("Generated*Coverage"):
        common.update(dependency_dir.rglob("*.lean"))

    def digest(paths: set[Path]) -> str:
        result = hashlib.sha256()
        for path in sorted((path for path in paths if path.is_file()), key=str):
            result.update(path.relative_to(lean_dir).as_posix().encode("utf-8"))
            result.update(b"\0")
            with path.open("rb") as stream:
                for chunk in iter(lambda: stream.read(1024 * 1024), b""):
                    result.update(chunk)
            result.update(b"\n")
        return result.hexdigest()

    anchor_sources = {
        path for path in source_dir.glob("*.lean")
        if path.stem == "Oracle" or path.stem.startswith("Anchor")
    }
    candidate_sources = {
        path for path in source_dir.glob("*.lean")
        if path.stem != "Certificate"
    }
    anchor_signature = digest(common | anchor_sources)
    candidate_signature = digest(common | anchor_sources | candidate_sources)
    return anchor_signature, candidate_signature


def module_olean_path(lean_dir: Path, module: str) -> Path:
    return (
        lean_dir / ".lake" / "build" / "lib" / "lean"
    ).joinpath(*module.split(".")).with_suffix(".olean")


def module_source_path(lean_dir: Path, module: str) -> Path:
    return lean_dir.joinpath(*module.split(".")).with_suffix(".lean")


@lru_cache(maxsize=None)
def project_imports(source: Path) -> tuple[str, ...]:
    """Read the import header without loading a generated proof body."""
    imports: list[str] = []
    block_comment_depth = 0
    with source.open("r", encoding="utf-8-sig") as stream:
        for line in stream:
            stripped = line.strip()
            block_comment_depth += stripped.count("/-")
            if block_comment_depth:
                block_comment_depth -= stripped.count("-/")
                continue
            if not stripped or stripped.startswith("--") or stripped == "prelude":
                continue
            match = re.match(r"import\s+(.+?)\s*$", stripped)
            if match is None:
                break
            imports.extend(
                module for module in match.group(1).split()
                if module.startswith("Erdos848")
            )
    return tuple(imports)


@lru_cache(maxsize=None)
def effective_project_source_mtime_ns(lean_dir: Path, module: str) -> int:
    """Return the newest source timestamp in a project's import closure.

    An OLean's filesystem timestamp is used as its compact dependency-version
    stamp.  Anchoring it to source inputs, rather than wall-clock build time,
    means that rebuilding an unchanged dependency does not invalidate every
    importer while a real source edit still propagates transitively.
    """
    source = module_source_path(lean_dir, module)
    newest = source.stat().st_mtime_ns
    for dependency in project_imports(source):
        dependency_source = module_source_path(lean_dir, dependency)
        if dependency_source.is_file():
            newest = max(
                newest,
                effective_project_source_mtime_ns(lean_dir, dependency),
            )
    return newest


def normalize_project_olean_mtime(
    lean_dir: Path,
    module: str,
    seen: set[str] | None = None,
) -> None:
    """Anchor an already-valid OLean to the same source stamp as a fresh build.

    Resume adoption used to leave Lake's wall-clock timestamp in place.  That
    made a valid adopted dependency appear newer than a freshly direct-built
    importer, even when neither source had changed, and the next layer then
    failed the dependency audit.  Normalizing both paths keeps the timestamp
    graph a faithful image of the source graph.  Dependencies outside the
    selected generated namespace must be normalized first as well: otherwise a
    freshly direct-built prerequisite keeps its wall-clock timestamp and makes
    the just-built generated importer look stale immediately.
    """
    if seen is None:
        seen = set()
    if module in seen:
        return
    seen.add(module)
    source = module_source_path(lean_dir, module)
    for dependency in project_imports(source):
        dependency_source = module_source_path(lean_dir, dependency)
        dependency_olean = module_olean_path(lean_dir, dependency)
        if dependency_source.is_file() and dependency_olean.is_file():
            normalize_project_olean_mtime(lean_dir, dependency, seen)
    olean = module_olean_path(lean_dir, module)
    stat = olean.stat()
    source_mtime_ns = effective_project_source_mtime_ns(lean_dir, module)
    if stat.st_mtime_ns != source_mtime_ns:
        os.utime(
            olean,
            ns=(stat.st_atime_ns, source_mtime_ns),
        )


def stale_project_dependency(
    lean_dir: Path,
    module: str,
    seen: set[str] | None = None,
    cache: dict[str, str | None] | None = None,
) -> str | None:
    """Return why a project OLean cannot safely be imported, if anything."""
    if seen is None:
        seen = set()
    if cache is not None and module in cache:
        return cache[module]
    if module in seen:
        return None
    seen.add(module)
    source = module_source_path(lean_dir, module)
    if not source.is_file():
        reason = f"missing project source {source.relative_to(lean_dir)}"
        if cache is not None:
            cache[module] = reason
        return reason
    olean = module_olean_path(lean_dir, module)
    if not olean.is_file():
        reason = f"missing OLean for {module}"
        if cache is not None:
            cache[module] = reason
        return reason
    if source.stat().st_mtime_ns > olean.stat().st_mtime_ns:
        reason = f"source is newer than OLean for {module}"
        if cache is not None:
            cache[module] = reason
        return reason
    for dependency in project_imports(source):
        reason = stale_project_dependency(
            lean_dir, dependency, seen, cache
        )
        if reason is not None:
            if cache is not None:
                cache[module] = reason
            return reason
        dependency_olean = module_olean_path(lean_dir, dependency)
        if dependency_olean.stat().st_mtime_ns > olean.stat().st_mtime_ns:
            reason = f"dependency OLean is newer than {module}: {dependency}"
            if cache is not None:
                cache[module] = reason
            return reason
    if cache is not None:
        cache[module] = None
    return None


def validate_direct_imports(lean_dir: Path, module: str) -> None:
    source = module_source_path(lean_dir, module)
    if not source.is_file():
        raise RuntimeError(f"generated source missing for {module}")
    # Assembly modules can directly import thousands of leaves which in turn
    # share the same large data assembly.  Reusing one cache here keeps the
    # freshness audit linear in the import graph instead of rewalking that
    # shared subtree once per direct import.
    freshness_cache: dict[str, str | None] = {}
    for dependency in project_imports(source):
        reason = stale_project_dependency(
            lean_dir, dependency, cache=freshness_cache
        )
        if reason is not None:
            raise RuntimeError(
                f"cannot directly compile {module}: {reason}; "
                "rebuild the prerequisite stage first"
            )


CORE_MODULES_BY_KIND = {
    "generic": (),
    "pratt": (
        "Erdos848.Asymptotic",
        "Erdos848.MainTheorem",
        "Erdos848.FinitePrefixChecker",
        "Erdos848.PrattTableExtensionChecker",
    ),
    "factor": (
        "Erdos848.Asymptotic",
        "Erdos848.MainTheorem",
        "Erdos848.FinitePrefixChecker",
        "Erdos848.PrattTableExtensionChecker",
    ),
    "diagonal": (
        "Erdos848.Asymptotic",
        "Erdos848.MainTheorem",
        "Erdos848.FinitePrefixChecker",
        "Erdos848.IndexedDiagonalChecker",
        "Erdos848.LowRangeArithmetic",
        "Erdos848.LowRangeCombinatorics",
        "Erdos848.LowRangeDiagonalChecker",
    ),
    "trace": (
        "Erdos848.Asymptotic",
        "Erdos848.MainTheorem",
        "Erdos848.FinitePrefixChecker",
        "Erdos848.IndexedDiagonalChecker",
        "Erdos848.PrefixTraceChecker",
        "Erdos848.OutsideTraceChecker",
    ),
}


def core_input_signature(lean_dir: Path, kind: str) -> str:
    paths = {
        *(module_source_path(lean_dir, module)
          for module in CORE_MODULES_BY_KIND[kind]),
        lean_dir / "lakefile.toml",
        lean_dir / "lake-manifest.json",
        lean_dir / "lean-toolchain",
    }
    digest = hashlib.sha256()
    for path in sorted(paths, key=str):
        digest.update(path.relative_to(lean_dir).as_posix().encode("utf-8"))
        digest.update(b"\0")
        digest.update(path.read_bytes())
        digest.update(b"\n")
    return digest.hexdigest()


def environment_input_signature(lean_dir: Path) -> str:
    """Fingerprint only inputs that can invalidate every project OLean."""
    digest = hashlib.sha256()
    for path in (
        lean_dir / "lakefile.toml",
        lean_dir / "lake-manifest.json",
        lean_dir / "lean-toolchain",
    ):
        digest.update(path.name.encode("utf-8"))
        digest.update(b"\0")
        digest.update(path.read_bytes())
        digest.update(b"\n")
    return digest.hexdigest()


def ensure_core_oleans(
    *,
    lean_dir: Path,
    kind: str,
    force: bool,
    timeout_seconds: int,
    max_memory_mib: int,
    registry: ProcessRegistry,
) -> None:
    for module in CORE_MODULES_BY_KIND[kind]:
        reason = stale_project_dependency(lean_dir, module, cache={})
        if not force and reason is None:
            continue
        [result] = build_command(
            lean_dir,
            [module],
            "core-preflight",
            timeout_seconds,
            max_memory_mib,
            registry,
        )
        print(
            f"{result.status:12} core={module} elapsed={result.elapsed_seconds:.3f}s",
            flush=True,
        )
        if result.status != "passed":
            raise RuntimeError(
                f"core preflight failed for {module}: "
                + "\n".join(result.output_tail)
            )


def generated_family_kind(directory: str) -> str:
    if "Pratt" in directory:
        return "pratt"
    if "Factor" in directory:
        return "factor"
    if "Diagonal" in directory:
        return "diagonal"
    if "PrefixTrace" in directory or "PrefixHistory" in directory:
        return "trace"
    raise RuntimeError(f"cannot infer generated certificate kind: {directory}")


def validate_prerequisite_certificates(
    lean_dir: Path, source_dir: Path, namespace: str,
) -> None:
    """Validate the generated families this concrete namespace imports.

    Custom families such as ``GeneratedFiveMillionFactorCoverage`` must depend
    on the correspondingly prefixed Pratt certificate, not on the legacy
    default family.  Discovering the actual imports makes that relation exact
    and keeps the fail-fast gate valid for every generated prefix.
    """
    dependencies: dict[str, set[str]] = {}
    for source in source_dir.glob("*.lean"):
        for dependency in project_imports(source):
            parts = dependency.split(".")
            if (
                len(parts) < 3
                or parts[0] != "Erdos848"
                or not parts[1].startswith("Generated")
                or dependency.startswith(f"{namespace}.")
            ):
                continue
            dependencies.setdefault(parts[1], set()).add(dependency)
    freshness_cache: dict[str, str | None] = {}
    for directory, imported_modules in sorted(dependencies.items()):
        dependency_kind = generated_family_kind(directory)
        status_path = lean_dir / ".lake" / f"erdos848-{directory}-status.json"
        try:
            status = json.loads(status_path.read_text(encoding="utf-8-sig"))
        except (OSError, json.JSONDecodeError) as error:
            raise RuntimeError(
                f"missing valid {dependency_kind} prerequisite status: {status_path}"
            ) from error
        source_dir = lean_dir / "Erdos848" / directory
        expected_signature = build_input_signature(
            lean_dir, source_dir, dependency_kind
        )
        if status.get("status") != "passed":
            raise RuntimeError(
                f"{dependency_kind} prerequisite is not passed: {status_path}"
            )
        if status.get("build_input_signature") != expected_signature:
            raise RuntimeError(
                f"{dependency_kind} prerequisite signature is stale; "
                f"rebuild {directory} with --kind {dependency_kind} --stage all"
            )
        for imported_module in sorted(imported_modules):
            reason = stale_project_dependency(
                lean_dir, imported_module, cache=freshness_cache
            )
            if reason is not None:
                raise RuntimeError(
                    f"{dependency_kind} prerequisite OLean is stale: {reason}"
                )


def prune_non_kernel_artifacts(
    lean_dir: Path, namespace: str,
) -> tuple[int, int]:
    """Remove generated backend/LSP artifacts that kernel checking never reads."""
    parts = namespace.split(".")
    reclaimed_bytes = 0
    removed_files = 0
    ir_dir = (lean_dir / ".lake" / "build" / "ir").joinpath(*parts)
    if ir_dir.is_dir():
        for path in ir_dir.rglob("*"):
            if path.is_file():
                reclaimed_bytes += path.stat().st_size
                removed_files += 1
        shutil.rmtree(ir_dir)
    lib_dir = (
        lean_dir / ".lake" / "build" / "lib" / "lean"
    ).joinpath(*parts)
    if lib_dir.is_dir():
        for pattern in ("*.ilean", "*.ilean.hash", "*.trace"):
            for path in lib_dir.rglob(pattern):
                reclaimed_bytes += path.stat().st_size
                removed_files += 1
                path.unlink()
    if removed_files:
        print(
            f"artifact-prune namespace={namespace} files={removed_files} "
            f"reclaimed_mib={reclaimed_bytes / (1024 * 1024):.2f}",
            flush=True,
        )
    return removed_files, reclaimed_bytes


def source_for_project_artifact(lean_dir: Path, artifact: Path) -> Path | None:
    """Map a project library artifact back to its Lean source, when possible."""
    library_root = lean_dir / ".lake" / "build" / "lib" / "lean"
    try:
        relative = artifact.relative_to(library_root)
    except ValueError:
        return None
    name = relative.name
    for ending in (
        ".olean.hash", ".ilean.hash", ".olean", ".ilean", ".trace",
    ):
        if name.endswith(ending):
            source_name = name[:-len(ending)] + ".lean"
            return lean_dir / relative.with_name(source_name)
    return None


def prune_stale_project_artifacts(lean_dir: Path) -> tuple[int, int]:
    """Remove stale per-module artifacts, including interrupted temporary OLeans.

    The previous directory-level cleanup missed old generator module names inside
    a still-live namespace.  Those files are large (often several MiB each) and
    silently accumulate after rechunking.  Exact source-path matching is safe:
    a kernel-importable project OLean must have a corresponding ``.lean`` file.
    """
    library_root = lean_dir / ".lake" / "build" / "lib" / "lean" / "Erdos848"
    if not library_root.is_dir():
        return 0, 0
    removed_files = 0
    reclaimed_bytes = 0
    for artifact in library_root.rglob("*"):
        if not artifact.is_file():
            continue
        source = source_for_project_artifact(lean_dir, artifact)
        if source is None or source.is_file():
            continue
        reclaimed_bytes += artifact.stat().st_size
        removed_files += 1
        artifact.unlink()
    if removed_files:
        print(
            f"stale-artifact-prune files={removed_files} "
            f"reclaimed_mib={reclaimed_bytes / (1024 * 1024):.2f}",
            flush=True,
        )
    return removed_files, reclaimed_bytes


def prune_project_non_kernel_artifacts(lean_dir: Path) -> tuple[int, int]:
    """Keep only kernel-importable project artifacts across all namespaces."""
    removed_files = 0
    reclaimed_bytes = 0
    ir_dir = lean_dir / ".lake" / "build" / "ir" / "Erdos848"
    if ir_dir.is_dir():
        for path in ir_dir.rglob("*"):
            if path.is_file():
                removed_files += 1
                reclaimed_bytes += path.stat().st_size
        shutil.rmtree(ir_dir)
    library_root = lean_dir / ".lake" / "build" / "lib" / "lean" / "Erdos848"
    if library_root.is_dir():
        for pattern in ("*.ilean", "*.ilean.hash", "*.trace"):
            for path in library_root.rglob(pattern):
                removed_files += 1
                reclaimed_bytes += path.stat().st_size
                path.unlink()
    if removed_files:
        print(
            f"project-artifact-prune files={removed_files} "
            f"reclaimed_mib={reclaimed_bytes / (1024 * 1024):.2f}",
            flush=True,
        )
    return removed_files, reclaimed_bytes


def prune_orphan_project_artifacts(lean_dir: Path) -> tuple[int, int]:
    """Drop build namespaces whose source directories were removed or archived."""
    source_root = lean_dir / "Erdos848"
    roots = (
        lean_dir / ".lake" / "build" / "ir" / "Erdos848",
        lean_dir / ".lake" / "build" / "lib" / "lean" / "Erdos848",
    )
    removed_files = 0
    reclaimed_bytes = 0
    for root in roots:
        if not root.is_dir():
            continue
        for artifact_dir in root.iterdir():
            if not artifact_dir.is_dir():
                continue
            if (source_root / artifact_dir.name).is_dir():
                continue
            for path in artifact_dir.rglob("*"):
                if path.is_file():
                    removed_files += 1
                    reclaimed_bytes += path.stat().st_size
            shutil.rmtree(artifact_dir)
    if removed_files:
        print(
            f"orphan-artifact-prune files={removed_files} "
            f"reclaimed_mib={reclaimed_bytes / (1024 * 1024):.2f}",
            flush=True,
        )
    return removed_files, reclaimed_bytes


def build_command(
    lean_dir: Path,
    modules: list[str],
    stage: str,
    timeout_seconds: int,
    max_memory_mib: int,
    registry: ProcessRegistry,
) -> list[Result]:
    """Compile one module directly to OLean under hard time and memory caps."""
    if not modules:
        return []
    if len(modules) != 1:
        raise RuntimeError("direct OLean compiler accepts exactly one module")
    module = modules[0]
    validate_direct_imports(lean_dir, module)
    started = time.monotonic()
    creation_flags = subprocess.CREATE_NEW_PROCESS_GROUP if os.name == "nt" else 0
    source = module_source_path(lean_dir, module)
    final_olean = module_olean_path(lean_dir, module)
    final_olean.parent.mkdir(parents=True, exist_ok=True)
    temporary_olean = final_olean.with_name(
        f"{final_olean.stem}.{uuid.uuid4().hex}.tmp.olean"
    )
    process = subprocess.Popen(
        [
            "lake", "env", "lean", "--trust=0", "-q", "-M",
            str(max_memory_mib),
            "-o", str(temporary_olean), str(source.relative_to(lean_dir)),
        ],
        cwd=lean_dir,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
        encoding="utf-8",
        errors="replace",
        bufsize=1,
        creationflags=creation_flags,
        start_new_session=os.name != "nt",
    )
    registry.add(process)
    status = "failed"
    return_code: int | None = None
    output_tail_buffer: deque[str] = deque(maxlen=30)

    def drain_output() -> None:
        assert process.stdout is not None
        for line in process.stdout:
            output_tail_buffer.append(line.rstrip("\r\n"))

    reader = threading.Thread(target=drain_output, daemon=True)
    reader.start()
    try:
        deadline = started + timeout_seconds
        next_heartbeat = started + 30.0
        while True:
            remaining = deadline - time.monotonic()
            if remaining <= 0:
                status = "timeout"
                terminate_process_tree(process)
                process.wait()
                return_code = process.returncode
                break
            try:
                process.wait(timeout=min(5.0, remaining))
                return_code = process.returncode
                status = "passed" if return_code == 0 else "failed"
                break
            except subprocess.TimeoutExpired:
                now = time.monotonic()
                if now >= next_heartbeat:
                    print(
                        f"heartbeat stage={stage} module={module} "
                        f"elapsed={now - started:.0f}s pid={process.pid}",
                        flush=True,
                    )
                    next_heartbeat = now + 30.0
    finally:
        registry.remove(process)
        reader.join(timeout=5.0)
        if reader.is_alive() and process.stdout is not None:
            process.stdout.close()
            reader.join(timeout=1.0)
    elapsed = time.monotonic() - started
    if status == "passed":
        if not temporary_olean.is_file():
            status = "failed"
            output_tail_buffer.append(
                f"missing expected temporary OLean: {temporary_olean}"
            )
        else:
            temporary_olean.replace(final_olean)
            normalize_project_olean_mtime(lean_dir, module)
    if temporary_olean.exists():
        temporary_olean.unlink(missing_ok=True)
    finished_at = utc_now()
    output_tail = list(output_tail_buffer) if status != "passed" else []
    return [
        Result(
            module=module,
            stage=stage,
            status=status,
            elapsed_seconds=round(elapsed, 3),
            return_code=return_code,
            output_tail=output_tail if index == 0 else [],
            finished_at=finished_at,
        )
        for index, module in enumerate(modules)
    ]


def build_batch(
    lean_dir: Path,
    modules: list[str],
    stage: str,
    timeout_seconds: int,
    max_memory_mib: int,
    registry: ProcessRegistry,
) -> list[Result]:
    """Build a bounded direct-compiler batch (currently exactly one leaf)."""
    results = build_command(
        lean_dir,
        modules,
        stage,
        timeout_seconds * len(modules),
        max_memory_mib,
        registry,
    )
    if len(modules) == 1:
        return results
    if all(result.status == "passed" for result in results):
        return results
    isolated: list[Result] = []
    for module in modules:
        [result] = build_command(
            lean_dir, [module], stage, timeout_seconds, max_memory_mib, registry
        )
        isolated.append(result)
        if result.status != "passed":
            break
    return isolated


def discover_modules(source_dir: Path, namespace: str, prefix: str) -> list[str]:
    return [
        f"{namespace}.{path.stem}"
        for path in sorted(source_dir.glob(f"{prefix}*.lean"))
    ]


def discover_namespace_modules(
    source_dir: Path, namespace: str,
) -> set[str]:
    """Return module names below a namespace, including nested subnamespaces."""
    modules: set[str] = set()
    for path in source_dir.rglob("*.lean"):
        relative = path.relative_to(source_dir).with_suffix("")
        modules.add(".".join((namespace, *relative.parts)))
    return modules


def discover_generic_dependency_layers(
    source_dir: Path,
    namespace: str,
    targets: list[str] | None = None,
) -> list[list[str]]:
    """Topologically layer a generated namespace or a target dependency closure.

    Historical certificate families predate the fixed Data/Code/Envelope
    basenames used by this builder. Their import headers still form a complete
    dependency graph, so compiling one antichain at a time preserves bounded
    parallelism without hard-coding every legacy filename.  A target closure is
    useful when a freshly rebuilt checker invalidates only one imported data
    spine of a much larger historical family.
    """
    lean_dir = source_dir
    for _ in namespace.split("."):
        lean_dir = lean_dir.parent
    all_modules = discover_namespace_modules(source_dir, namespace)
    if not all_modules:
        raise RuntimeError(f"no Lean modules found in {source_dir}")
    all_dependencies = {
        module: (
            set(project_imports(module_source_path(lean_dir, module)))
            & all_modules
        )
        for module in all_modules
    }
    if targets:
        normalized_targets = {
            target
            if target.startswith(f"{namespace}.")
            else f"{namespace}.{target}"
            for target in targets
        }
        missing_targets = normalized_targets - all_modules
        if missing_targets:
            raise RuntimeError(
                "unknown generic target(s): "
                + ", ".join(sorted(missing_targets))
            )
        modules: set[str] = set()
        pending = list(normalized_targets)
        while pending:
            module = pending.pop()
            if module in modules:
                continue
            modules.add(module)
            pending.extend(all_dependencies[module] - modules)
    else:
        modules = all_modules
    dependencies = {
        module: all_dependencies[module] & modules
        for module in modules
    }
    layers: list[list[str]] = []
    completed: set[str] = set()
    remaining = set(modules)
    while remaining:
        ready = sorted(
            module for module in remaining
            if dependencies[module] <= completed
        )
        if not ready:
            blocked = ", ".join(sorted(remaining)[:10])
            raise RuntimeError(
                "generated namespace import graph contains a cycle or "
                f"unresolved internal dependency: {blocked}"
            )
        layers.append(ready)
        completed.update(ready)
        remaining.difference_update(ready)
    return layers


def select_leaf_modules(
    modules: list[str], start: int, stop: int | None,
) -> list[str]:
    return modules[start:stop]


def select_preflight_modules(modules: list[str], count: int) -> list[str]:
    """Choose deterministic representatives spanning an ordered leaf stage."""
    if count <= 0 or not modules:
        return []
    count = min(count, len(modules))
    if count == 1:
        return [modules[len(modules) // 2]]
    indices = {
        round(index * (len(modules) - 1) / (count - 1))
        for index in range(count)
    }
    return [modules[index] for index in sorted(indices)]


def compact_result_record(result: Result) -> dict[str, object]:
    record = asdict(result)
    if result.status == "passed":
        # The dictionary key already records the module, while success implies
        # return code zero and no diagnostic tail.
        record.pop("module")
        record.pop("return_code")
        record.pop("output_tail")
    return record


def run_leaf_preflight(
    *,
    lean_dir: Path,
    stage: str,
    modules: list[str],
    workers: int,
    registry: ProcessRegistry,
    state: dict[str, object],
    status_path: Path,
    results: dict[str, object],
    max_memory_mib: int,
) -> list[str]:
    """Reject an unviable leaf design before scheduling the complete stage."""
    requested = int(state.get("preflight_leaves", 0))
    if requested <= 0 or len(modules) <= 1:
        return modules
    timeout_seconds = int(state.get("preflight_timeout_seconds", 0))
    if timeout_seconds <= 0:
        raise RuntimeError(
            "leaf preflight requires a positive preflight timeout"
        )
    maximum_wall_seconds = float(
        state.get("max_estimated_wall_seconds", 0.0)
    )
    safety_factor = float(state.get("preflight_safety_factor", 1.5))
    timeout_safety_factor = float(
        state.get("minimum_timeout_safety_factor", 2.0)
    )
    leaf_timeout_seconds = int(state.get("leaf_timeout_seconds", 0))
    samples = select_preflight_modules(modules, requested)
    largest_source_module = max(
        modules,
        key=lambda module: module_source_path(lean_dir, module).stat().st_size,
    )
    if largest_source_module not in samples:
        if len(samples) < requested:
            samples.append(largest_source_module)
        else:
            samples[len(samples) // 2] = largest_source_module
        module_order = {module: index for index, module in enumerate(modules)}
        samples.sort(key=module_order.__getitem__)
    print(
        f"preflight stage={stage} samples={len(samples)} "
        f"timeout={timeout_seconds}s/sample memory={max_memory_mib}MiB",
        flush=True,
    )
    sample_results: list[Result] = []
    for module in samples:
        [result] = build_batch(
            lean_dir,
            [module],
            f"preflight-{stage}",
            timeout_seconds,
            max_memory_mib,
            registry,
        )
        sample_results.append(result)
        results[result.module] = compact_result_record(result)
        state["updated_at"] = utc_now()
        write_status(status_path, state)
        print(
            f"preflight-{result.status:12} "
            f"elapsed={result.elapsed_seconds:.3f}s {result.module}",
            flush=True,
        )
        if result.status != "passed":
            tail = "\n".join(result.output_tail)
            raise RuntimeError(
                f"preflight rejected stage={stage}: {module} ended with "
                f"{result.status} under {timeout_seconds}s; no full run started\n"
                f"{tail}"
            )
    slowest_seconds = max(result.elapsed_seconds for result in sample_results)
    estimated_wall_seconds = (
        slowest_seconds * len(modules) / max(1, workers) * safety_factor
    )
    preflights = state.setdefault("preflights", {})
    assert isinstance(preflights, dict)
    preflights[stage] = {
        "finished_at": utc_now(),
        "sample_modules": samples,
        "sample_elapsed_seconds": [
            result.elapsed_seconds for result in sample_results
        ],
        "slowest_sample_seconds": round(slowest_seconds, 3),
        "safety_factor": safety_factor,
        "timeout_safety_factor": timeout_safety_factor,
        "leaf_timeout_seconds": leaf_timeout_seconds,
        "workers": workers,
        "stage_module_count": len(modules),
        "estimated_wall_seconds": round(estimated_wall_seconds, 3),
        "maximum_wall_seconds": maximum_wall_seconds,
        "max_memory_mib_per_process": max_memory_mib,
    }
    state["updated_at"] = utc_now()
    write_status(status_path, state)
    print(
        f"preflight-estimate stage={stage} "
        f"wall={estimated_wall_seconds:.1f}s "
        f"limit={maximum_wall_seconds:.1f}s safety={safety_factor:.2f} "
        f"timeout_ratio={leaf_timeout_seconds / slowest_seconds:.2f}",
        flush=True,
    )
    required_leaf_timeout = slowest_seconds * timeout_safety_factor
    if leaf_timeout_seconds < required_leaf_timeout:
        raise RuntimeError(
            f"preflight rejected stage={stage}: leaf timeout "
            f"{leaf_timeout_seconds}s is below the required "
            f"{timeout_safety_factor:.2f}x sample margin "
            f"({required_leaf_timeout:.1f}s); no full run started"
        )
    if maximum_wall_seconds > 0.0 and (
        estimated_wall_seconds > maximum_wall_seconds
    ):
        raise RuntimeError(
            f"preflight rejected stage={stage}: conservative wall estimate "
            f"{estimated_wall_seconds:.1f}s exceeds "
            f"{maximum_wall_seconds:.1f}s; no full run started"
        )
    sample_set = set(samples)
    return [module for module in modules if module not in sample_set]


def run_stage(
    *,
    lean_dir: Path,
    stage: str,
    modules: list[str],
    workers: int,
    timeout_seconds: int,
    registry: ProcessRegistry,
    state: dict[str, object],
    status_path: Path,
    batch_size: int = 1,
    progress_every: int = 25,
) -> None:
    if not modules:
        return
    progress_every = int(state.get("progress_every", progress_every))
    # Leaf checks stay under the strict per-process ceiling.  A final
    # certificate assembly is single-threaded and must load the transitive
    # environments of every already-checked leaf; give only those top-level
    # `assembly-*` stages their separately budgeted ceiling.
    is_top_level_assembly = (
        stage.startswith("assembly-") or stage == "certificate-assembly"
    )
    memory_key = (
        "final_max_memory_mib" if is_top_level_assembly else "max_memory_mib"
    )
    max_memory_mib = int(state.get(memory_key, 4096))
    results = state.setdefault("results", {})
    assert isinstance(results, dict)
    pending_modules: list[str] = []
    resumed = 0
    freshness_cache: dict[str, str | None] = {}
    for module in modules:
        reason = stale_project_dependency(
            lean_dir, module, cache=freshness_cache
        )
        if reason is None:
            normalize_project_olean_mtime(lean_dir, module)
            resumed += 1
            previous = results.get(module)
            if not (
                isinstance(previous, dict)
                and previous.get("status") == "passed"
            ):
                results[module] = {
                    "status": "passed",
                    "stage": stage,
                    "adopted_fresh_olean": True,
                    "finished_at": utc_now(),
                }
        else:
            pending_modules.append(module)
    if resumed:
        print(
            f"resume-skip stage={stage} modules={resumed}",
            flush=True,
        )
    modules = pending_modules
    if not modules:
        return
    total_pending = len(modules)
    modules = run_leaf_preflight(
        lean_dir=lean_dir,
        stage=stage,
        modules=modules,
        workers=workers,
        registry=registry,
        state=state,
        status_path=status_path,
        results=results,
        max_memory_mib=max_memory_mib,
    )
    if not modules:
        return
    print(
        f"stage={stage} modules={len(modules)}/{total_pending} workers={workers} "
        f"batch_size={batch_size} timeout={timeout_seconds}s/module",
        flush=True,
    )
    batches = [
        modules[index:index + batch_size]
        for index in range(0, len(modules), batch_size)
    ]
    completed = 0
    last_checkpoint = time.monotonic()
    completed_since_checkpoint = 0
    with ThreadPoolExecutor(max_workers=workers) as executor:
        pending: dict[Future[list[Result]], list[str]] = {}
        iterator = iter(batches)

        def submit_next() -> bool:
            try:
                batch = next(iterator)
            except StopIteration:
                return False
            future = executor.submit(
                build_batch,
                lean_dir,
                batch,
                stage,
                timeout_seconds,
                max_memory_mib,
                registry,
            )
            pending[future] = batch
            return True

        for _ in range(min(workers, len(batches))):
            submit_next()

        failed: Result | None = None
        while pending:
            done, _ = wait(pending, return_when=FIRST_COMPLETED)
            for future in done:
                batch = pending.pop(future)
                try:
                    batch_results = future.result()
                except BaseException as error:
                    batch_results = [
                        Result(
                            module=batch[0],
                            stage=stage,
                            status="driver-error",
                            elapsed_seconds=0.0,
                            return_code=None,
                            output_tail=[repr(error)],
                            finished_at=utc_now(),
                        )
                    ]
                for result in batch_results:
                    results[result.module] = compact_result_record(result)
                    completed += 1
                    completed_since_checkpoint += 1
                    if (
                        result.status != "passed"
                        or completed == len(modules)
                        or completed % progress_every == 0
                    ):
                        print(
                            f"{result.status:12} completed={completed}/{len(modules)} "
                            f"batch={result.elapsed_seconds:.3f}s {result.module}",
                            flush=True,
                        )
                    if result.status != "passed":
                        failed = result
                        break
                state["updated_at"] = utc_now()
                now = time.monotonic()
                # Rewriting a multi-megabyte snapshot after every tiny leaf
                # causes quadratic I/O.  Checkpoint at a bounded cadence; at
                # worst a crash replays a few already-built, up-to-date OLeans.
                if (
                    failed is not None
                    or completed_since_checkpoint >= progress_every
                    or now - last_checkpoint >= 10.0
                ):
                    write_status(status_path, state)
                    last_checkpoint = now
                    completed_since_checkpoint = 0
                if failed is not None:
                    break
                if len(batch_results) != len(batch):
                    failed = batch_results[-1]
                    break
                submit_next()
            if failed is not None:
                registry.terminate_all()
                for future in pending:
                    future.cancel()
                break
        if completed_since_checkpoint:
            write_status(status_path, state)
        if failed is not None:
            tail = "\n".join(failed.output_tail)
            raise RuntimeError(
                f"{failed.module} ended with {failed.status}; process tree stopped\n{tail}"
            )


def parse_args() -> argparse.Namespace:
    repository = Path(__file__).resolve().parents[1]
    parser = argparse.ArgumentParser()
    parser.add_argument("--lean-dir", type=Path, default=repository / "lean4")
    parser.add_argument(
        "--kind", choices=("diagonal", "pratt", "factor", "trace", "generic"),
        default="diagonal"
    )
    parser.add_argument(
        "--module-prefix",
        help=(
            "generated Lean namespace; defaults to "
            "Erdos848.GeneratedDiagonalCoverage or Erdos848.GeneratedPrattCoverage"
        ),
    )
    parser.add_argument(
        "--generic-target",
        action="append",
        default=[],
        help=(
            "for --kind generic, compile only this module and its transitive "
            "same-namespace imports; repeat for multiple targets"
        ),
    )
    parser.add_argument(
        "--stage",
        choices=(
            "data", "data-assembly", "indexed-data", "indexed-data-assembly",
            "code", "progressions", "progression-assembly", "roots", "proofs",
            "core-certificate", "envelopes",
            "oracle", "anchor-data", "anchor-data-leaves", "anchor-data-assembly",
            "anchors", "anchor-proof-leaves", "anchor-certificate",
            "candidate-data", "candidate-data-assembly", "candidate-data-leaves",
            "candidates", "candidate-proof-leaves", "candidate-certificate",
            "certificate", "all",
        ),
        default="all",
    )
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument(
        "--leaf-batch-size", type=int, default=1,
        help=(
            "compatibility request for leaf batching; direct OLean mode "
            "normalizes this to one target per compiler process"
        ),
    )
    parser.add_argument(
        "--max-active-leaves", type=int, default=2,
        help=(
            "hard cap on workers times batch size; larger requests are "
            "reduced automatically (default: 2)"
        ),
    )
    parser.add_argument("--leaf-start-index", type=int, default=0)
    parser.add_argument("--leaf-stop-index", type=int)
    parser.add_argument("--leaf-timeout-seconds", type=int, default=180)
    parser.add_argument("--final-timeout-seconds", type=int, default=600)
    parser.add_argument(
        "--preflight-leaves", type=int, default=0,
        help=(
            "compile this many representative leaves before a full stage; "
            "zero disables preflight for backward compatibility (default: 0)"
        ),
    )
    parser.add_argument(
        "--preflight-timeout-seconds", type=int, default=10,
        help="short timeout for each representative leaf (default: 10)",
    )
    parser.add_argument(
        "--max-estimated-wall-seconds", type=float, default=0.0,
        help=(
            "reject a full leaf stage when its conservative preflight ETA "
            "exceeds this value; zero disables the ETA limit (default: 0)"
        ),
    )
    parser.add_argument(
        "--preflight-safety-factor", type=float, default=1.5,
        help="multiply the slowest-sample ETA by this factor (default: 1.5)",
    )
    parser.add_argument(
        "--minimum-timeout-safety-factor", type=float, default=2.0,
        help=(
            "require the full leaf timeout to be at least this multiple of "
            "the slowest preflight sample (default: 2.0)"
        ),
    )
    parser.add_argument(
        "--max-memory-mib", type=int, default=4096,
        help="hard Lean memory ceiling per active compiler process (default: 4096)",
    )
    parser.add_argument(
        "--final-max-memory-mib", type=int, default=8192,
        help=(
            "hard Lean memory ceiling for single-threaded top-level "
            "assembly-* modules (default: 8192)"
        ),
    )
    parser.add_argument(
        "--core-timeout-seconds", type=int, default=1200,
        help="timeout for each shared core module rebuild (default: 1200)",
    )
    parser.add_argument(
        "--core-max-memory-mib", type=int, default=6144,
        help="hard memory ceiling for a shared core rebuild (default: 6144)",
    )
    parser.add_argument(
        "--progress-every", type=int, default=25,
        help="print/checkpoint after this many completed leaf targets (default: 25)",
    )
    parser.add_argument(
        "--status-file", type=Path, default=None,
        help="default: lean4/.lake/erdos848-generated-status.json",
    )
    parser.add_argument(
        "--core-only", action="store_true",
        help="rebuild/validate only the shared core OLeans, then exit",
    )
    parser.add_argument(
        "--skip-generic-core-preflight", action="store_true",
        help=(
            "skip the family-wide shared-core rebuild when the selected "
            "generated leaves have already been checked to use only their "
            "fresh direct imports"
        ),
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    if args.workers < 1:
        raise SystemExit("--workers must be positive")
    if args.leaf_batch_size < 1:
        raise SystemExit("--leaf-batch-size must be positive")
    if args.max_active_leaves < 1:
        raise SystemExit("--max-active-leaves must be positive")
    if args.leaf_timeout_seconds < 1:
        raise SystemExit("--leaf-timeout-seconds must be positive")
    if args.final_timeout_seconds < 1:
        raise SystemExit("--final-timeout-seconds must be positive")
    if args.preflight_leaves < 0:
        raise SystemExit("--preflight-leaves must be nonnegative")
    if args.preflight_timeout_seconds < 1:
        raise SystemExit("--preflight-timeout-seconds must be positive")
    if args.max_estimated_wall_seconds < 0.0:
        raise SystemExit("--max-estimated-wall-seconds must be nonnegative")
    if args.preflight_safety_factor < 1.0:
        raise SystemExit("--preflight-safety-factor must be at least 1")
    if args.minimum_timeout_safety_factor < 1.0:
        raise SystemExit("--minimum-timeout-safety-factor must be at least 1")
    if args.max_memory_mib < 256:
        raise SystemExit("--max-memory-mib must be at least 256")
    if args.final_max_memory_mib < 256:
        raise SystemExit("--final-max-memory-mib must be at least 256")
    if args.core_timeout_seconds < 1:
        raise SystemExit("--core-timeout-seconds must be positive")
    if args.core_max_memory_mib < 256:
        raise SystemExit("--core-max-memory-mib must be at least 256")
    if args.progress_every < 1:
        raise SystemExit("--progress-every must be positive")
    requested_workers = args.workers
    requested_batch_size = args.leaf_batch_size
    # Direct Lean compilation has no Lake dependency-graph startup to amortise.
    # Convert an old workers-times-batch request to the same bounded number of
    # one-module compiler processes.
    requested_parallelism = requested_workers * requested_batch_size
    args.leaf_batch_size = 1
    args.workers = min(requested_parallelism, args.max_active_leaves)
    if (
        args.workers != requested_workers
        or args.leaf_batch_size != requested_batch_size
    ):
        print(
            "resource-cap "
            f"requested_workers={requested_workers} "
            f"requested_batch_size={requested_batch_size} "
            f"effective_workers={args.workers} "
            f"effective_batch_size={args.leaf_batch_size} "
            f"max_active_leaves={args.max_active_leaves}",
            flush=True,
        )
    if args.leaf_start_index < 0:
        raise SystemExit("--leaf-start-index must be nonnegative")
    if args.leaf_stop_index is not None and (
        args.leaf_stop_index < args.leaf_start_index
    ):
        raise SystemExit("--leaf-stop-index must be at least --leaf-start-index")
    lean_dir = args.lean_dir.resolve()
    namespace = args.module_prefix or (
        "Erdos848.GeneratedDiagonalCoverage"
        if args.kind == "diagonal"
        else (
            "Erdos848.GeneratedPrattCoverage"
            if args.kind == "pratt"
            else (
                "Erdos848.GeneratedFactorCoverage"
                if args.kind == "factor"
                else "Erdos848.GeneratedPrefixTraceCoverage"
            )
        )
    )
    if args.kind == "generic" and args.module_prefix is None:
        raise SystemExit("--kind generic requires --module-prefix")
    if args.generic_target and args.kind != "generic":
        raise SystemExit("--generic-target requires --kind generic")
    if namespace != "Erdos848" and not namespace.startswith("Erdos848."):
        raise SystemExit("--module-prefix must be Erdos848 or begin with Erdos848.")
    source_dir = lean_dir.joinpath(*namespace.split("."))
    required_data = "AnchorData.lean" if args.kind == "trace" else "Data.lean"
    if args.kind != "generic" and not (source_dir / required_data).is_file():
        raise SystemExit(f"generated data not found: {source_dir}")
    if args.kind == "generic" and not source_dir.is_dir():
        raise SystemExit(f"generated namespace not found: {source_dir}")
    status_path = (
        args.status_file.resolve()
        if args.status_file is not None
        else lean_dir / ".lake" / f"erdos848-{source_dir.name}-status.json"
    )
    # One lock for every certificate family.  Per-status locks allowed four
    # independent invocations to multiply the nominal active-leaf cap.
    build_lock = BuildLock(
        lean_dir / ".lake" / "erdos848-generated-builder.lock"
    )
    try:
        build_lock.acquire()
    except RuntimeError as error:
        print(str(error), file=sys.stderr)
        return 1
    atexit.register(build_lock.release)
    registry = ProcessRegistry()
    atexit.register(registry.terminate_all)
    ParentWatchdog(registry).start()
    orphan_files, orphan_bytes = prune_orphan_project_artifacts(lean_dir)
    stale_files, stale_bytes = prune_stale_project_artifacts(lean_dir)
    project_files, project_bytes = prune_project_non_kernel_artifacts(lean_dir)
    family_files, family_bytes = prune_non_kernel_artifacts(
        lean_dir, namespace
    )
    pruned_files = orphan_files + stale_files + project_files + family_files
    pruned_bytes = orphan_bytes + stale_bytes + project_bytes + family_bytes
    state: dict[str, object] = {}
    if status_path.is_file():
        try:
            loaded = json.loads(status_path.read_text(encoding="utf-8-sig"))
            if isinstance(loaded, dict) and loaded.get("schema") == 1:
                state = loaded
        except (OSError, json.JSONDecodeError):
            pass
    state.setdefault("schema", 1)
    state.setdefault("started_at", utc_now())
    state.setdefault("results", {})
    stored_results = state["results"]
    assert isinstance(stored_results, dict)
    for previous in stored_results.values():
        if isinstance(previous, dict) and previous.get("status") == "passed":
            previous.pop("module", None)
            previous.pop("return_code", None)
            previous.pop("output_tail", None)
    current_modules = discover_namespace_modules(source_dir, namespace)
    stale_modules = [
        module for module in stored_results
        if module.startswith(f"{namespace}.") and module not in current_modules
    ]
    for module in stale_modules:
        stored_results.pop(module)
    if stale_modules:
        state["pruned_result_count"] = (
            int(state.get("pruned_result_count", 0)) + len(stale_modules)
        )
    signature_invalidated = False
    if args.kind == "trace":
        anchor_signature, candidate_signature = trace_input_signatures(
            lean_dir, source_dir
        )
        trace_signature_schema = 2
        if state.get("trace_input_signature_schema") == trace_signature_schema:
            # Keep per-module records across a generator-only restructuring.
            # ``run_stage`` revalidates the source and the complete imported
            # OLean closure before every resume skip, so clearing an entire
            # 5M data layer here is both redundant and prohibitively costly.
            if state.get("trace_anchor_input_signature") != anchor_signature:
                state["resume_invalidated_at"] = utc_now()
                signature_invalidated = True
            elif state.get("trace_candidate_input_signature") != candidate_signature:
                state["candidate_resume_invalidated_at"] = utc_now()
                signature_invalidated = True
        state["trace_input_signature_schema"] = trace_signature_schema
        state["trace_anchor_input_signature"] = anchor_signature
        state["trace_candidate_input_signature"] = candidate_signature
        state["build_input_signature"] = candidate_signature
    else:
        signature = build_input_signature(lean_dir, source_dir, args.kind)
        previous_signature = state.get("build_input_signature")
        signature_schema = 3
        if (
            state.get("build_input_signature_schema") in (2, signature_schema)
            and previous_signature is not None
            and previous_signature != signature
        ):
            # Preserve completed records.  ``run_stage`` validates every one
            # against its source and recursively against imported OLeans, so a
            # changed leaf invalidates only itself and its actual dependants.
            # Clearing the whole family here made a one-file generator edit
            # replay thousands of independent, already-current modules.
            state["resume_invalidated_at"] = utc_now()
            signature_invalidated = True
        state["build_input_signature_schema"] = signature_schema
        state["build_input_signature"] = signature
    current_core_signature = core_input_signature(lean_dir, args.kind)
    state["core_input_signature"] = current_core_signature
    current_environment_signature = environment_input_signature(lean_dir)
    previous_environment_signature = state.get("environment_input_signature")
    force_core_rebuild = (
        previous_environment_signature is not None
        and previous_environment_signature != current_environment_signature
    )
    state["environment_input_signature"] = current_environment_signature
    if signature_invalidated and args.stage != "all" and not args.core_only:
        state["status"] = "failed"
        state["error"] = (
            "input signature changed; a direct OLean rebuild must use --stage all"
        )
        state["finished_at"] = utc_now()
        state["updated_at"] = utc_now()
        write_status(status_path, state)
        print(state["error"], file=sys.stderr)
        return 1
    try:
        if args.kind == "generic":
            print(
                "GENERIC_PREREQUISITES=validated recursively per direct import",
                flush=True,
            )
        else:
            validate_prerequisite_certificates(lean_dir, source_dir, namespace)
        if args.skip_generic_core_preflight:
            print(
                "SKIP_GENERIC_CORE_PREFLIGHT=explicit; "
                "selected leaves rely on separately verified fresh imports",
                flush=True,
            )
        else:
            ensure_core_oleans(
                lean_dir=lean_dir,
                kind=args.kind,
                force=force_core_rebuild,
                timeout_seconds=args.core_timeout_seconds,
                max_memory_mib=args.core_max_memory_mib,
                registry=registry,
            )
    except BaseException as error:
        registry.terminate_all()
        state["status"] = "failed"
        state["error"] = str(error)
        state["finished_at"] = utc_now()
        state["updated_at"] = utc_now()
        write_status(status_path, state)
        print(str(error), file=sys.stderr)
        return 1
    if args.core_only:
        state["status"] = "passed"
        state["core_only"] = True
        state["finished_at"] = utc_now()
        state["updated_at"] = utc_now()
        state.pop("error", None)
        write_status(status_path, state)
        print("PASS shared core OLeans; no generated leaf stage started", flush=True)
        return 0
    state["run_started_at"] = utc_now()
    state["updated_at"] = utc_now()
    state["status"] = "running"
    state.pop("error", None)
    state.pop("finished_at", None)
    state["requested_stage"] = args.stage
    state["requested_workers"] = requested_workers
    state["requested_leaf_batch_size"] = requested_batch_size
    state["max_active_leaves"] = args.max_active_leaves
    state["workers"] = args.workers
    state["leaf_batch_size"] = args.leaf_batch_size
    state["leaf_timeout_seconds"] = args.leaf_timeout_seconds
    state["preflight_leaves"] = args.preflight_leaves
    state["preflight_timeout_seconds"] = args.preflight_timeout_seconds
    state["max_estimated_wall_seconds"] = args.max_estimated_wall_seconds
    state["preflight_safety_factor"] = args.preflight_safety_factor
    state["minimum_timeout_safety_factor"] = (
        args.minimum_timeout_safety_factor
    )
    state["max_memory_mib"] = args.max_memory_mib
    state["final_max_memory_mib"] = args.final_max_memory_mib
    state["progress_every"] = args.progress_every
    if args.kind == "generic":
        state["generic_targets"] = args.generic_target
        state["generic_scope"] = (
            "target-closure" if args.generic_target else "full-namespace"
        )
    if pruned_files:
        state["last_artifact_prune"] = {
            "finished_at": utc_now(),
            "files": pruned_files,
            "reclaimed_bytes": pruned_bytes,
        }
    write_status(status_path, state)
    if args.kind == "generic":
        if args.stage != "all":
            state["status"] = "failed"
            state["error"] = "--kind generic currently requires --stage all"
            state["finished_at"] = utc_now()
            state["updated_at"] = utc_now()
            write_status(status_path, state)
            print(state["error"], file=sys.stderr)
            return 1
        try:
            layers = discover_generic_dependency_layers(
                source_dir, namespace, args.generic_target
            )
            print(
                f"generic-import-graph layers={len(layers)} "
                f"modules={sum(map(len, layers))} "
                f"scope={state['generic_scope']}",
                flush=True,
            )
            for index, layer in enumerate(layers):
                assembly_modules = [
                    module for module in layer
                    if module.rsplit(".", 1)[-1] in {
                        "Data", "IndexedData", "CoreAggregate", "Certificate",
                    }
                    or module.rsplit(".", 1)[-1].endswith("Aggregate")
                ]
                leaf_modules = [
                    module for module in layer
                    if module not in assembly_modules
                ]
                run_stage(
                    lean_dir=lean_dir,
                    stage=f"generic-layer-{index:02d}",
                    modules=leaf_modules,
                    workers=args.workers,
                    timeout_seconds=args.leaf_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                    batch_size=args.leaf_batch_size,
                )
                for module in assembly_modules:
                    run_stage(
                        lean_dir=lean_dir,
                        stage=f"assembly-generic-layer-{index:02d}",
                        modules=[module],
                        workers=1,
                        timeout_seconds=args.final_timeout_seconds,
                        registry=registry,
                        state=state,
                        status_path=status_path,
                    )
        except KeyboardInterrupt:
            registry.terminate_all()
            state["status"] = "interrupted"
            state["finished_at"] = utc_now()
            state["updated_at"] = utc_now()
            write_status(status_path, state)
            return 130
        except BaseException as error:
            registry.terminate_all()
            state["status"] = "failed"
            state["error"] = str(error)
            state["finished_at"] = utc_now()
            state["updated_at"] = utc_now()
            write_status(status_path, state)
            print(str(error), file=sys.stderr)
            return 1
        state["status"] = "passed"
        state["finished_at"] = utc_now()
        state["updated_at"] = utc_now()
        write_status(status_path, state)
        print(f"passed status={status_path}", flush=True)
        return 0
    if args.kind == "trace":
        try:
            if args.stage in ("oracle", "anchor-data", "all"):
                run_stage(
                    lean_dir=lean_dir,
                    stage="oracle",
                    modules=[f"{namespace}.Oracle"],
                    workers=1,
                    timeout_seconds=args.final_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                    batch_size=args.leaf_batch_size,
                )
            if args.stage in ("anchor-data", "anchor-data-leaves", "all"):
                run_stage(
                    lean_dir=lean_dir,
                    stage="anchor-data-leaves",
                    modules=select_leaf_modules(
                        discover_modules(source_dir, namespace, "AnchorDataChunk"),
                        args.leaf_start_index, args.leaf_stop_index,
                    ),
                    workers=args.workers,
                    timeout_seconds=args.leaf_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                    batch_size=args.leaf_batch_size,
                )
            if args.stage in ("anchor-data", "anchor-data-assembly", "all"):
                run_stage(
                    lean_dir=lean_dir,
                    stage="assembly-AnchorData",
                    modules=[f"{namespace}.AnchorData"],
                    workers=1,
                    timeout_seconds=args.final_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                    batch_size=args.leaf_batch_size,
                )
            if args.stage in ("anchors", "anchor-proof-leaves", "all"):
                split_anchor_parts = discover_modules(
                    source_dir, namespace, "AnchorBlockPart"
                )
                if split_anchor_parts:
                    split_anchor_assemblies = discover_modules(
                        source_dir, namespace, "AnchorBlockAssemble"
                    )
                    for split_stage, split_modules in (
                        ("anchor-proof-part-leaves", split_anchor_parts),
                        ("anchor-proof-assembly-leaves", split_anchor_assemblies),
                    ):
                        run_stage(
                            lean_dir=lean_dir,
                            stage=split_stage,
                            modules=select_leaf_modules(
                                split_modules,
                                args.leaf_start_index,
                                args.leaf_stop_index,
                            ),
                            workers=args.workers,
                            timeout_seconds=args.leaf_timeout_seconds,
                            registry=registry,
                            state=state,
                            status_path=status_path,
                            batch_size=args.leaf_batch_size,
                        )
                else:
                    run_stage(
                        lean_dir=lean_dir,
                        stage="anchor-proof-leaves",
                        modules=select_leaf_modules(
                            discover_modules(source_dir, namespace, "AnchorBlock"),
                            args.leaf_start_index, args.leaf_stop_index,
                        ),
                        workers=args.workers,
                        timeout_seconds=args.leaf_timeout_seconds,
                        registry=registry,
                        state=state,
                        status_path=status_path,
                        batch_size=args.leaf_batch_size,
                    )
            if args.stage in ("anchors", "anchor-certificate", "all"):
                run_stage(
                    lean_dir=lean_dir,
                    stage="assembly-AnchorCertificate",
                    modules=[f"{namespace}.AnchorCertificate"],
                    workers=1,
                    timeout_seconds=args.final_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                    batch_size=args.leaf_batch_size,
                )
            if (source_dir / "CandidateData.lean").is_file() and args.stage in (
                "candidate-data", "candidate-data-leaves", "all"
            ):
                run_stage(
                    lean_dir=lean_dir,
                    stage="candidate-data-leaves",
                    modules=select_leaf_modules(
                        discover_modules(source_dir, namespace, "CandidateDataChunk"),
                        args.leaf_start_index, args.leaf_stop_index,
                    ),
                    workers=args.workers,
                    timeout_seconds=args.leaf_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                    batch_size=args.leaf_batch_size,
                )
            if (source_dir / "CandidateData.lean").is_file() and args.stage in (
                "candidate-data", "candidate-data-assembly", "all"
            ):
                run_stage(
                    lean_dir=lean_dir,
                    stage="assembly-CandidateData",
                    modules=[f"{namespace}.CandidateData"],
                    workers=1,
                    timeout_seconds=args.final_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                )
            if (source_dir / "CandidateData.lean").is_file() and args.stage in (
                "candidates", "candidate-proof-leaves", "all"
            ):
                run_stage(
                    lean_dir=lean_dir,
                    stage="candidate-proof-leaves",
                    modules=select_leaf_modules(
                        discover_modules(source_dir, namespace, "CandidateBlock"),
                        args.leaf_start_index, args.leaf_stop_index,
                    ),
                    workers=args.workers,
                    timeout_seconds=args.leaf_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                    batch_size=args.leaf_batch_size,
                )
            if (source_dir / "CandidateCertificate.lean").is_file() and args.stage in (
                "candidates", "candidate-certificate", "all"
            ):
                run_stage(
                    lean_dir=lean_dir,
                    stage="assembly-CandidateCertificate",
                    modules=[f"{namespace}.CandidateCertificate"],
                    workers=1,
                    timeout_seconds=args.final_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                )
            if args.stage == "all":
                for family in ("Opposite", "Outside"):
                    if not (source_dir / f"{family}Data.lean").is_file():
                        continue
                    family_lower = family.lower()
                    run_stage(
                        lean_dir=lean_dir,
                        stage=f"{family_lower}-data-leaves",
                        modules=discover_modules(
                            source_dir, namespace, f"{family}DataChunk"
                        ),
                        workers=args.workers,
                        timeout_seconds=args.leaf_timeout_seconds,
                        registry=registry,
                        state=state,
                        status_path=status_path,
                        batch_size=args.leaf_batch_size,
                    )
                    run_stage(
                        lean_dir=lean_dir,
                        stage=f"assembly-{family}Data",
                        modules=[f"{namespace}.{family}Data"],
                        workers=1,
                        timeout_seconds=args.final_timeout_seconds,
                        registry=registry,
                        state=state,
                        status_path=status_path,
                    )
                    split_family_parts = discover_modules(
                        source_dir, namespace, f"{family}BlockPart"
                    )
                    split_outside_local = (
                        discover_modules(
                            source_dir, namespace, "OutsideLocalBlockPart"
                        )
                        if family == "Outside" else []
                    )
                    if split_outside_local:
                        split_outside_marker = discover_modules(
                            source_dir, namespace, "OutsideMarkerBlockPart"
                        )
                        split_outside_local_assembly = discover_modules(
                            source_dir, namespace, "OutsideLocalBlockAssemble"
                        )
                        split_outside_marker_assembly = discover_modules(
                            source_dir, namespace, "OutsideMarkerBlockAssemble"
                        )
                        split_outside_final = discover_modules(
                            source_dir, namespace, "OutsideBlockAssemble"
                        )
                        for split_stage, split_modules in (
                            ("outside-local-proof-part-leaves", split_outside_local),
                            ("outside-marker-proof-part-leaves", split_outside_marker),
                            ("outside-local-proof-assembly-leaves",
                             split_outside_local_assembly),
                            ("outside-marker-proof-assembly-leaves",
                             split_outside_marker_assembly),
                            ("outside-proof-final-assembly-leaves", split_outside_final),
                        ):
                            run_stage(
                                lean_dir=lean_dir,
                                stage=split_stage,
                                modules=split_modules,
                                workers=args.workers,
                                timeout_seconds=args.leaf_timeout_seconds,
                                registry=registry,
                                state=state,
                                status_path=status_path,
                                batch_size=args.leaf_batch_size,
                            )
                    elif split_family_parts:
                        split_family_assemblies = discover_modules(
                            source_dir, namespace, f"{family}BlockAssemble"
                        )
                        for split_stage, split_modules in (
                            (f"{family_lower}-proof-part-leaves", split_family_parts),
                            (f"{family_lower}-proof-assembly-leaves", split_family_assemblies),
                        ):
                            run_stage(
                                lean_dir=lean_dir,
                                stage=split_stage,
                                modules=split_modules,
                                workers=args.workers,
                                timeout_seconds=args.leaf_timeout_seconds,
                                registry=registry,
                                state=state,
                                status_path=status_path,
                                batch_size=args.leaf_batch_size,
                            )
                    else:
                        run_stage(
                            lean_dir=lean_dir,
                            stage=f"{family_lower}-proof-leaves",
                            modules=discover_modules(
                                source_dir, namespace, f"{family}Block"
                            ),
                            workers=args.workers,
                            timeout_seconds=args.leaf_timeout_seconds,
                            registry=registry,
                            state=state,
                            status_path=status_path,
                            batch_size=args.leaf_batch_size,
                        )
                    run_stage(
                        lean_dir=lean_dir,
                        stage=f"assembly-{family}Certificate",
                        modules=[f"{namespace}.{family}Certificate"],
                        workers=1,
                        timeout_seconds=args.final_timeout_seconds,
                        registry=registry,
                        state=state,
                        status_path=status_path,
                    )
            if args.stage in ("certificate", "all") and (
                source_dir / "Certificate.lean"
            ).is_file():
                run_stage(
                    lean_dir=lean_dir,
                    stage="certificate-assembly",
                    modules=[f"{namespace}.Certificate"],
                    workers=1,
                    timeout_seconds=args.final_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                )
        except KeyboardInterrupt:
            registry.terminate_all()
            state["status"] = "interrupted"
            state["finished_at"] = utc_now()
            state["updated_at"] = utc_now()
            write_status(status_path, state)
            return 130
        except BaseException as error:
            registry.terminate_all()
            state["status"] = "failed"
            state["error"] = str(error)
            state["finished_at"] = utc_now()
            state["updated_at"] = utc_now()
            write_status(status_path, state)
            print(str(error), file=sys.stderr)
            return 1
        state["status"] = "passed"
        state["finished_at"] = utc_now()
        state["updated_at"] = utc_now()
        write_status(status_path, state)
        print(f"passed status={status_path}", flush=True)
        return 0
    try:
        if args.kind == "diagonal":
            data_leaves = discover_modules(source_dir, namespace, "RootDataChunk")
            data_assemblies = [f"{namespace}.Data"]
            indexed_data_leaves = discover_modules(
                source_dir, namespace, "MarkerSequenceChunk"
            )
        else:
            data_leaves = discover_modules(source_dir, namespace, "DataChunk")
            data_assemblies = [f"{namespace}.Data"]
        if args.stage in ("data", "all"):
            run_stage(
                lean_dir=lean_dir,
                stage="data-leaves",
                modules=select_leaf_modules(
                    data_leaves, args.leaf_start_index, args.leaf_stop_index
                ),
                workers=args.workers,
                timeout_seconds=args.leaf_timeout_seconds,
                registry=registry,
                state=state,
                status_path=status_path,
                batch_size=args.leaf_batch_size,
            )
        if args.stage in ("data", "data-assembly", "all"):
            for module in data_assemblies:
                run_stage(
                    lean_dir=lean_dir,
                    stage=f"assembly-{module.rsplit('.', 1)[-1]}",
                    modules=[module],
                    workers=1,
                    timeout_seconds=args.final_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                )
        if args.kind == "diagonal" and args.stage in ("indexed-data", "all"):
            run_stage(
                lean_dir=lean_dir,
                stage="indexed-data-leaves",
                modules=select_leaf_modules(
                    indexed_data_leaves,
                    args.leaf_start_index,
                    args.leaf_stop_index,
                ),
                workers=args.workers,
                timeout_seconds=args.leaf_timeout_seconds,
                registry=registry,
                state=state,
                status_path=status_path,
                batch_size=args.leaf_batch_size,
            )
        if args.kind == "diagonal" and args.stage in (
            "indexed-data", "indexed-data-assembly", "all"
        ):
            run_stage(
                lean_dir=lean_dir,
                stage="assembly-IndexedData",
                modules=[f"{namespace}.IndexedData"],
                workers=1,
                timeout_seconds=args.final_timeout_seconds,
                registry=registry,
                state=state,
                status_path=status_path,
                batch_size=args.leaf_batch_size,
            )
        if args.stage in ("code", "proofs", "all"):
            split_factor_left = (
                discover_modules(source_dir, namespace, "BlockLeft")
                if args.kind == "factor" else []
            )
            if split_factor_left:
                split_factor_right = discover_modules(
                    source_dir, namespace, "BlockRight"
                )
                for split_stage, split_modules in (
                    ("proof-left-leaves", split_factor_left),
                    ("proof-right-leaves", split_factor_right),
                ):
                    run_stage(
                        lean_dir=lean_dir,
                        stage=split_stage,
                        modules=select_leaf_modules(
                            split_modules,
                            args.leaf_start_index,
                            args.leaf_stop_index,
                        ),
                        workers=args.workers,
                        timeout_seconds=args.leaf_timeout_seconds,
                        registry=registry,
                        state=state,
                        status_path=status_path,
                        batch_size=args.leaf_batch_size,
                    )
            else:
                proof_leaves = discover_modules(
                    source_dir, namespace,
                    "CodeBlock" if args.kind == "diagonal" else "Block",
                )
            if args.kind == "diagonal" and not split_factor_left:
                proof_leaves += discover_modules(
                    source_dir, namespace, "OrderBlock"
                )
                proof_leaves += discover_modules(
                    source_dir, namespace, "ProjectionBlock"
                )
                proof_leaves.sort()
            if not split_factor_left:
                proof_leaves = select_leaf_modules(
                    proof_leaves, args.leaf_start_index, args.leaf_stop_index
                )
                run_stage(
                    lean_dir=lean_dir,
                    stage="proof-leaves",
                    modules=proof_leaves,
                    workers=args.workers,
                    timeout_seconds=args.leaf_timeout_seconds,
                    registry=registry,
                    state=state,
                    status_path=status_path,
                    batch_size=args.leaf_batch_size,
                )
        if args.kind == "diagonal" and args.stage in (
            "progressions", "proofs", "all"
        ):
            run_stage(
                lean_dir=lean_dir,
                stage="progression-leaves",
                modules=select_leaf_modules(
                    discover_modules(source_dir, namespace, "ProgressionBlock"),
                    args.leaf_start_index,
                    args.leaf_stop_index,
                ),
                workers=args.workers,
                timeout_seconds=args.leaf_timeout_seconds,
                registry=registry,
                state=state,
                status_path=status_path,
                batch_size=args.leaf_batch_size,
            )
        if args.kind == "diagonal" and args.stage in (
            "progressions", "progression-assembly", "proofs", "all"
        ):
            run_stage(
                lean_dir=lean_dir,
                stage="assembly-Progressions",
                modules=[f"{namespace}.Progressions"],
                workers=1,
                timeout_seconds=args.final_timeout_seconds,
                registry=registry,
                state=state,
                status_path=status_path,
            )
        if args.kind == "diagonal" and args.stage in ("roots", "proofs", "all"):
            run_stage(
                lean_dir=lean_dir,
                stage="root-leaves",
                modules=select_leaf_modules(
                    discover_modules(source_dir, namespace, "RootBlock"),
                    args.leaf_start_index,
                    args.leaf_stop_index,
                ),
                workers=args.workers,
                timeout_seconds=args.leaf_timeout_seconds,
                registry=registry,
                state=state,
                status_path=status_path,
                batch_size=args.leaf_batch_size,
            )
        if args.kind == "diagonal" and (
            source_dir / "CoreCertificate.lean"
        ).is_file() and args.stage in (
            "core-certificate", "proofs", "all"
        ):
            run_stage(
                lean_dir=lean_dir,
                stage="core-certificate-assembly",
                modules=[f"{namespace}.CoreCertificate"],
                workers=1,
                timeout_seconds=args.final_timeout_seconds,
                registry=registry,
                state=state,
                status_path=status_path,
            )
        if args.kind == "diagonal" and args.stage in (
            "envelopes", "proofs", "all"
        ):
            run_stage(
                lean_dir=lean_dir,
                stage="envelope-leaves",
                modules=select_leaf_modules(
                    discover_modules(source_dir, namespace, "EnvelopeBlock"),
                    args.leaf_start_index,
                    args.leaf_stop_index,
                ),
                workers=args.workers,
                timeout_seconds=args.leaf_timeout_seconds,
                registry=registry,
                state=state,
                status_path=status_path,
                batch_size=args.leaf_batch_size,
            )
        certificate_stages = (
            ("roots", "proofs", "core-certificate", "envelopes",
             "certificate", "all")
            if args.kind == "diagonal"
            else ("proofs", "certificate", "all")
        )
        if args.stage in certificate_stages:
            run_stage(
                lean_dir=lean_dir,
                stage="certificate-assembly",
                modules=[f"{namespace}.Certificate"],
                workers=1,
                timeout_seconds=args.final_timeout_seconds,
                registry=registry,
                state=state,
                status_path=status_path,
            )
    except KeyboardInterrupt:
        registry.terminate_all()
        state["status"] = "interrupted"
        state["finished_at"] = utc_now()
        state["updated_at"] = utc_now()
        write_status(status_path, state)
        return 130
    except BaseException as error:
        registry.terminate_all()
        state["status"] = "failed"
        state["error"] = str(error)
        state["finished_at"] = utc_now()
        state["updated_at"] = utc_now()
        write_status(status_path, state)
        print(str(error), file=sys.stderr)
        return 1
    state["status"] = "passed"
    state["finished_at"] = utc_now()
    state["updated_at"] = utc_now()
    write_status(status_path, state)
    print(f"passed status={status_path}", flush=True)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
