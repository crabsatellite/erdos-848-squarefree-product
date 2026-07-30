#!/usr/bin/env python3
"""Run read-only closed-release trust=0 checks and the exact axiom gate.

The expensive generated closure must be built by
``build_generated_certificate.py`` first.  This gate deliberately does not
call ``lake build``: Lake's default scheduler is not constrained by the
certificate builder's aggregate-memory policy, and a release verifier must not
rewrite or delete frozen object files while it is auditing them.
"""

from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"


def configure_stdout() -> None:
    """Keep Unicode Lean diagnostics printable on legacy Windows consoles."""

    reconfigure = getattr(sys.stdout, "reconfigure", None)
    if reconfigure is not None:
        reconfigure(errors="backslashreplace")


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


def guarded_lean_command(source: str, memory_mib: int) -> list[str]:
    trim_at = min(12000, memory_mib - 1024)
    return [
        sys.executable,
        "scripts/run_lean_guarded.py",
        "--direct-lean",
        "--strict-import-preflight",
        "--no-olean",
        "--threads",
        "1",
        "--trim-working-set-at-mb",
        str(trim_at),
        "--memory-mb",
        str(memory_mib),
        "--lean-memory-mb",
        str(memory_mib),
        "--timeout-seconds",
        "1800",
        source,
    ]


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
    configure_stdout()
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
    map_relative = Path(acceptance["theorem_map"]).relative_to("lean4").as_posix()
    audit_relative = Path(acceptance["axiom_audit"]).relative_to("lean4").as_posix()
    run(guarded_lean_command(map_relative, args.memory_mib))
    audit_output = run(guarded_lean_command(audit_relative, args.memory_mib))
    audit_axioms(audit_output, set(acceptance["allowed_axioms"]))
    print("[kernel-gate:ok] paper-machine version, trust=0, and axioms")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
