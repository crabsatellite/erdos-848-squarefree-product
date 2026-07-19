#!/usr/bin/env python3
"""Build the chunked Erdős 848 five-twist certificate safely and resumably."""

from __future__ import annotations

import argparse
import atexit
import json
from pathlib import Path

from build_generated_certificate import (
    BuildLock,
    ParentWatchdog,
    ProcessRegistry,
    build_command,
    compact_result_record,
    module_olean_path,
    run_stage,
    stale_project_dependency,
    utc_now,
    write_status,
)


NAMESPACE = "Erdos848.GeneratedTailFiveTwistSupportCoverage"
CORE = "Erdos848.TailFiveMillionFiveTwistCore"
CERTIFICATE = f"{NAMESPACE}.Certificate"


def parse_args() -> argparse.Namespace:
    repository = Path(__file__).resolve().parents[1]
    parser = argparse.ArgumentParser()
    parser.add_argument("--lean-dir", type=Path, default=repository / "lean4")
    parser.add_argument("--workers", type=int, default=6)
    parser.add_argument("--leaf-timeout-seconds", type=int, default=120)
    parser.add_argument("--leaf-max-memory-mib", type=int, default=2048)
    parser.add_argument("--final-timeout-seconds", type=int, default=900)
    parser.add_argument("--final-max-memory-mib", type=int, default=8192)
    return parser.parse_args()


def load_state(path: Path) -> dict[str, object]:
    try:
        state = json.loads(path.read_text(encoding="utf-8-sig"))
        if isinstance(state, dict):
            return state
    except (OSError, json.JSONDecodeError):
        pass
    return {"results": {}}


def main() -> int:
    args = parse_args()
    if args.workers < 1:
        raise SystemExit("--workers must be positive")
    lean_dir = args.lean_dir.resolve()
    source_dir = lean_dir.joinpath(*NAMESPACE.split("."))
    status_path = lean_dir / ".lake" / "erdos848-five-twist-status.json"
    lock = BuildLock(status_path.with_suffix(".lock"))
    lock.acquire()
    atexit.register(lock.release)

    registry = ProcessRegistry()
    atexit.register(registry.terminate_all)
    ParentWatchdog(registry).start()

    state = load_state(status_path)
    results = state.setdefault("results", {})
    if not isinstance(results, dict):
        results = {}
        state["results"] = results
    state.update({
        "namespace": NAMESPACE,
        "status": "running",
        "workers": args.workers,
        "leaf_timeout_seconds": args.leaf_timeout_seconds,
        "max_memory_mib": args.leaf_max_memory_mib,
        "final_max_memory_mib": args.final_max_memory_mib,
        "preflight_leaves": 0,
        "progress_every": 10,
        "updated_at": utc_now(),
    })
    write_status(status_path, state)

    try:
        if stale_project_dependency(lean_dir, CORE, cache={}) is not None:
            [core_result] = build_command(
                lean_dir, [CORE], "five-twist-core",
                args.leaf_timeout_seconds, args.leaf_max_memory_mib, registry,
            )
            print(
                f"{core_result.status:12} core elapsed={core_result.elapsed_seconds:.3f}s",
                flush=True,
            )
            if core_result.status != "passed":
                raise RuntimeError("\n".join(core_result.output_tail))

        leaves = sorted(
            f"{NAMESPACE}.{path.stem}"
            for path in source_dir.glob("*FiveTwistGroup*.lean")
        )
        if not leaves:
            raise RuntimeError("no generated five-twist leaves found")

        # Accept already-built, freshness-checked OLeans even if they came from
        # an interrupted run before the next JSON checkpoint.
        for module in leaves:
            if stale_project_dependency(lean_dir, module, cache={}) is None:
                results.setdefault(module, {"status": "passed", "recovered": True})

        run_stage(
            lean_dir=lean_dir,
            stage="five-twist-leaves",
            modules=leaves,
            workers=args.workers,
            timeout_seconds=args.leaf_timeout_seconds,
            registry=registry,
            state=state,
            status_path=status_path,
        )

        [certificate_result] = build_command(
            lean_dir, [CERTIFICATE], "certificate-assembly",
            args.final_timeout_seconds, args.final_max_memory_mib, registry,
        )
        results[CERTIFICATE] = compact_result_record(certificate_result)
        print(
            f"{certificate_result.status:12} certificate "
            f"elapsed={certificate_result.elapsed_seconds:.3f}s",
            flush=True,
        )
        if certificate_result.status != "passed":
            raise RuntimeError("\n".join(certificate_result.output_tail))
    except BaseException as error:
        registry.terminate_all()
        state["status"] = "failed"
        state["error"] = str(error)
        state["finished_at"] = utc_now()
        state["updated_at"] = utc_now()
        write_status(status_path, state)
        print(str(error), flush=True)
        return 1

    state["status"] = "passed"
    state.pop("error", None)
    state["finished_at"] = utc_now()
    state["updated_at"] = utc_now()
    state["certificate_olean"] = str(module_olean_path(lean_dir, CERTIFICATE))
    write_status(status_path, state)
    print(f"passed status={status_path}", flush=True)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
