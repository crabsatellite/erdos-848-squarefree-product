#!/usr/bin/env python3
"""Build the pure-support proof shards without replaying stable dependencies."""

from __future__ import annotations

import argparse
from concurrent.futures import FIRST_COMPLETED, ThreadPoolExecutor, wait
from dataclasses import asdict, dataclass
from datetime import datetime, timezone
import json
from pathlib import Path
import subprocess
import sys
import time


ROOT = Path(__file__).resolve().parents[1]
LEAN_ROOT = ROOT / "lean4"
SOURCE_ROOT = LEAN_ROOT / "Erdos848" / "GeneratedTailPureSupportCoverage"
OBJECT_ROOT = (
    LEAN_ROOT / ".lake" / "build" / "lib" / "lean" /
    "Erdos848" / "GeneratedTailPureSupportCoverage"
)
STATUS = LEAN_ROOT / ".lake" / "pure-support-build-status.json"


@dataclass(frozen=True)
class Result:
    module: str
    ok: bool
    seconds: float
    output: str


def current(source: Path, target: Path) -> bool:
    return target.is_file() and target.stat().st_mtime_ns >= source.stat().st_mtime_ns


def build_one(source: Path, memory_mb: int, timeout: int) -> Result:
    relative = source.relative_to(LEAN_ROOT)
    target = OBJECT_ROOT / f"{source.stem}.olean"
    if current(source, target):
        return Result(relative.as_posix(), True, 0.0, "cached")
    target.parent.mkdir(parents=True, exist_ok=True)
    started = time.monotonic()
    command = [
        "lake", "env", "lean", "--trust=0", "-M", str(memory_mb),
        "-o", str(target), str(relative),
    ]
    try:
        completed = subprocess.run(
            command,
            cwd=LEAN_ROOT,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            timeout=timeout,
            check=False,
        )
        output = completed.stdout[-4000:]
        ok = completed.returncode == 0 and target.is_file()
    except subprocess.TimeoutExpired as error:
        output = f"timeout after {timeout}s\n{(error.stdout or '')[-3500:]}"
        ok = False
    return Result(relative.as_posix(), ok, time.monotonic() - started, output)


def write_status(results: list[Result], total: int) -> None:
    payload = {
        "updated_at": datetime.now(timezone.utc).isoformat(),
        "total": total,
        "passed": sum(result.ok for result in results),
        "failed": sum(not result.ok for result in results),
        "results": [asdict(result) for result in results],
    }
    STATUS.parent.mkdir(parents=True, exist_ok=True)
    STATUS.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--memory-mb", type=int, default=8192)
    parser.add_argument("--timeout", type=int, default=240)
    args = parser.parse_args()
    if args.jobs < 1 or args.memory_mb < 512 or args.timeout < 1:
        parser.error("jobs, memory-mb, and timeout must be positive")

    sources = sorted(
        path for path in SOURCE_ROOT.glob("*.lean")
        if path.name != "Certificate.lean"
    )
    if not sources:
        raise SystemExit("no generated pure-support shards")

    results: list[Result] = []
    with ThreadPoolExecutor(max_workers=args.jobs) as executor:
        pending = {
            executor.submit(build_one, source, args.memory_mb, args.timeout): source
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
                    f"[{len(results):04d}/{len(sources):04d}] {state} "
                    f"{result.seconds:6.1f}s {result.module}",
                    flush=True,
                )
                if not result.ok:
                    print(result.output, flush=True)
                if len(results) % 8 == 0 or not result.ok:
                    write_status(results, len(sources))

    write_status(results, len(sources))
    if any(not result.ok for result in results):
        return 1

    certificate = SOURCE_ROOT / "Certificate.lean"
    result = build_one(certificate, args.memory_mb, args.timeout)
    print(
        f"[certificate] {'ok' if result.ok else 'FAIL'} "
        f"{result.seconds:6.1f}s {result.module}",
        flush=True,
    )
    if not result.ok:
        print(result.output, flush=True)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
