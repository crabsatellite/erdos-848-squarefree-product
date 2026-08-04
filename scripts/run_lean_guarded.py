#!/usr/bin/env python3
"""Compile one Lean module under a process-tree RSS limit.

This runner is for semantic assembly modules that do not belong to one of the
generated batch builders.  It tracks Lean, Lake, and every descendant as one
tree, terminates the tree on an RSS breach, and reaps surviving descendants on
every exit path.
"""

from __future__ import annotations

import argparse
import atexit
import contextlib
import ctypes
import os
import re
import subprocess
import sys
import threading
import time
from pathlib import Path

import psutil


if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")


ROOT = Path(__file__).resolve().parents[1]
LEAN_ROOT = ROOT / "lean4"
OLEAN_ROOT = LEAN_ROOT / ".lake" / "build" / "lib" / "lean"
SHORT_ROOT_ENV = "ERDOS848_SHORT_REPOSITORY_ROOT"
RUN_LOCK = LEAN_ROOT / ".lake" / "run-lean-guarded.lock"
TEMP_OLEAN_PATTERNS = (
    re.compile(r"^\..+\.tmp-(?P<pid>[0-9]+)\.olean$"),
    re.compile(r"^.+\.olean\.tmp\.(?P<pid>[0-9]+)$"),
)
TEMP_OLEAN_GRACE_SECONDS = 300.0


def acquire_run_lock():
    """Serialize guarded compiles for this repository.

    A second compile fails immediately instead of competing for memory and
    leaving two independently monitored Lean trees behind.  The operating
    system releases the byte-range lock even if this runner is force-killed.
    """

    RUN_LOCK.parent.mkdir(parents=True, exist_ok=True)
    handle = RUN_LOCK.open("a+b")
    if RUN_LOCK.stat().st_size == 0:
        handle.write(b"\0")
        handle.flush()
    handle.seek(0)
    try:
        if sys.platform == "win32":
            import msvcrt

            msvcrt.locking(handle.fileno(), msvcrt.LK_NBLCK, 1)
        else:
            import fcntl

            fcntl.flock(handle.fileno(), fcntl.LOCK_EX | fcntl.LOCK_NB)
    except OSError as error:
        handle.close()
        raise SystemExit(
            "another guarded Lean compile is already active for this repository"
        ) from error
    return handle


def release_run_lock(handle) -> None:
    if handle.closed:
        return
    with contextlib.suppress(OSError):
        handle.seek(0)
        if sys.platform == "win32":
            import msvcrt

            msvcrt.locking(handle.fileno(), msvcrt.LK_UNLCK, 1)
        else:
            import fcntl

            fcntl.flock(handle.fileno(), fcntl.LOCK_UN)
    handle.close()


def path_is_inside(path: str | Path, root: Path) -> bool:
    """Return whether ``path`` is inside ``root`` without prefix collisions."""

    try:
        Path(path).resolve().relative_to(root.resolve())
    except (OSError, ValueError):
        return False
    return True


def configured_short_lean_root() -> Path | None:
    """Validate the short repository mapping supplied by the kernel gate."""
    value = os.environ.get(SHORT_ROOT_ENV)
    if not value:
        return None
    short_repository = Path(value)
    try:
        if not os.path.samefile(short_repository, ROOT):
            raise SystemExit(
                f"{SHORT_ROOT_ENV} does not identify the current repository"
            )
    except OSError as error:
        raise SystemExit(f"invalid {SHORT_ROOT_ENV}: {error}") from error
    return short_repository / "lean4"


def rewrite_lean_path(lean_path: str, short_lean_root: Path) -> str:
    """Rewrite project-local LEAN_PATH entries through the short mapping."""
    rewritten: list[str] = []
    canonical_root = LEAN_ROOT.resolve()
    for value in lean_path.split(os.pathsep):
        path = Path(value)
        try:
            relative = path.resolve().relative_to(canonical_root)
        except (OSError, ValueError):
            rewritten.append(value)
        else:
            rewritten.append(str(short_lean_root / relative))
    return os.pathsep.join(rewritten)


