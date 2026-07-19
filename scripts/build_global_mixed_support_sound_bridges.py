#!/usr/bin/env python3
"""Build the mixed-support semantic bridges with Lean's kernel only.

The script is intentionally resumable.  It never regenerates or recompiles the
cached numerical leaves; it compiles only the separate ``*Sound.lean`` bridge
modules, then their nine per-k certificates and the top certificate.
"""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
import time
from concurrent.futures import FIRST_COMPLETED, Future, ThreadPoolExecutor, wait
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LEAN_ROOT = ROOT / "lean4"
SOURCE_ROOT = (
    LEAN_ROOT / "Erdos848" / "GeneratedTailGlobalMixedSupportCoverage"
)
BUILD_ROOT = (
    LEAN_ROOT
    / ".lake"
    / "build"
    / "lib"
    / "lean"
    / "Erdos848"
    / "GeneratedTailGlobalMixedSupportCoverage"
)
LEAN_BUILD_ROOT = LEAN_ROOT / ".lake" / "build" / "lib" / "lean"
LEAF_RE = re.compile(r"K[0-8]PrefixGroup\d{4}Sound\.lean$")
AXIOM_REPORT_RE = re.compile(r"depends on axioms:\s*\[([^\]]*)\]", re.MULTILINE)
NO_AXIOMS_RE = re.compile(r"does not depend on any axioms")
ALLOWED_AXIOMS = {"propext", "Classical.choice", "Quot.sound"}


@dataclass(frozen=True)
class BuildResult:
    source: Path
    returncode: int
    elapsed: float
    output: str


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--memory-mb", type=int, default=6144)
    parser.add_argument("--aggregate-memory-mb", type=int, default=12288)
    parser.add_argument("--timeout", type=int, default=180)
    parser.add_argument("--aggregate-timeout", type=int, default=900)
    parser.add_argument("--dispatch-only", action="store_true")
    parser.add_argument("--extension-only", action="store_true")
    parser.add_argument("--force", action="store_true")
    parser.add_argument("--force-leaves", action="store_true")
    args = parser.parse_args()
    if (
        args.jobs < 1
        or args.memory_mb < 512
        or args.aggregate_memory_mb < 512
        or args.timeout < 1
        or args.aggregate_timeout < 1
    ):
        parser.error("jobs, memory limits, and timeouts must be positive")
    return args


def output_path(source: Path) -> Path:
    relative = source.relative_to(LEAN_ROOT).with_suffix(".olean")
    return LEAN_BUILD_ROOT / relative


def is_current(source: Path) -> bool:
    output = output_path(source)
    return output.exists() and output.stat().st_mtime_ns >= source.stat().st_mtime_ns


def is_current_after(source: Path, dependencies: list[Path]) -> bool:
    if not is_current(source):
        return False
    output_mtime = output_path(source).stat().st_mtime_ns
    return all(
        dependency.exists() and output_mtime >= dependency.stat().st_mtime_ns
        for dependency in dependencies
    )


def build_one(source: Path, memory_mb: int, timeout: int) -> BuildResult:
    output = output_path(source)
    output.parent.mkdir(parents=True, exist_ok=True)
    relative_source = source.relative_to(LEAN_ROOT)
    relative_output = output.relative_to(LEAN_ROOT)
    command = [
        "lake",
        "env",
        "lean",
        "--trust=0",
        "-M",
        str(memory_mb),
        "-o",
        str(relative_output),
        str(relative_source),
    ]
    started = time.monotonic()
    try:
        completed = subprocess.run(
            command,
            cwd=LEAN_ROOT,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            encoding="utf-8",
            errors="replace",
            timeout=timeout,
            check=False,
        )
        returncode = completed.returncode
        output_text = completed.stdout
    except subprocess.TimeoutExpired as exc:
        returncode = 124
        partial = exc.stdout or ""
        if isinstance(partial, bytes):
            partial = partial.decode("utf-8", errors="replace")
        output_text = f"{partial}\nTIMEOUT after {timeout}s"
    return BuildResult(source, returncode, time.monotonic() - started, output_text)


def verify_result(result: BuildResult) -> str | None:
    if result.returncode != 0:
        return f"Lean exited with {result.returncode}"
    if not output_path(result.source).exists():
        return "Lean returned success but no .olean was produced"
    matches = list(AXIOM_REPORT_RE.finditer(result.output))
    no_axioms = list(NO_AXIOMS_RE.finditer(result.output))
    if len(matches) + len(no_axioms) != 1:
        return "expected exactly one axiom report"
    if matches:
        axioms = {
            axiom.strip() for axiom in matches[0].group(1).split(",") if axiom.strip()
        }
        disallowed = axioms - ALLOWED_AXIOMS
        if disallowed:
            return f"disallowed axioms: {sorted(disallowed)}"
    return None


