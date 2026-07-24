#!/usr/bin/env python3
"""Run the closed-release Lean build, trust=0 checks, and axiom gate."""

from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"


def fail(message: str) -> None:
    raise SystemExit(f"[kernel-gate:error] {message}")


def run(command: list[str], *, cwd: Path = ROOT) -> str:
    print(f"[kernel-gate:run] {cwd}> {' '.join(command)}", flush=True)
    completed = subprocess.run(
        command,
        cwd=cwd,
        check=False,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )
    print(completed.stdout, end="" if completed.stdout.endswith("\n") else "\n")
    if completed.returncode != 0:
        fail(f"command failed with exit code {completed.returncode}")
    return completed.stdout


def audit_axioms(output: str, allowed: set[str]) -> None:
    seen: set[str] = set()
    for payload in re.findall(r"depends on axioms:\s*\[([^\]]*)\]", output):
        for name in payload.split(","):
            if name.strip():
                seen.add(name.strip())
    unexpected = seen - allowed
    if unexpected:
        fail(f"unexpected axiom dependencies: {sorted(unexpected)}")
    print(f"[kernel-gate:axioms-ok] dependencies={sorted(seen)}")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--memory-mib",
        type=int,
        default=24576,
        help="Lean per-process memory limit for direct trust=0 checks.",
    )
    args = parser.parse_args()
    if args.memory_mib < 1024:
        fail("--memory-mib must be at least 1024")

    state = json.loads((ROOT / "proof-state.json").read_text(encoding="utf-8"))
    acceptance = state["acceptance"]
    run(
        [
            sys.executable,
            "scripts/check_proof_state.py",
            "--require-release-ready",
            "--audit-sources",
        ]
    )
    run(["lake", "build", "Erdos848.PublicationRoot"], cwd=LEAN)
    map_relative = Path(acceptance["theorem_map"]).relative_to("lean4").as_posix()
    audit_relative = Path(acceptance["axiom_audit"]).relative_to("lean4").as_posix()
    lean_common = [
        "lake",
        "env",
        "lean",
        "--trust=0",
        "-M",
        str(args.memory_mib),
    ]
    run(lean_common + [map_relative], cwd=LEAN)
    audit_output = run(lean_common + [audit_relative], cwd=LEAN)
    audit_axioms(audit_output, set(acceptance["allowed_axioms"]))
    print("[kernel-gate:ok] paper-machine version, build, trust=0, and axioms")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