def repo_lean_processes() -> list[psutil.Process]:
    """Find only Lean toolchain processes whose command targets this repo.

    The trailing separator is intentional: the public repository name is a
    prefix of the sibling `-internal` archive, and must not match it.  Checking
    the process working directory also catches normal relative invocations such
    as ``lake env lean Erdos848/Foo.lean`` whose command line contains no
    absolute repository path.
    """

    marker = str(ROOT).replace("\\", "/").rstrip("/").casefold() + "/"
    own_pid = os.getpid()
    toolchain_names = {
        "lean", "lean.exe", "lake", "lake.exe", "elan", "elan.exe",
    }
    python_names = {"python", "python.exe", "python3", "python3.exe"}
    found: list[psutil.Process] = []
    for item in psutil.process_iter(["pid", "name", "cmdline"]):
        with contextlib.suppress(psutil.Error, OSError):
            if item.pid == own_pid:
                continue
            name = (item.info.get("name") or "").casefold()
            if name not in toolchain_names | python_names:
                continue
            command = " ".join(item.info.get("cmdline") or [])
            normalized = command.replace("\\", "/").casefold()
            command_matches = marker in normalized
            cwd_matches = False
            if name in toolchain_names:
                with contextlib.suppress(psutil.Error, OSError):
                    cwd_matches = path_is_inside(item.cwd(), ROOT)
            # Python is included only when its command names this repository;
            # a generic Python process merely started from the repo may belong
            # to an unrelated interactive calculation.
            if command_matches or cwd_matches:
                found.append(item)
    return found


def local_imports(source: Path) -> list[tuple[str, Path]]:
    """Return local Lean imports named by ``source``.

    Mathlib imports have no source below ``lean4/`` and are intentionally
    ignored.  This parser only needs Lean's top-level ``import A B`` syntax;
    comments after an import are discarded.
    """

    imports: list[tuple[str, Path]] = []
    for raw_line in source.read_text(encoding="utf-8").splitlines():
        line = raw_line.split("--", 1)[0].strip()
        if not line.startswith("import "):
            continue
        for module in line.removeprefix("import ").split():
            imported_source = LEAN_ROOT / Path(*module.split("."))
            imported_source = imported_source.with_suffix(".lean")
            is_local = module == "Erdos848" or module.startswith("Erdos848.")
            if is_local and not imported_source.is_file():
                raise SystemExit(
                    f"missing local Lean source for import {module}: "
                    f"{imported_source}"
                )
            if is_local:
                imports.append((module, imported_source.resolve()))
    return imports


def stale_local_dependencies(source: Path) -> list[tuple[str, str]]:
    """Find stale local OLeans before spending time elaborating ``source``.

    Freshness is transitive: rebuilding a changed leaf makes every older local
    importer stale as well.  Returning dependencies in leaf-first order gives
    the exact safe rebuild order.
    """

    graph: dict[Path, tuple[str, list[tuple[str, Path]]]] = {}

    def discover(module: str, item: Path) -> None:
        if item in graph:
            return
        children = local_imports(item)
        graph[item] = (module, children)
        for child_module, child in children:
            discover(child_module, child)

    for module, item in local_imports(source):
        discover(module, item)

    effective_mtime: dict[Path, int] = {}
    visiting: set[Path] = set()
    ordered: list[Path] = []

    def newest_input(item: Path) -> int:
        if item in effective_mtime:
            return effective_mtime[item]
        if item in visiting:
            raise SystemExit(f"cyclic local Lean imports at {item}")
        visiting.add(item)
        newest = item.stat().st_mtime_ns
        for _, child in graph[item][1]:
            newest = max(newest, newest_input(child))
        visiting.remove(item)
        effective_mtime[item] = newest
        ordered.append(item)
        return newest

    for item in graph:
        newest_input(item)

    stale: list[tuple[str, str]] = []
    for item in ordered:
        module = graph[item][0]
        relative = item.relative_to(LEAN_ROOT)
        olean = (OLEAN_ROOT / relative).with_suffix(".olean")
        if not olean.is_file():
            stale.append((module, "missing OLean"))
        elif olean.stat().st_mtime_ns < effective_mtime[item]:
            stale.append((module, "source or transitive local import is newer"))
    return stale


def stale_direct_local_dependencies(source: Path) -> list[tuple[str, str]]:
    """Find changed direct local imports for fast iterative compilation."""

    stale: list[tuple[str, str]] = []
    for module, item in local_imports(source):
        relative = item.relative_to(LEAN_ROOT)
        olean = (OLEAN_ROOT / relative).with_suffix(".olean")
        if not olean.is_file():
            stale.append((module, "missing OLean"))
        elif olean.stat().st_mtime_ns < item.stat().st_mtime_ns:
            stale.append((module, "direct import source is newer"))
    return stale


