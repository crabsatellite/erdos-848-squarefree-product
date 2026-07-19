#!/usr/bin/env python3
"""Build finite-prefix to even-terminal coverage with Lean ``--trust=0``.

The 119,159 rows are finite support types, not ambient values of ``N``.  The
builder is parallel, resumable, and can compile the K-levels whose terminal
support certificates are already available while later levels continue.
"""

from __future__ import annotations

import argparse
import concurrent.futures
import contextlib
import subprocess
import sys
import time
from dataclasses import dataclass
from pathlib import Path

import psutil


ROOT = Path(__file__).resolve().parents[1]
LEAN_ROOT = ROOT / "lean4"
SOURCE_ROOT = LEAN_ROOT / "Erdos848" / "GeneratedTailGlobalMixedEvenTerminalCoverage"
OLEAN_ROOT = (
    LEAN_ROOT / ".lake" / "build" / "lib" / "lean" / "Erdos848"
    / "GeneratedTailGlobalMixedEvenTerminalCoverage"
)
SUPPORT_OLEAN_ROOT = (
    LEAN_ROOT / ".lake" / "build" / "lib" / "lean" / "Erdos848"
    / "GeneratedTailGlobalMixedEvenSupportCoverage"
)
PREFIX_OLEAN_ROOT = (
    LEAN_ROOT / ".lake" / "build" / "lib" / "lean" / "Erdos848"
    / "GeneratedTailGlobalMixedSupportCoverage"
)
LOG_ROOT = LEAN_ROOT / ".lake" / "even-terminal-coverage-logs"


@dataclass(frozen=True)
class BuildResult:
    source: Path
    seconds: float
    returncode: int
    skipped: bool
    peak_tree_mb: int = 0


def olean_path(source: Path) -> Path:
    return OLEAN_ROOT / f"{source.stem}.olean"


def is_fresh(source: Path) -> bool:
    output = olean_path(source)
    if not output.exists():
        return False
    newest_input = source.stat().st_mtime
    for dependency in direct_dependencies(source):
        if not dependency.exists():
            return False
        newest_input = max(newest_input, dependency.stat().st_mtime)
    return output.stat().st_mtime >= newest_input


def direct_dependencies(source: Path) -> list[Path]:
    """Resolve generated imports so resumability never accepts stale oleans."""
    roots = {
        "Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.": OLEAN_ROOT,
        "Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.": SUPPORT_OLEAN_ROOT,
        "Erdos848.GeneratedTailGlobalMixedSupportCoverage.": PREFIX_OLEAN_ROOT,
    }
    dependencies: list[Path] = []
    for line in source.read_text(encoding="utf-8").splitlines():
        if not line.startswith("import "):
            continue
        module = line.removeprefix("import ").strip()
        for prefix, root in roots.items():
            if module.startswith(prefix):
                relative = module.removeprefix(prefix).replace(".", "/")
                dependencies.append(root / f"{relative}.olean")
                break
    return dependencies


def _track_process_tree(
    process: subprocess.Popen[str], rss_limit_mb: int,
) -> tuple[str, str, int]:
    """Wait for one build while retaining enough identity to reap descendants."""
    tracked: dict[tuple[int, float], psutil.Process] = {}
    peak_tree_bytes = 0
    while True:
        with contextlib.suppress(psutil.Error):
            parent = psutil.Process(process.pid)
            current = [parent, *parent.children(recursive=True)]
            for item in current:
                with contextlib.suppress(psutil.Error):
                    tracked[(item.pid, item.create_time())] = item
        tree_bytes = 0
        for item in list(tracked.values()):
            with contextlib.suppress(psutil.Error):
                if item.is_running():
                    tree_bytes += item.memory_info().rss
        peak_tree_bytes = max(peak_tree_bytes, tree_bytes)
        if tree_bytes > rss_limit_mb * (1 << 20):
            victims = list(tracked.values())
            for item in reversed(victims):
                with contextlib.suppress(psutil.Error):
                    if item.is_running():
                        item.terminate()
            _, alive = psutil.wait_procs(victims, timeout=1.0)
            for item in alive:
                with contextlib.suppress(psutil.Error):
                    item.kill()
            psutil.wait_procs(alive, timeout=1.0)
            stdout, stderr = process.communicate()
            stderr += (
                f"\nRSS_LIMIT_EXCEEDED={rss_limit_mb}MB "
                f"observed={tree_bytes // (1 << 20)}MB\n"
            )
            break
        try:
            stdout, stderr = process.communicate(timeout=1.0)
            break
        except subprocess.TimeoutExpired:
            continue

    # A successful Lake wrapper should reap Lean itself.  If any tracked child
    # survives either success or failure, it is an orphan from this exact build.
    survivors = []
    for item in tracked.values():
        with contextlib.suppress(psutil.Error):
            if item.pid != process.pid and item.is_running():
                survivors.append(item)
    for item in survivors:
        with contextlib.suppress(psutil.Error):
            item.terminate()
    _, alive = psutil.wait_procs(survivors, timeout=1.0)
    for item in alive:
        with contextlib.suppress(psutil.Error):
            item.kill()
    psutil.wait_procs(alive, timeout=1.0)
    return stdout, stderr, (peak_tree_bytes + (1 << 20) - 1) // (1 << 20)


