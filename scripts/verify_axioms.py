#!/usr/bin/env python3
"""Run the trust-zero Lean audit and require the exact standard axiom set."""

from __future__ import annotations

import os
import re
import signal
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"
AUDIT = "Erdos848/MainTheoremAxiomAudit.lean"
STANDARD_ENDPOINTS = [
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
    "erdos848PrefixClose_of_colouringCertificate",
    "GeneratedFiveMillionPrefixTrace.closeThroughFiveMillion",
    "erdos848_through_five_million",
    "erdos848_prefix_close",
    "erdos848_first_low_close",
    "erdos848_second_low_close",
    "erdos848_full_of_five_million_tail",
    "erdos848_full_of_four_range_close",
    "PrattCertificate.prime",
    "squarefree_list_prod_of_prime_nodup",
    "SquarefreeFactorCertificate.squarefree",
    "ceilDiv_mul_le_add",
    "ceilDiv_cast_le_add_one",
    "lowEvenAPCeiling_cast_le",
    "lowOddAPCeiling_cast_le",
    "twice_ceilDiv_hundred_cast_le",
    "firstLow_evenDegree_bound",
    "firstLow_oddDegree_bound",
    "secondLow_evenDegree_bound",
    "secondLow_oddDegree_bound",
    "firstLow_eightEven_arithmetic",
    "firstLow_twoOddClasses_arithmetic",
    "firstLow_oneOddClass_arithmetic",
    "secondLow_eightEven_arithmetic",
    "secondLow_twoOddClasses_arithmetic",
    "secondLow_oneOddClass_arithmetic",
    "originalProblem_of_hallStatement",
    "hallStatement_of_originalProblem",
    "erdos848HallStatement_iff_originalProblem",
    "hallResidual_subset_lowDiagonalBad",
    "hallCompletion_card_cast_le_diagonal_add_degree",
    "lowResidualParityTrichotomy",
    "firstLow_evenPivot_hall_bound",
    "secondLow_evenPivot_hall_bound",
    "lowResidualSinglePivotTrichotomy",
    "lowBaseMod4Part_cast_le",
    "firstLow_twoOddPivots_hall_bound",
    "secondLow_twoOddPivots_hall_bound",
    "firstLow_oneOddClassPivot_hall_bound",
    "secondLow_oneOddClassPivot_hall_bound",
    "firstLowHallStatement_of_kernelBounds",
    "secondLowHallStatement_of_kernelBounds",
    "erdos848FirstLowClose_of_kernelEvidence",
    "erdos848SecondLowClose_of_kernelEvidence",
    "lowSmallPrimeBadNeighbours_card_le",
    "lowSmallPrimeBadMod4Neighbours_card_le",
    "lowBaseBadNeighbours_subset_small_high",
    "lowBaseBadMod4Neighbours_subset_small_high",
    "firstLow_evenDegree_of_certificate",
    "firstLow_oddDegree_of_certificate",
    "secondLow_evenDegree_of_certificate",
    "secondLow_oddDegree_of_certificate",
    "firstLowKernelBounds_of_reducedEvidence",
    "secondLowKernelBounds_of_reducedEvidence",
    "GeneratedLowDiagonalCoverage.certificateContainsOfNotSquarefree",
    "GeneratedLowDiagonalCoverage.firstLowDiagonalBounds",
    "GeneratedLowDiagonalCoverage.secondLowDiagonalBounds",
    "erdos848FirstLowKernelEvidence_of_pure_degree",
    "erdos848SecondLowKernelEvidence_of_pure_degree",
    "erdos848FirstLowClose_of_pure_degree",
    "erdos848SecondLowClose_of_pure_degree",
    "finiteResidueCount_scaled_le",
    "PrimeIntervalProofTree.listed_eq_primesLE",
    "PrimeIntervalProofTree.primeCounting_eq",
    "GeneratedTailPrimeIntervalCoverage.primeCounting_204081",
    "GeneratedTailPrimeIntervalCoverage.primeCounting_102043",
    "successfulModFortyNineRoots_card_le_two",
    "fiveMillionPeriodicFiniteResidues_card",
    "fiveMillionPeriodicFiniteCount_le_495",
    "fiveMillionPeriodicFiniteDensity_le",
    "fiveMillionOneOddS7_finite_density_le",
    "fiveMillionOneOddS7_residue_density_le",
    "fiveMillionOneOddS7_residue_prefix_payment_le",
    "fiveMillionOddRoot7_witness_quotient",
    "fiveMillionOddRoot7_primeDelta_exact",
    "fiveMillionOddRoot7_witness_exact",
    "fiveMillionOddRoot7_witness_primeCounting_exact",
    "fiveMillionOneOddS7_budget",
    "fiveMillionOddRootProfileRows_all_N_le",
    "supportPrimeList_length_le_six",
    "fiveMillionOddRootProfile_kernel_close",
    "feasibleSupportPrefixes_complete",
    "supportPrimes_complete_through_3163",
    "fiveMillionSupport_dropLast_mem_feasiblePrefixes",
    "fiveMillionOddRootSupport_profileCase",
    "fiveMillionOddRootSupport_kernel_close",
    "GeneratedTailPrimeSquareCoverage.costTreeNode0098_cost",
    "reciprocalSquare_sum_above_le",
    "finitePrimeSquareTail47_lt",
    "finitePrimeSquareTail7_lt",
    "fiveMillionSquareTail7_kernel_close",
]
COMPUTE_ENDPOINTS = [
    "bitsValue_bits",
    "powModBits_cast",
    "powMod_cast",
    "ModularPowerCertificate.zmod_eq",
    "fiveMillionOddRoot_profile_support_bounds",
]
EXPECTED_STANDARD = "[propext, Classical.choice, Quot.sound]"
EXPECTED_COMPUTE = "[propext, Quot.sound]"
EXPECTED_BY_ENDPOINT = {
    **{endpoint: EXPECTED_STANDARD for endpoint in STANDARD_ENDPOINTS},
    **{endpoint: EXPECTED_COMPUTE for endpoint in COMPUTE_ENDPOINTS},
}


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
        ["lake", "env", "lean", "--trust=0", "-M", "6144", AUDIT],
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
        output, _ = proc.communicate(timeout=300)
    except subprocess.TimeoutExpired:
        terminate_process_tree(proc)
        proc.wait()
        raise SystemExit("[axioms:error] trust-zero audit timed out after 300 seconds")
    except KeyboardInterrupt:
        terminate_process_tree(proc)
        proc.wait()
        raise
    if proc.returncode:
        raise SystemExit(output or f"Lean audit failed with exit code {proc.returncode}")
    normalized_output = re.sub(r"\s+", " ", output)
    for endpoint, expected in EXPECTED_BY_ENDPOINT.items():
        pattern = re.compile(
            rf"'{re.escape('Erdos848.' + endpoint)}' depends on axioms: "
            rf"{re.escape(expected)}"
        )
        if pattern.search(normalized_output) is None:
            raise SystemExit(
                f"[axioms:error] missing exact audit line for {endpoint}\n{output}"
            )
    audit_records = re.findall(
        r"'[^']+' depends on axioms: \[[^\]]*\]", normalized_output
    )
    extra = [
        record
        for record in audit_records
        if not any(
            record.endswith(expected)
            for expected in set(EXPECTED_BY_ENDPOINT.values())
        )
    ]
    if extra:
        raise SystemExit("[axioms:error] unexpected axiom output:\n" + "\n".join(extra))
    print(
        f"[axioms:ok] endpoints={len(EXPECTED_BY_ENDPOINT)} "
        f"allowed={sorted(set(EXPECTED_BY_ENDPOINT.values()))}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
