#!/usr/bin/env python3
"""Build the uniform pure-support certificate with bounded parallel leaves."""

from __future__ import annotations

import argparse
from concurrent.futures import FIRST_COMPLETED, ThreadPoolExecutor, wait
from dataclasses import asdict, dataclass
from datetime import datetime, timezone
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import threading
import time


if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="backslashreplace")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8", errors="backslashreplace")


ROOT = Path(__file__).resolve().parents[1]
LEAN_ROOT = ROOT / "lean4"
SOURCE_ROOT = LEAN_ROOT / "Erdos848"
OBJECT_ROOT = LEAN_ROOT / ".lake" / "build" / "lib" / "lean" / "Erdos848"
BASE_GENERATED = SOURCE_ROOT / "GeneratedTailSupportCoverage"
GLOBAL_GENERATED = SOURCE_ROOT / "GeneratedTailGlobalPureSupportCoverage"
STATUS = LEAN_ROOT / ".lake" / "global-pure-support-build-status.json"


@dataclass(frozen=True)
class Result:
    module: str
    ok: bool
    seconds: float
    output: str


def target_for(source: Path) -> Path:
    return (OBJECT_ROOT / source.relative_to(SOURCE_ROOT)).with_suffix(".olean")


def direct_import_targets(source: Path) -> list[Path]:
    targets: list[Path] = []
    for line in source.read_text(encoding="utf-8-sig").splitlines():
        stripped = line.strip()
        if not stripped or stripped.startswith("--"):
            continue
        match = re.fullmatch(r"import\s+(.+)", stripped)
        if match is None:
            break
        for module in match.group(1).split():
            if module.startswith("Erdos848"):
                targets.append(
                    OBJECT_ROOT.joinpath(*module.split(".")[1:]).with_suffix(".olean")
                )
    return targets


def current(source: Path, target: Path) -> bool:
    if not target.is_file() or target.stat().st_mtime_ns < source.stat().st_mtime_ns:
        return False
    return all(
        dependency.is_file()
        and dependency.stat().st_mtime_ns <= target.stat().st_mtime_ns
        for dependency in direct_import_targets(source)
    )


def build_one(
    source: Path, memory_mb: int, timeout: int, force: bool = False
) -> Result:
    relative = source.relative_to(LEAN_ROOT)
    target = target_for(source)
    if not force and current(source, target):
        return Result(relative.as_posix(), True, 0.0, "cached")
    target.parent.mkdir(parents=True, exist_ok=True)
    temporary = target.with_name(
        f"{target.stem}.tmp-{os.getpid()}-{threading.get_ident()}.olean"
    )
    started = time.monotonic()
    command = [
        "lake", "env", "lean", "--trust=0", "-M", str(memory_mb),
        "-o", os.fspath(temporary), os.fspath(relative),
    ]
    try:
        completed = subprocess.run(
            command,
            cwd=LEAN_ROOT,
            text=True,
            encoding="utf-8",
            errors="replace",
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            timeout=timeout,
            check=False,
        )
        output = completed.stdout[-5000:]
        ok = completed.returncode == 0 and temporary.is_file()
        if ok:
            os.replace(temporary, target)
    except subprocess.TimeoutExpired as error:
        output = f"timeout after {timeout}s\n{(error.stdout or '')[-4500:]}"
        ok = False
    finally:
        temporary.unlink(missing_ok=True)
    return Result(relative.as_posix(), ok, time.monotonic() - started, output)


def write_status(results: list[Result], total: int, phase: str) -> None:
    payload = {
        "updated_at": datetime.now(timezone.utc).isoformat(),
        "phase": phase,
        "total": total,
        "passed": sum(result.ok for result in results),
        "failed": sum(not result.ok for result in results),
        "results": [asdict(result) for result in results],
    }
    STATUS.parent.mkdir(parents=True, exist_ok=True)
    temporary = STATUS.with_suffix(".tmp")
    temporary.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    os.replace(temporary, STATUS)


def build_parallel(
    sources: list[Path], jobs: int, memory_mb: int, timeout: int, phase: str,
    *, force: bool = False,
) -> bool:
    results: list[Result] = []
    with ThreadPoolExecutor(max_workers=jobs) as executor:
        pending = {
            executor.submit(build_one, source, memory_mb, timeout, force): source
            for source in sources
        }
        while pending:
            done, _ = wait(pending, return_when=FIRST_COMPLETED)
            for future in done:
                source = pending.pop(future)
                try:
                    result = future.result()
                except Exception as error:
                    result = Result(source.name, False, 0.0, repr(error))
                results.append(result)
                state = "ok" if result.ok else "FAIL"
                print(
                    f"[{phase} {len(results):04d}/{len(sources):04d}] {state} "
                    f"{result.seconds:6.1f}s {result.module}",
                    flush=True,
                )
                if not result.ok:
                    print(result.output, flush=True)
                if len(results) % 8 == 0 or not result.ok:
                    write_status(results, len(sources), phase)
    write_status(results, len(sources), phase)
    return all(result.ok for result in results)


