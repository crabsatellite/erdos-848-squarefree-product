#!/usr/bin/env python3
"""Run the trust-zero Lean audit and require the standard Mathlib axiom set."""

from __future__ import annotations

import os
import re
import signal
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"
AUDIT = "Erdos848/MainTheoremAxiomAudit.lean"
ENDPOINTS = [
    "A7_has_property_public",
    "A18_has_property_public",
    "sawhney_main",
    "problem_848_asymptotic",
    "erdos848_original_asymptotic",
    "erdos848_original_N49",
    "erdos848_original_N99",
    "erdos848_finite_reduction",
    "originalProblem_of_prefixColouringState",
    "originalProblem_prefix_of_colouringCertificate",
    "GeneratedFiveMillionPrefixTrace.closeThroughFiveMillion",
    "erdos848_through_five_million",
    "erdos848_full_of_five_million_tail",
    "originalProblem_of_hallStatement",
    "erdos848HallStatement_iff_originalProblem",
    "exists_sameValuation_eightPivotCluster_of_defect",
    "hallCompletion_card_le_globalMixedDiagonalBasePairTail",
    "hallCompletion_card_le_globalMixedResidualBasePairTail",
    "pairTailValuation_even_or_odd",
    "erdos848GlobalMixedTailClose_of_branchedPairTailTerminalBound",
    "erdos848_five_million_tail_of_branchedPairTailTerminalBound",
    "erdos848_full_of_branchedPairTailTerminalBound",
]
ALLOWED = {"propext", "Classical.choice", "Quot.sound"}


def terminate_process_tree(process: subprocess.Popen[str]) -> None:
    if process.poll() is not None:
        return
    if os.name == "nt":
        subprocess.run(
            ["taskkill", "/PID", str(process.pid), "/T", "/F"],
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
            check=False,
        )
    else:
        try:
            os.killpg(process.pid, signal.SIGKILL)
        except ProcessLookupError:
            pass


def main() -> int:
    creation_flags = subprocess.CREATE_NEW_PROCESS_GROUP if os.name == "nt" else 0
    proc = subprocess.Popen(
        ["lake", "env", "lean", "--trust=0", "-M", "12288", AUDIT],
        cwd=LEAN,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        creationflags=creation_flags,
        start_new_session=os.name != "nt",
    )
    try:
        output, _ = proc.communicate(timeout=1800)
    except subprocess.TimeoutExpired:
        terminate_process_tree(proc)
        proc.wait()
        raise SystemExit("[axioms:error] trust-zero audit timed out after 1800 seconds")
    except KeyboardInterrupt:
        terminate_process_tree(proc)
        proc.wait()
        raise
    if proc.returncode:
        raise SystemExit(output or f"Lean audit failed with exit code {proc.returncode}")
    normalized_output = re.sub(r"\s+", " ", output)
    for endpoint in ENDPOINTS:
        qualified = re.escape("Erdos848." + endpoint)
        depends = re.search(
            rf"'{qualified}' depends on axioms: \[([^\]]*)\]",
            normalized_output,
        )
        independent = re.search(
            rf"'{qualified}' does not depend on any axioms",
            normalized_output,
        )
        if depends is None and independent is None:
            raise SystemExit(
                f"[axioms:error] missing audit line for {endpoint}\n{output}"
            )
        if depends is not None:
            actual = {
                axiom.strip()
                for axiom in depends.group(1).split(",")
                if axiom.strip()
            }
            unexpected = actual - ALLOWED
            if unexpected:
                raise SystemExit(
                    f"[axioms:error] forbidden axioms for {endpoint}: "
                    f"{sorted(unexpected)}"
                )
    print(f"[axioms:ok] endpoints={len(ENDPOINTS)} allowed={sorted(ALLOWED)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
