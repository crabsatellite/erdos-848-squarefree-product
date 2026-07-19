#!/usr/bin/env python3
"""Build generated even-terminal soundness modules with Lean ``--trust=0``.

The build is parallel and resumable.  ``--available-only`` compiles precisely
the sound groups whose expensive support-leaf dependency already exists, so it
can run alongside the producer batch without racing or touching its sources.
"""

from __future__ import annotations

import argparse
import concurrent.futures
import contextlib
import re
import subprocess
import sys
import time
from dataclasses import dataclass
from pathlib import Path

import psutil


ROOT = Path(__file__).resolve().parents[1]
LEAN_ROOT = ROOT / "lean4"
SOURCE_ROOT = LEAN_ROOT / "Erdos848" / "GeneratedTailGlobalMixedEvenTerminalSound"
OLEAN_ROOT = (
    LEAN_ROOT / ".lake" / "build" / "lib" / "lean" / "Erdos848"
    / "GeneratedTailGlobalMixedEvenTerminalSound"
)
ERDOS_OLEAN_ROOT = OLEAN_ROOT.parent
SUPPORT_OLEAN_ROOT = (
    LEAN_ROOT / ".lake" / "build" / "lib" / "lean" / "Erdos848"
    / "GeneratedTailGlobalMixedEvenSupportCoverage"
)
ACTUAL_SOUND_OLEAN = (
    LEAN_ROOT / ".lake" / "build" / "lib" / "lean" / "Erdos848"
    / "TailGlobalMixedEvenTerminalActualSound.olean"
)
PASS_SOUND_OLEAN = (
    LEAN_ROOT / ".lake" / "build" / "lib" / "lean" / "Erdos848"
    / "TailGlobalMixedEvenTerminalPassSound.olean"
)
LOG_ROOT = LEAN_ROOT / ".lake" / "even-terminal-sound-logs"


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


def split_support_oleans(source: Path) -> list[Path]:
    match = re.fullmatch(
        r"EvenK([6-8])TerminalGroup(\d{4})(?:Rows)?", source.stem
    )
    if match is None:
        return []
    k, index = match.groups()
    prefix = SUPPORT_OLEAN_ROOT / f"EvenK{k}Leaf{index}"
    return [
        Path(str(prefix) + suffix + ".olean")
        for suffix in ("CommonSound", "RowsSound", "CountsSound")
    ]


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


def support_ready(source: Path) -> bool:
    split = split_support_oleans(source)
    if split:
        return all(dependency.exists() for dependency in split)
    return (SUPPORT_OLEAN_ROOT / f"{source.stem}.olean").exists()


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
    return BuildResult(source, seconds, process.returncode, False, peak_tree_mb)


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
    pattern = "EvenK*TerminalGroup*.lean" if k is None else f"EvenK{k}TerminalGroup*.lean"
    return sorted(
        source for source in SOURCE_ROOT.glob(pattern)
        if re.fullmatch(r"EvenK[2-8]TerminalGroup\d{4}", source.stem)
    )


def row_sources(k: int | None = None) -> list[Path]:
    pattern = "EvenK*TerminalGroup*Rows.lean" if k is None else f"EvenK{k}TerminalGroup*Rows.lean"
    return sorted(SOURCE_ROOT.glob(pattern))


def all_fresh(sources: list[Path]) -> bool:
    return all(is_fresh(source) for source in sources)


def build_choice_chain(k: int, force: bool, memory_mb: int) -> None:
    choice = SOURCE_ROOT / f"EvenK{k}ChoiceSound.lean"
    require_success(build_one(choice, force, memory_mb))
    if ACTUAL_SOUND_OLEAN.exists():
        actual = SOURCE_ROOT / f"EvenK{k}ChoiceActualSound.lean"
        require_success(build_one(actual, force, memory_mb))
        if PASS_SOUND_OLEAN.exists():
            passes = SOURCE_ROOT / f"EvenK{k}ChoicePassSound.lean"
            require_success(build_one(passes, force, memory_mb))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--workers", type=int, default=2)
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

    all_leaves = group_sources()
    if len(all_leaves) != 432:
        raise SystemExit(f"expected 432 sound groups, found {len(all_leaves)}")
    all_rows = row_sources()
    if len(all_rows) != 334:
        raise SystemExit(f"expected 334 split K6-K8 row groups, found {len(all_rows)}")
    requested_k = sorted(set(args.k or range(2, 9)))
    rows = [source for k in requested_k for source in row_sources(k)]
    selected_rows = [source for source in rows if support_ready(source)]
    if not args.available_only and len(selected_rows) != len(rows):
        missing = len(rows) - len(selected_rows)
        raise SystemExit(f"{missing} support row leaves are not built yet")

    failed = False
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {
            pool.submit(build_one, source, args.force, args.memory_mb): source
            for source in selected_rows
        }
        for future in concurrent.futures.as_completed(futures):
            try:
                require_success(future.result())
            except Exception:
                failed = True
    if failed:
        raise SystemExit(1)

    leaves = [source for k in requested_k for source in group_sources(k)]
    selected = [source for source in leaves if support_ready(source)]
    if not args.available_only and len(selected) != len(leaves):
        missing = len(leaves) - len(selected)
        raise SystemExit(f"{missing} support leaves are not built yet")

    failed = False
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {
            pool.submit(build_one, source, args.force, args.memory_mb): source
            for source in selected
        }
        for future in concurrent.futures.as_completed(futures):
            try:
                require_success(future.result())
            except Exception:
                failed = True
    if failed:
        raise SystemExit(1)

    choice_ready_k = [k for k in requested_k if all_fresh(group_sources(k))]
    failed = False
    with concurrent.futures.ThreadPoolExecutor(
        max_workers=min(args.workers, max(1, len(choice_ready_k)))
    ) as pool:
        futures = {
            pool.submit(
                build_choice_chain, k, args.force, args.memory_mb
            ): k for k in choice_ready_k
        }
        for future in concurrent.futures.as_completed(futures):
            try:
                future.result()
            except Exception:
                failed = True
    if failed:
        raise SystemExit(1)

    root = SOURCE_ROOT / "Certificate.lean"
    pass_sources = [SOURCE_ROOT / f"EvenK{k}ChoicePassSound.lean" for k in range(2, 9)]
    if PASS_SOUND_OLEAN.exists() and all_fresh(pass_sources):
        require_success(build_one(root, args.force, args.memory_mb))


if __name__ == "__main__":
    main()
