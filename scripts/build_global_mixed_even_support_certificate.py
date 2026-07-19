#!/usr/bin/env python3
"""Build the generated even-support certificate with Lean's kernel only.

Each leaf is compiled independently with ``--trust=0`` and gets its own log.
The build is resumable: an olean newer than its source is skipped unless
``--force`` is supplied.  Aggregation modules are compiled only after every
leaf succeeds.
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
SOURCE_ROOT = (
    LEAN_ROOT / "Erdos848" / "GeneratedTailGlobalMixedEvenSupportCoverage"
)
OLEAN_ROOT = (
    LEAN_ROOT
    / ".lake"
    / "build"
    / "lib"
    / "lean"
    / "Erdos848"
    / "GeneratedTailGlobalMixedEvenSupportCoverage"
)
ERDOS_OLEAN_ROOT = OLEAN_ROOT.parent
LOG_ROOT = LEAN_ROOT / ".lake" / "even-support-logs"


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
    dependencies: list[Path] = []
    for line in source.read_text(encoding="utf-8").splitlines():
        if not line.startswith("import Erdos848."):
            continue
        module = line.removeprefix("import Erdos848.").strip()
        dependencies.append(
            ERDOS_OLEAN_ROOT / f"{module.replace('.', '/')}.olean"
        )
    return dependencies


def _track_process_tree(
    process: subprocess.Popen[str], rss_limit_mb: int,
) -> tuple[str, str, int]:
    tracked: dict[tuple[int, float], psutil.Process] = {}
    peak_tree_bytes = 0
    while True:
        with contextlib.suppress(psutil.Error):
            parent = psutil.Process(process.pid)
            for item in [parent, *parent.children(recursive=True)]:
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
            "lake",
            "env",
            "lean",
            "--trust=0",
            "-M",
            str(memory_mb),
            "-o",
            str(output),
            str(source),
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
    log = LOG_ROOT / f"{source.stem}.log"
    log.write_text(
        stdout + stderr + f"\nBUILD_SECONDS={seconds:.2f}\n"
        + f"PEAK_TREE_MB={peak_tree_mb}\nEXIT={process.returncode}\n",
        encoding="utf-8",
    )
    return BuildResult(source, seconds, process.returncode, False, peak_tree_mb)


def require_success(result: BuildResult) -> None:
    state = "SKIP" if result.skipped else "PASS" if result.returncode == 0 else "FAIL"
    print(
        f"{state} {result.source.stem} {result.seconds:.2f}s"
        + ("" if result.skipped else f" peak={result.peak_tree_mb}MB"),
        flush=True,
    )
    if result.returncode != 0:
        print(
            f"see {LOG_ROOT / (result.source.stem + '.log')}",
            file=sys.stderr,
            flush=True,
        )
        raise RuntimeError(result.source.stem)


def build_parallel(
    sources: list[Path], workers: int, force: bool, memory_mb: int
) -> None:
    failed = False
    with concurrent.futures.ThreadPoolExecutor(max_workers=workers) as pool:
        futures = {
            pool.submit(build_one, source, force, memory_mb): source
            for source in sources
        }
        for future in concurrent.futures.as_completed(futures):
            try:
                require_success(future.result())
            except Exception:
                failed = True
    if failed:
        raise SystemExit(1)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--workers", type=int, default=4)
    parser.add_argument("--memory-mb", type=int, default=6144)
    parser.add_argument(
        "--k", type=int, action="append", choices=range(2, 9),
        help="build only the selected K level; may be repeated",
    )
    parser.add_argument("--force", action="store_true")
    args = parser.parse_args()
    if args.workers < 1:
        raise SystemExit("--workers must be positive")
    if args.memory_mb < 1024:
        raise SystemExit("--memory-mb must be at least 1024")

    for name in ("Data.lean", "WordCounts.lean"):
        require_success(
            build_one(SOURCE_ROOT / name, args.force, args.memory_mb)
        )

    compact_leaves = sorted(SOURCE_ROOT.glob("EvenK[2-5]TerminalGroup*.lean"))
    if len(compact_leaves) != 98:
        raise SystemExit(
            f"expected 98 compact K2-K5 terminal groups, found {len(compact_leaves)}"
        )
    requested_k = sorted(set(args.k or range(2, 9)))
    data_leaves = [
        source for k in requested_k
        for source in sorted(SOURCE_ROOT.glob(f"EvenK{k}Leaf*Data.lean"))
    ]
    build_parallel(
        data_leaves, args.workers, args.force, args.memory_mb
    )
    sound_leaves = [
        source for k in requested_k
        for suffix in ("CommonSound", "RowsSound", "CountsSound")
        for source in sorted(SOURCE_ROOT.glob(f"EvenK{k}Leaf*{suffix}.lean"))
    ]
    build_parallel(
        sound_leaves, args.workers, args.force, args.memory_mb
    )
    leaves = [
        source for k in requested_k if k <= 5
        for source in sorted(SOURCE_ROOT.glob(f"EvenK{k}TerminalGroup*.lean"))
    ]
    build_parallel(leaves, args.workers, args.force, args.memory_mb)

    for k in requested_k:
        require_success(
            build_one(
                SOURCE_ROOT / f"EvenK{k}Certificate.lean",
                args.force,
                args.memory_mb,
            )
        )
    certificates = [SOURCE_ROOT / f"EvenK{k}Certificate.lean" for k in range(2, 9)]
    if all(is_fresh(source) for source in certificates):
        require_success(
            build_one(SOURCE_ROOT / "Certificate.lean", args.force, args.memory_mb)
        )


if __name__ == "__main__":
    main()