def effective_local_source_mtime_ns(
    source: Path,
    cache: dict[Path, int] | None = None,
    visiting: set[Path] | None = None,
) -> int:
    """Return the newest source timestamp in this local import closure."""
    if cache is None:
        cache = {}
    if visiting is None:
        visiting = set()
    if source in cache:
        return cache[source]
    if source in visiting:
        raise SystemExit(f"cyclic local Lean imports at {source}")
    visiting.add(source)
    newest = source.stat().st_mtime_ns
    for _, dependency in local_imports(source):
        newest = max(
            newest,
            effective_local_source_mtime_ns(dependency, cache, visiting),
        )
    visiting.remove(source)
    cache[source] = newest
    return newest


def reap_repo_lean_processes(stage: str) -> bool:
    """Reap exact-repository leftovers and verify that the scope is clean."""

    leftovers = repo_lean_processes()
    if leftovers:
        print(
            f"REPO_REAP_{stage}=count:{len(leftovers)} "
            f"pids:{','.join(str(item.pid) for item in leftovers)}",
            flush=True,
        )
        stop_and_reap(leftovers)
    remaining = repo_lean_processes()
    if remaining:
        print(
            f"REPO_REAP_{stage}_FAILED="
            f"pids:{','.join(str(item.pid) for item in remaining)}",
            flush=True,
        )
        return False
    print(f"REPO_PROCESS_TREE_{stage}=clean", flush=True)
    return True


def reap_stale_temporary_oleans(stage: str) -> int:
    """Remove abandoned atomic OLean outputs without touching live work.

    Both the standalone guard and the generated-certificate builder encode the
    creator PID in temporary OLean names.  A matching file is abandoned only
    when it is older than the grace period and that PID no longer exists.  The
    age check avoids racing a creator between file creation and process-table
    visibility; unrelated OLeans and generic temporary files are ignored.
    """

    if not OLEAN_ROOT.is_dir():
        print(f"STALE_OLEAN_TEMP_REAP_{stage}=count:0", flush=True)
        return 0
    now = time.time()
    removed: list[Path] = []
    for item in OLEAN_ROOT.rglob("*"):
        if not item.is_file():
            continue
        match = next(
            (pattern.fullmatch(item.name) for pattern in TEMP_OLEAN_PATTERNS
             if pattern.fullmatch(item.name) is not None),
            None,
        )
        if match is None:
            continue
        with contextlib.suppress(OSError):
            if now - item.stat().st_mtime < TEMP_OLEAN_GRACE_SECONDS:
                continue
            creator_pid = int(match.group("pid"))
            if psutil.pid_exists(creator_pid):
                continue
            item.unlink()
            removed.append(item)
    print(
        f"STALE_OLEAN_TEMP_REAP_{stage}=count:{len(removed)}",
        flush=True,
    )
    return len(removed)