def require_one(
    source: Path, memory_mb: int, timeout: int, label: str, *, force: bool = False
) -> None:
    result = build_one(source, memory_mb, timeout, force)
    print(
        f"[{label}] {'ok' if result.ok else 'FAIL'} {result.seconds:6.1f}s "
        f"{result.module}",
        flush=True,
    )
    if not result.ok:
        print(result.output, flush=True)
        raise RuntimeError(f"{label} failed")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--jobs", type=int, default=8)
    parser.add_argument("--memory-mb", type=int, default=4096)
    parser.add_argument("--timeout", type=int, default=300)
    args = parser.parse_args()
    if args.jobs < 1 or args.memory_mb < 512 or args.timeout < 1:
        parser.error("jobs, memory-mb, and timeout must be positive")

    # Revalidate the small extension of the existing word-mask table first.
    require_one(BASE_GENERATED / "Data.lean", args.memory_mb, args.timeout, "base-data")
    require_one(
        SOURCE_ROOT / "TailSupportScanChecker.lean",
        args.memory_mb, args.timeout, "base-checker",
    )
    mask_sources = sorted(BASE_GENERATED.glob("MaskGroup*.lean"))
    if len(mask_sources) != 61:
        raise RuntimeError(f"expected 61 mask groups, found {len(mask_sources)}")
    if not build_parallel(
        mask_sources, args.jobs, args.memory_mb, args.timeout, "base-mask"
    ):
        return 1
    require_one(
        BASE_GENERATED / "Certificate.lean",
        args.memory_mb, args.timeout, "base-certificate",
    )
    require_one(
        SOURCE_ROOT / "TailSupportWordBridge.lean",
        args.memory_mb, args.timeout, "word-bridge",
    )

    require_one(GLOBAL_GENERATED / "Data.lean", args.memory_mb, args.timeout, "global-data")
    semantic_sources = sorted(GLOBAL_GENERATED.glob("MaskSemanticGroup*.lean"))
    if len(semantic_sources) != 45:
        raise RuntimeError(
            f"expected 45 mask semantic groups, found {len(semantic_sources)}"
        )
    if not build_parallel(
        semantic_sources, args.jobs, args.memory_mb, args.timeout, "mask-semantic"
    ):
        return 1
    require_one(
        GLOBAL_GENERATED / "MaskSemanticCertificate.lean",
        args.memory_mb, args.timeout, "mask-semantic-certificate", force=True,
    )
    require_one(
        SOURCE_ROOT / "TailGlobalPureSupportChecker.lean",
        args.memory_mb, args.timeout, "global-checker",
    )
    require_one(
        GLOBAL_GENERATED / "KernelDomainData.lean",
        args.memory_mb, args.timeout, "kernel-domain-data",
    )
    require_one(
        SOURCE_ROOT / "TailGlobalPureSupportKernelDomain.lean",
        args.memory_mb, args.timeout, "kernel-domain",
    )
    kernel_semantic_sources = sorted(
        GLOBAL_GENERATED.glob("KernelDomainSemanticGroup*.lean")
    )
    if len(kernel_semantic_sources) != 48:
        raise RuntimeError(
            f"expected 48 kernel-domain semantic groups, "
            f"found {len(kernel_semantic_sources)}"
        )
    if not build_parallel(
        kernel_semantic_sources, args.jobs, args.memory_mb, args.timeout,
        "kernel-domain-semantic",
    ):
        return 1
    require_one(
        GLOBAL_GENERATED / "KernelDomainCertificate.lean",
        args.memory_mb, args.timeout, "kernel-domain-certificate",
    )

    shard_sources = sorted(GLOBAL_GENERATED.glob("K*PrefixGroup*.lean"))
    if len(shard_sources) != 546:
        raise RuntimeError(f"expected 546 global shards, found {len(shard_sources)}")
    if not build_parallel(
        shard_sources, args.jobs, args.memory_mb, args.timeout, "global-shard"
    ):
        return 1
    for k in range(9):
        aggregate_memory_mb = max(
            args.memory_mb,
            {3: 8192, 4: 16384, 5: 16384, 6: 8192}.get(k, args.memory_mb),
        )
        require_one(
            GLOBAL_GENERATED / f"K{k}Certificate.lean",
            aggregate_memory_mb, args.timeout, f"global-k{k}-certificate",
        )
    require_one(
        GLOBAL_GENERATED / "Certificate.lean",
        args.memory_mb, args.timeout, "global-certificate", force=True,
    )
    require_one(
        SOURCE_ROOT / "TailGlobalPureSupportBridge.lean",
        args.memory_mb, args.timeout, "global-semantic-bridge", force=True,
    )
    require_one(
        SOURCE_ROOT / "TailGlobalPureSupportComplete.lean",
        max(args.memory_mb, 16384), args.timeout,
        "global-support-complete", force=True,
    )
    require_one(
        SOURCE_ROOT / "TailPureGlobalHigh.lean",
        max(args.memory_mb, 16384), args.timeout,
        "global-pure-high", force=True,
    )
    require_one(
        SOURCE_ROOT / "TailPureGlobalSmall.lean",
        args.memory_mb, args.timeout, "global-pure-small", force=True,
    )
    require_one(
        SOURCE_ROOT / "TailPrimeTerminalSieve.lean",
        max(args.memory_mb, 8192), args.timeout,
        "global-prime-terminal", force=True,
    )
    require_one(
        SOURCE_ROOT / "TailPureGlobalMedium.lean",
        max(args.memory_mb, 4096), args.timeout,
        "global-pure-medium", force=True,
    )
    require_one(
        SOURCE_ROOT / "TailPureGlobalDegree.lean",
        max(args.memory_mb, 8192), args.timeout,
        "global-pure-degree", force=True,
    )
    print("global pure-support certificate build complete", flush=True)
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except KeyboardInterrupt:
        print("interrupted; completed OLean leaves remain reusable", file=sys.stderr)
        raise