def build_parallel(
    sources: list[Path], jobs: int, memory_mb: int, timeout: int
) -> None:
    if not sources:
        return
    completed_count = 0
    failures: list[tuple[BuildResult, str]] = []
    with ThreadPoolExecutor(max_workers=jobs) as executor:
        pending: dict[Future[BuildResult], Path] = {}
        iterator = iter(sources)

        def submit_next() -> None:
            try:
                source = next(iterator)
            except StopIteration:
                return
            pending[executor.submit(build_one, source, memory_mb, timeout)] = source

        for _ in range(min(jobs, len(sources))):
            submit_next()

        while pending:
            done, _ = wait(pending, return_when=FIRST_COMPLETED)
            for future in done:
                source = pending.pop(future)
                result = future.result()
                completed_count += 1
                error = verify_result(result)
                status = "ok" if error is None else "FAIL"
                print(
                    f"[{completed_count}/{len(sources)}] {status} "
                    f"{source.name} {result.elapsed:.1f}s",
                    flush=True,
                )
                if error is not None:
                    failures.append((result, error))
                submit_next()

    if failures:
        for result, error in failures:
            print(f"\nERROR {result.source.name}: {error}", file=sys.stderr)
            print(result.output, file=sys.stderr)
        raise SystemExit(f"{len(failures)} bridge builds failed")


def build_serial(sources: list[Path], memory_mb: int, timeout: int) -> None:
    for index, source in enumerate(sources, start=1):
        result = build_one(source, memory_mb, timeout)
        error = verify_result(result)
        status = "ok" if error is None else "FAIL"
        print(
            f"[aggregate {index}/{len(sources)}] {status} "
            f"{source.name} {result.elapsed:.1f}s",
            flush=True,
        )
        if error is not None:
            print(result.output, file=sys.stderr)
            raise SystemExit(f"{source.name}: {error}")


def main() -> None:
    args = parse_args()
    extension_data = SOURCE_ROOT / "ExtensionData.lean"
    if args.force or not is_current(extension_data):
        build_serial([extension_data], args.memory_mb, args.timeout)
    extension_groups = sorted(SOURCE_ROOT.glob("ExtensionSemanticGroup*.lean"))
    if len(extension_groups) != 36:
        raise SystemExit(
            f"expected 36 extension semantic groups, found {len(extension_groups)}"
        )
    extension_pending = (
        extension_groups
        if args.force
        else [source for source in extension_groups if not is_current(source)]
    )
    print(
        f"extension bridges: total={len(extension_groups)} "
        f"cached={len(extension_groups) - len(extension_pending)} "
        f"pending={len(extension_pending)}",
        flush=True,
    )
    build_parallel(
        extension_pending, args.jobs, args.memory_mb, args.timeout
    )
    extension_certificate = SOURCE_ROOT / "ExtensionSemanticCertificate.lean"
    if args.force or not is_current(extension_certificate):
        build_serial([extension_certificate], args.aggregate_memory_mb,
                     args.aggregate_timeout)
    if args.extension_only:
        print("all successor-prime bridges verified with --trust=0", flush=True)
        return

    checker_dependencies = [
        LEAN_ROOT / "Erdos848" / "TailGlobalMixedSupportChecker.lean",
        LEAN_ROOT / "Erdos848" / "TailGlobalMixedSupportBridge.lean",
        LEAN_ROOT / "Erdos848" / "TailGlobalMixedCoreBridge.lean",
    ]
    checker_pending = (
        checker_dependencies
        if args.force or args.force_leaves
        else [source for source in checker_dependencies if not is_current(source)]
    )
    build_serial(checker_pending, args.memory_mb, args.timeout)

    dispatch = sorted(SOURCE_ROOT.glob("MaskDispatchGroup*.lean"))
    if len(dispatch) != 26:
        raise SystemExit(f"expected 26 dispatch bridges, found {len(dispatch)}")
    dispatch_pending = (
        dispatch if args.force else [source for source in dispatch if not is_current(source)]
    )
    print(
        f"dispatch bridges: total={len(dispatch)} "
        f"cached={len(dispatch) - len(dispatch_pending)} pending={len(dispatch_pending)}",
        flush=True,
    )
    build_parallel(dispatch_pending, args.jobs, args.memory_mb, args.timeout)
    dispatch_certificate = SOURCE_ROOT / "MaskDispatchCertificate.lean"
    if args.force or not is_current(dispatch_certificate):
        build_serial([dispatch_certificate], args.memory_mb, args.timeout)
    if args.dispatch_only:
        print("all mask dispatch bridges verified with --trust=0", flush=True)
        return

    leaves = sorted(
        source
        for source in SOURCE_ROOT.glob("K*PrefixGroup*Sound.lean")
        if LEAF_RE.fullmatch(source.name)
    )
    if len(leaves) != 239:
        raise SystemExit(f"expected 239 sound leaves, found {len(leaves)}")

    leaf_dependencies = [
        output_path(LEAN_ROOT / "Erdos848" / "TailGlobalMixedCoreBridge.lean")
    ]
    pending = (
        leaves
        if args.force or args.force_leaves
        else [
            source
            for source in leaves
            if not is_current_after(source, leaf_dependencies)
        ]
    )
    print(
        f"sound leaves: total={len(leaves)} cached={len(leaves) - len(pending)} "
        f"pending={len(pending)} jobs={args.jobs} memory_mb={args.memory_mb}",
        flush=True,
    )
    build_parallel(pending, args.jobs, args.memory_mb, args.timeout)

    aggregates = [SOURCE_ROOT / f"K{k}SoundCertificate.lean" for k in range(9)]
    aggregates.append(SOURCE_ROOT / "SoundCertificate.lean")
    aggregate_pending = (
        aggregates
        if args.force or args.force_leaves
        else [source for source in aggregates if not is_current(source)]
    )
    build_serial(
        aggregate_pending, args.aggregate_memory_mb, args.aggregate_timeout
    )
    print("all mixed-support sound bridges verified with --trust=0", flush=True)


if __name__ == "__main__":
    main()