def create_kill_on_close_job(process: subprocess.Popen[str]) -> int | None:
    """Put the command in a Windows job that dies with this runner.

    The psutil fallback below handles normal exits.  The job object also
    covers forced termination of the runner itself, which would otherwise
    be able to orphan Lean descendants on Windows.
    """

    if sys.platform != "win32":
        return None

    from ctypes import wintypes

    class IoCounters(ctypes.Structure):
        _fields_ = [
            ("ReadOperationCount", ctypes.c_ulonglong),
            ("WriteOperationCount", ctypes.c_ulonglong),
            ("OtherOperationCount", ctypes.c_ulonglong),
            ("ReadTransferCount", ctypes.c_ulonglong),
            ("WriteTransferCount", ctypes.c_ulonglong),
            ("OtherTransferCount", ctypes.c_ulonglong),
        ]

    class BasicLimitInformation(ctypes.Structure):
        _fields_ = [
            ("PerProcessUserTimeLimit", ctypes.c_longlong),
            ("PerJobUserTimeLimit", ctypes.c_longlong),
            ("LimitFlags", wintypes.DWORD),
            ("MinimumWorkingSetSize", ctypes.c_size_t),
            ("MaximumWorkingSetSize", ctypes.c_size_t),
            ("ActiveProcessLimit", wintypes.DWORD),
            ("Affinity", ctypes.c_size_t),
            ("PriorityClass", wintypes.DWORD),
            ("SchedulingClass", wintypes.DWORD),
        ]

    class ExtendedLimitInformation(ctypes.Structure):
        _fields_ = [
            ("BasicLimitInformation", BasicLimitInformation),
            ("IoInfo", IoCounters),
            ("ProcessMemoryLimit", ctypes.c_size_t),
            ("JobMemoryLimit", ctypes.c_size_t),
            ("PeakProcessMemoryUsed", ctypes.c_size_t),
            ("PeakJobMemoryUsed", ctypes.c_size_t),
        ]

    kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
    kernel32.CreateJobObjectW.argtypes = [ctypes.c_void_p, wintypes.LPCWSTR]
    kernel32.CreateJobObjectW.restype = wintypes.HANDLE
    kernel32.SetInformationJobObject.argtypes = [
        wintypes.HANDLE, ctypes.c_int, ctypes.c_void_p, wintypes.DWORD,
    ]
    kernel32.SetInformationJobObject.restype = wintypes.BOOL
    kernel32.AssignProcessToJobObject.argtypes = [wintypes.HANDLE, wintypes.HANDLE]
    kernel32.AssignProcessToJobObject.restype = wintypes.BOOL
    kernel32.CloseHandle.argtypes = [wintypes.HANDLE]
    kernel32.CloseHandle.restype = wintypes.BOOL

    job = kernel32.CreateJobObjectW(None, None)
    if not job:
        return None
    info = ExtendedLimitInformation()
    # JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE
    info.BasicLimitInformation.LimitFlags = 0x00002000
    # JobObjectExtendedLimitInformation
    if not kernel32.SetInformationJobObject(
        job, 9, ctypes.byref(info), ctypes.sizeof(info),
    ):
        kernel32.CloseHandle(job)
        return None
    process_handle = wintypes.HANDLE(int(process._handle))  # type: ignore[attr-defined]
    if not kernel32.AssignProcessToJobObject(job, process_handle):
        kernel32.CloseHandle(job)
        return None
    return int(job)


def close_job(job_handle: int | None) -> None:
    if job_handle is None or sys.platform != "win32":
        return
    from ctypes import wintypes
    kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
    kernel32.CloseHandle.argtypes = [wintypes.HANDLE]
    kernel32.CloseHandle.restype = wintypes.BOOL
    kernel32.CloseHandle(wintypes.HANDLE(job_handle))


def trim_process_working_set(process: psutil.Process) -> bool:
    """Ask Windows to evict unused resident pages from a tracked process."""

    if sys.platform != "win32":
        return False
    from ctypes import wintypes

    kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
    psapi = ctypes.WinDLL("psapi", use_last_error=True)
    kernel32.OpenProcess.argtypes = [
        wintypes.DWORD, wintypes.BOOL, wintypes.DWORD,
    ]
    kernel32.OpenProcess.restype = wintypes.HANDLE
    kernel32.CloseHandle.argtypes = [wintypes.HANDLE]
    kernel32.CloseHandle.restype = wintypes.BOOL
    psapi.EmptyWorkingSet.argtypes = [wintypes.HANDLE]
    psapi.EmptyWorkingSet.restype = wintypes.BOOL
    # PROCESS_SET_QUOTA | PROCESS_QUERY_INFORMATION
    handle = kernel32.OpenProcess(0x0100 | 0x0400, False, process.pid)
    if not handle:
        return False
    try:
        return bool(psapi.EmptyWorkingSet(handle))
    finally:
        kernel32.CloseHandle(handle)


def process_tree(process: subprocess.Popen[str]) -> list[psutil.Process]:
    with contextlib.suppress(psutil.Error):
        root = psutil.Process(process.pid)
        return [root, *root.children(recursive=True)]
    return []


def process_key(process: psutil.Process) -> tuple[int, float] | None:
    """Return a PID-reuse-safe identity for a live process."""

    with contextlib.suppress(psutil.Error):
        return process.pid, process.create_time()
    return None


def reap_detached_repo_processes(
    tracked: dict[tuple[int, float], psutil.Process],
) -> int:
    """Kill exact-repository Lean processes detached from this run.

    The guarded command and all descendants are inserted into ``tracked``
    before this scan.  Anything else that targets the exact public repository
    is either an unguarded competing compile or an orphan from an earlier run;
    both would invalidate the tree RSS budget and are reaped immediately.
    """

    detached: list[psutil.Process] = []
    for item in repo_lean_processes():
        key = process_key(item)
        if key is not None and key not in tracked:
            detached.append(item)
    if not detached:
        return 0
    print(
        "REPO_REAP_LIVE="
        f"count:{len(detached)} "
        f"pids:{','.join(str(item.pid) for item in detached)}",
        flush=True,
    )
    stop_and_reap(detached)
    return len(detached)