def build_one(source: Path, force: bool, memory_mb: int) -> BuildResult:
    if not force and is_fresh(source):
        return BuildResult(source, 0.0, 0, True)
    output = olean_path(source)
    output.parent.mkdir(parents=True, exist_ok=True)
    LOG_ROOT.mkdir(parents=True, exist_ok=True)
    started = time.perf_counter()
    process = subprocess.Popen(
        [
            "lake", "env", "lean", "--trust=0", "-M", str(memory_mb),
            "-o", str(output), str(source),
        ],
        cwd=LEAN_ROOT,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        errors="replace",
    )
    try:
        stdout, stderr, peak_tree_mb = _track_process_tree(process, memory_mb)
    except BaseException:
        with contextlib.suppress(psutil.Error):
            parent = psutil.Process(process.pid)
            descendants = parent.children(recursive=True)
            for item in reversed(descendants):
                with contextlib.suppress(psutil.Error):
                    item.kill()
            parent.kill()
        raise
    seconds = time.perf_counter() - started
    (LOG_ROOT / f"{source.stem}.log").write_text(
        stdout + stderr
        + f"\nBUILD_SECONDS={seconds:.2f}\n"
        + f"PEAK_TREE_MB={peak_tree_mb}\nEXIT={process.returncode}\n",
        encoding="utf-8",
    )
    return BuildResult(
        source, seconds, process.returncode, False, peak_tree_mb
    )


def require_success(result: BuildResult) -> None:
    state = "SKIP" if result.skipped else "PASS" if result.returncode == 0 else "FAIL"
    memory = "" if result.skipped else f" peak={result.peak_tree_mb}MB"
    print(
        f"{state} {result.source.stem} {result.seconds:.2f}s{memory}",
        flush=True,
    )
    if result.returncode != 0:
        print(
            f"see {LOG_ROOT / (result.source.stem + '.log')}",
            file=sys.stderr,
            flush=True,
        )
        raise RuntimeError(result.source.stem)


def group_sources(k: int | None = None) -> list[Path]:
    pattern = "EvenK*CoverageGroup*.lean" if k is None else f"EvenK{k}CoverageGroup*.lean"
    return sorted(SOURCE_ROOT.glob(pattern))


def chunk_sources(k: int) -> list[Path]:
    return sorted(SOURCE_ROOT.glob(f"EvenK{k}CoverageChunk*.lean"))


def tail_sources(k: int) -> list[Path]:
    return sorted(
        SOURCE_ROOT.glob(f"EvenK{k}CoverageTail*.lean"), reverse=True
    )


def all_fresh(sources: list[Path]) -> bool:
    return all(is_fresh(source) for source in sources)


def prefix_group_ready(source: Path) -> bool:
    stem = source.stem.replace("Even", "").replace("Coverage", "Prefix")
    return (PREFIX_OLEAN_ROOT / f"{stem}.olean").exists()


def build_tail_chain(
    k: int, force: bool, memory_mb: int
) -> None:
    for tail in tail_sources(k):
        require_success(build_one(tail, force, memory_mb))
    certificate = SOURCE_ROOT / f"EvenK{k}CoverageCertificate.lean"
    require_success(build_one(certificate, force, memory_mb))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--workers", type=int, default=4)
    parser.add_argument("--memory-mb", type=int, default=6144)
    parser.add_argument(
        "--k", type=int, action="append", choices=range(2, 9),
        help="build only the selected K level; may be repeated",
    )
    parser.add_argument("--force", action="store_true")
    parser.add_argument("--available-only", action="store_true")
    args = parser.parse_args()
    if args.workers < 1:
        raise SystemExit("--workers must be positive")
    if args.memory_mb < 1024:
        raise SystemExit("--memory-mb must be at least 1024")

    requested_k = sorted(set(args.k or range(2, 9)))
    ready_k: list[int] = []
    for k in requested_k:
        support = SUPPORT_OLEAN_ROOT / f"EvenK{k}Certificate.olean"
        if not support.exists():
            if not args.available_only:
                raise SystemExit(f"EvenK{k} support certificate is not built")
            continue
        selector = SOURCE_ROOT / f"EvenK{k}Selector.lean"
        require_success(build_one(selector, args.force, args.memory_mb))
        ready_k.append(k)

    leaves = [source for k in ready_k for source in group_sources(k)]
    if not all(prefix_group_ready(source) for source in leaves):
        raise SystemExit("a required certified prefix group is missing")
    failed = False
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {
            pool.submit(build_one, source, args.force, args.memory_mb): source
            for source in leaves
        }
        for future in concurrent.futures.as_completed(futures):
            try:
                require_success(future.result())
            except Exception:
                failed = True
    if failed:
        raise SystemExit(1)

    chunks_to_build = [
        source for k in ready_k
        if all_fresh(group_sources(k))
        for source in chunk_sources(k)
    ]
    failed = False
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {
            pool.submit(build_one, source, args.force, args.memory_mb): source
            for source in chunks_to_build
        }
        for future in concurrent.futures.as_completed(futures):
            try:
                require_success(future.result())
            except Exception:
                failed = True
    if failed:
        raise SystemExit(1)

    tail_ready_k = [
        k for k in ready_k
        if all_fresh(group_sources(k)) and all_fresh(chunk_sources(k))
    ]
    failed = False
    with concurrent.futures.ThreadPoolExecutor(
        max_workers=min(args.workers, max(1, len(tail_ready_k)))
    ) as pool:
        futures = {
            pool.submit(
                build_tail_chain, k, args.force, args.memory_mb
            ): k for k in tail_ready_k
        }
        for future in concurrent.futures.as_completed(futures):
            try:
                future.result()
            except Exception:
                failed = True
    if failed:
        raise SystemExit(1)

    certificates = [SOURCE_ROOT / f"EvenK{k}CoverageCertificate.lean" for k in range(2, 9)]
    if all_fresh(certificates):
        require_success(
            build_one(SOURCE_ROOT / "Certificate.lean", args.force, args.memory_mb)
        )


if __name__ == "__main__":
    main()