def stop_and_reap(processes: list[psutil.Process]) -> None:
    for item in reversed(processes):
        with contextlib.suppress(psutil.Error):
            if item.is_running():
                item.terminate()
    _, alive = psutil.wait_procs(processes, timeout=2.0)
    for item in alive:
        with contextlib.suppress(psutil.Error):
            item.kill()
    psutil.wait_procs(alive, timeout=2.0)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("source", type=Path)
    parser.add_argument("--memory-mb", type=int, default=6144)
    parser.add_argument("--lean-memory-mb", type=int)
    parser.add_argument("--trim-working-set-at-mb", type=int)
    parser.add_argument("--threads", type=int, default=1)
    parser.add_argument("--direct-lean", action="store_true")
    parser.add_argument("--timeout-seconds", type=float, default=1200.0)
    parser.add_argument("--monitor-seconds", type=float, default=15.0)
    parser.add_argument("--reserve-memory-mb", type=int, default=1024)
    parser.add_argument("--skip-import-preflight", action="store_true")
    parser.add_argument("--strict-import-preflight", action="store_true")
    parser.add_argument("--no-olean", action="store_true")
    args = parser.parse_args()
    if args.memory_mb < 1024:
        raise SystemExit("--memory-mb must be at least 1024")
    if args.lean_memory_mb is not None and args.lean_memory_mb < 1024:
        raise SystemExit("--lean-memory-mb must be at least 1024")
    if (
        args.trim_working_set_at_mb is not None
        and not 1024 <= args.trim_working_set_at_mb < args.memory_mb
    ):
        raise SystemExit(
            "--trim-working-set-at-mb must be at least 1024 and below --memory-mb"
        )
    if args.threads < 1:
        raise SystemExit("--threads must be positive")
    if args.timeout_seconds <= 0:
        raise SystemExit("--timeout-seconds must be positive")
    if args.reserve_memory_mb < 0:
        raise SystemExit("--reserve-memory-mb must be nonnegative")

    source = args.source
    if not source.is_absolute():
        source = LEAN_ROOT / source
    source = source.resolve()
    try:
        relative = source.relative_to(LEAN_ROOT)
    except ValueError as error:
        raise SystemExit("source must be inside lean4/") from error
    if not source.is_file():
        raise SystemExit(f"missing source: {source}")

    available_mb = psutil.virtual_memory().available // (1 << 20)
    required_mb = args.memory_mb + args.reserve_memory_mb
    print(
        f"MEMORY_PREFLIGHT=available_mib:{available_mb} "
        f"required_mib:{required_mb}",
        flush=True,
    )
    if available_mb < required_mb:
        raise SystemExit(
            "insufficient available memory for the requested tree limit and reserve"
        )

    if not args.skip_import_preflight:
        stale = (
            stale_local_dependencies(source)
            if args.strict_import_preflight
            else stale_direct_local_dependencies(source)
        )
        mode = "strict-transitive" if args.strict_import_preflight else "direct"
        print(
            f"LOCAL_IMPORT_PREFLIGHT=mode:{mode} stale:{len(stale)}", flush=True,
        )
        if stale:
            report_limit = 20
            for module, reason in stale[:report_limit]:
                print(f"STALE_LOCAL_OLEAN={module} reason:{reason}", flush=True)
            if len(stale) > report_limit:
                print(
                    f"STALE_LOCAL_OLEAN_OMITTED={len(stale) - report_limit}",
                    flush=True,
                )
            raise SystemExit(
                "rebuild the listed local modules in printed order before the target"
            )

    run_lock = acquire_run_lock()
    atexit.register(release_run_lock, run_lock)
    print("RUN_LOCK=active", flush=True)
    if not reap_repo_lean_processes("PRE"):
        atexit.unregister(release_run_lock)
        release_run_lock(run_lock)
        raise SystemExit("could not establish a clean repository process tree")
    reap_stale_temporary_oleans("PRE")

    command_env = None
    command_cwd = LEAN_ROOT
    command_source = source
    short_lean_root = configured_short_lean_root()
    lean_memory_mb = args.lean_memory_mb or args.memory_mb
    if args.direct_lean:
        if sys.platform != "win32":
            raise SystemExit("--direct-lean is currently implemented for Windows")
        lake_environment = subprocess.run(
            [
                "lake", "env", "powershell", "-NoProfile", "-Command",
                "[Console]::Write($env:LEAN_PATH)",
            ],
            cwd=LEAN_ROOT,
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            encoding="utf-8",
            errors="replace",
        )
        command_env = os.environ.copy()
        lean_path = lake_environment.stdout.strip()
        if not lean_path:
            raise SystemExit("lake did not provide LEAN_PATH")
        if short_lean_root is not None:
            lean_path = rewrite_lean_path(lean_path, short_lean_root)
            command_cwd = short_lean_root
            command_source = short_lean_root / relative
            print(
                f"LEAN_PATH_SHORT_ROOT=active path:{short_lean_root}",
                flush=True,
            )
        command_env["LEAN_PATH"] = lean_path
        lean_executable = subprocess.run(
            ["elan", "which", "lean"],
            cwd=LEAN_ROOT,
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            encoding="utf-8",
            errors="replace",
        ).stdout.strip()
        if not lean_executable:
            raise SystemExit("elan did not resolve the active Lean executable")
        command = [
            lean_executable, "--trust=0", "-M", str(lean_memory_mb),
            "-j", str(args.threads),
        ]
        print(f"LEAN_LAUNCH=direct path:{lean_executable}", flush=True)
    else:
        command = [
            "lake", "env", "lean", "--trust=0", "-M", str(lean_memory_mb),
            "-j", str(args.threads),
        ]
    output: Path | None = None
    temporary_output: Path | None = None
    if not args.no_olean:
        output = (OLEAN_ROOT / relative).with_suffix(".olean")
        output.parent.mkdir(parents=True, exist_ok=True)
        temporary_output = output.with_name(
            f".{output.stem}.tmp-{os.getpid()}.olean"
        )
        temporary_output.unlink(missing_ok=True)
        command_output = temporary_output
        if short_lean_root is not None:
            command_output = short_lean_root / temporary_output.relative_to(LEAN_ROOT)
        command.extend(["-o", str(command_output)])
    command.append(str(command_source))

    process = subprocess.Popen(
        command,
        cwd=command_cwd,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        encoding="utf-8",
        errors="replace",
        env=command_env,
    )
    job_handle = create_kill_on_close_job(process)
    print(
        "JOB_GUARD=active" if job_handle is not None else "JOB_GUARD=psutil-fallback",
        flush=True,
    )
    stdout_chunks: list[str] = []
    stderr_chunks: list[str] = []

    def drain(stream, chunks: list[str]) -> None:
        if stream is None:
            return
        for line in stream:
            chunks.append(line)

    stdout_thread = threading.Thread(
        target=drain, args=(process.stdout, stdout_chunks), daemon=True,
    )
    stderr_thread = threading.Thread(
        target=drain, args=(process.stderr, stderr_chunks), daemon=True,
    )
    stdout_thread.start()
    stderr_thread.start()
    tracked: dict[tuple[int, float], psutil.Process] = {}
    peak_bytes = 0
    raw_peak_bytes = 0
    limit_bytes = args.memory_mb * (1 << 20)
    next_report = time.monotonic() + args.monitor_seconds
    deadline = time.monotonic() + args.timeout_seconds
    breached = False
    timed_out = False
    detached_reaped = 0
    working_set_trims = 0
    next_working_set_trim = time.monotonic()
    next_repo_scan = time.monotonic()
    try:
        while process.poll() is None:
            for item in process_tree(process):
                key = process_key(item)
                if key is not None:
                    tracked[key] = item
            now = time.monotonic()
            if now >= next_repo_scan:
                detached_reaped += reap_detached_repo_processes(tracked)
                next_repo_scan = now + 2.0
            rss_bytes = 0
            for item in tracked.values():
                with contextlib.suppress(psutil.Error):
                    if item.is_running():
                        rss_bytes += item.memory_info().rss
            raw_peak_bytes = max(raw_peak_bytes, rss_bytes)
            trim_threshold = args.trim_working_set_at_mb
            if (
                trim_threshold is not None
                and rss_bytes > trim_threshold * (1 << 20)
                and now >= next_working_set_trim
            ):
                trimmed = sum(
                    1 for item in tracked.values()
                    if trim_process_working_set(item)
                )
                if trimmed:
                    working_set_trims += trimmed
                    time.sleep(0.05)
                    rss_bytes = 0
                    for item in tracked.values():
                        with contextlib.suppress(psutil.Error):
                            if item.is_running():
                                rss_bytes += item.memory_info().rss
                    print(
                        f"WORKING_SET_TRIM processes:{trimmed} "
                        f"post_mib:{rss_bytes / (1 << 20):.1f}",
                        flush=True,
                    )
                next_working_set_trim = now + 1.0
            peak_bytes = max(peak_bytes, rss_bytes)
            if now >= next_report:
                print(
                    f"MONITOR tree={len(tracked)} rss_mib={rss_bytes / (1 << 20):.1f} "
                    f"peak_mib={peak_bytes / (1 << 20):.1f}",
                    flush=True,
                )
                next_report = now + args.monitor_seconds
            if rss_bytes > limit_bytes:
                breached = True
                print(
                    f"RSS_LIMIT_EXCEEDED limit_mib={args.memory_mb} "
                    f"observed_mib={rss_bytes / (1 << 20):.1f}",
                    flush=True,
                )
                stop_and_reap(list(tracked.values()))
                break
            if now >= deadline:
                timed_out = True
                print(
                    f"WALL_TIMEOUT_EXCEEDED limit_seconds={args.timeout_seconds:g}",
                    flush=True,
                )
                stop_and_reap(list(tracked.values()))
                break
            time.sleep(0.25 if args.trim_working_set_at_mb is not None else 0.5)
    except BaseException:
        close_job(job_handle)
        job_handle = None
        stop_and_reap(list(tracked.values()) + process_tree(process))
        raise

    with contextlib.suppress(subprocess.TimeoutExpired):
        process.wait(timeout=5.0)
    # Closing a kill-on-close job here removes any child that outlived the
    # root command and also releases pipe handles before the drain joins.
    close_job(job_handle)
    job_handle = None
    stdout_thread.join(timeout=5.0)
    stderr_thread.join(timeout=5.0)
    stdout = "".join(stdout_chunks)
    stderr = "".join(stderr_chunks)
    if stdout:
        print(stdout, end="")
    if stderr:
        print(stderr, end="", file=sys.stderr)
    # Descendants commonly disappear between Lean's exit and this final scan.
    # Treat that normal PID race as an already-reaped process instead of
    # turning a successful compilation into a runner failure.
    survivors: list[psutil.Process] = []
    for item in tracked.values():
        if item.pid == process.pid:
            continue
        with contextlib.suppress(psutil.Error):
            if item.is_running() and item.status() != psutil.STATUS_ZOMBIE:
                survivors.append(item)
    stop_and_reap(survivors)
    returncode = 137 if breached else (124 if timed_out else process.returncode)
    if temporary_output is not None:
        if returncode == 0 and temporary_output.is_file():
            try:
                os.replace(temporary_output, output)
                output_stat = output.stat()
                os.utime(
                    output,
                    ns=(
                        output_stat.st_atime_ns,
                        effective_local_source_mtime_ns(source),
                    ),
                )
                print(f"OLEAN_INSTALL=atomic path:{output}", flush=True)
            except OSError as error:
                print(f"OLEAN_INSTALL_FAILED={error}", flush=True)
                temporary_output.unlink(missing_ok=True)
                returncode = 139
        else:
            temporary_output.unlink(missing_ok=True)
            if returncode == 0:
                print("OLEAN_INSTALL_FAILED=compiler produced no OLean", flush=True)
                returncode = 139
    if not reap_repo_lean_processes("POST") and returncode == 0:
        returncode = 138
    reap_stale_temporary_oleans("POST")
    print(
        f"EXIT={returncode} PEAK_TREE_MB="
        f"{(peak_bytes + (1 << 20) - 1) // (1 << 20)} "
        f"RAW_PEAK_TREE_MB="
        f"{(raw_peak_bytes + (1 << 20) - 1) // (1 << 20)} "
        f"WORKING_SET_TRIMS={working_set_trims} "
        f"DETACHED_REAPED={detached_reaped}",
        flush=True,
    )
    atexit.unregister(release_run_lock)
    release_run_lock(run_lock)
    raise SystemExit(returncode or 0)


if __name__ == "__main__":
    main()
