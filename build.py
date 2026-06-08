from __future__ import annotations

import argparse
import json
import sys
from datetime import datetime, timezone
from math import isqrt
from pathlib import Path

ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT / "src"))

from erdos848.core import BitsetGraph, candidate_count, squarefree_sieve
from erdos848.active_credit_certificate import (
    certificate_to_jsonable as active_credit_to_json,
)
from erdos848.active_credit_certificate import active_credit_certificate
from erdos848.hall_certificate import certificate_to_jsonable as hall_to_json
from erdos848.hall_certificate import hall_certificate
from erdos848.middle_region_certificate import certificate_to_jsonable as middle_to_json
from erdos848.middle_region_certificate import middle_region_certificate
from erdos848.opposite_matching_certificate import (
    certificate_to_jsonable as opposite_matching_to_json,
)
from erdos848.opposite_matching_certificate import (
    opposite_band_matching_sparse_summary,
    opposite_matching_certificate,
    seven_offset_crt_obstruction,
    seven_offset_target_crt_obstruction,
    crt_obstruction_to_jsonable,
    sparse_summary_to_jsonable as opposite_sparse_summary_to_json,
)
from erdos848.partitioned_hall_certificate import (
    certificate_to_jsonable as partitioned_to_json,
)
from erdos848.partitioned_hall_certificate import partitioned_hall_certificate
from erdos848.problem_specs import PROBLEMS, problem327_max_set, problem727_scan
from erdos848.residue_certificate import certificate_to_jsonable as residue_to_json
from erdos848.residue_certificate import generate_residue_certificate
from erdos848.square_sieve_rectangle import (
    certificate_to_jsonable as square_sieve_pivot_cover_to_json,
)
from erdos848.square_sieve_rectangle import (
    square_sieve_nonneighbor_pivot_cover_example,
    square_sieve_intersection_decay_scan,
    square_sieve_pivot_cover_example,
    square_sieve_residual_tail_scan,
    square_sieve_singleton_budget_scan,
    square_sieve_tail_quotient_profile_scan,
    square_sieve_two_pivot_quotient_scan,
)


def exact_848_check(N: int) -> dict:
    sf = squarefree_sieve(N * N + 1)
    vertices = [a for a in range(1, N + 1) if not sf[a * a + 1]]

    def compatible(a: int, b: int) -> bool:
        return not sf[a * b + 1]

    graph = BitsetGraph(vertices, compatible)
    result = graph.max_clique()
    c7 = candidate_count(N, 7)
    c18 = candidate_count(N, 18)
    return {
        "N": N,
        "square_obstructed_vertices": len(vertices),
        "max_clique": result.value,
        "candidate_7": c7,
        "candidate_18": c18,
        "matches_candidate": result.value == max(c7, c18),
        "witness": result.vertices,
        "witness_mod25": sorted({x % 25 for x in result.vertices}),
    }


def write_json(path: Path, payload: dict) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def has_square_divisor(n: int) -> bool:
    for p in range(2, isqrt(n) + 1):
        if n % (p * p) == 0:
            return True
    return False


def run(mode: str) -> dict:
    extended = mode == "extended"
    exact_Ns = [100, 500, 1000] if not extended else [100, 500, 1000, 2000, 5000]
    hall_Ns = [100, 500] if not extended else [100, 500, 1000, 2000]
    matching_Ns = (
        [100, 500, 1000]
        if not extended
        else [100, 500, 1000, 2000, 5000, 10000, 20000]
    )
    large_sparse_matching_Ns = [] if not extended else [50000]
    partitioned_Ns = [100, 500]
    active_credit_jobs = (
        [(100, True), (500, True)]
        if not extended
        else [
            (100, True),
            (500, True),
            (1000, True),
            (2000, True),
            (5000, True),
            (6000, True),
            (10000, False),
            (20000, False),
        ]
    )
    singleton_scan_Ns = (
        [100, 500]
        if not extended
        else [100, 500, 1000, 2000, 5000]
    )
    square_sieve_skeleton_prime_profiles = [
        (2, 3),
        (2, 3, 7, 11, 13, 17, 19, 23),
    ]

    residue = residue_to_json(generate_residue_certificate([5, 13], run_prefix=extended))
    exact = [exact_848_check(N) for N in exact_Ns]
    hall = []
    middle = []
    for N in hall_Ns:
        hall.append(hall_to_json(hall_certificate(N, 7)))
        hall.append(hall_to_json(hall_certificate(N, 18)))
        middle.append(middle_to_json(middle_region_certificate(N, 7, 18)))
    partitioned = [
        partitioned_to_json(partitioned_hall_certificate(N, 7, 18))
        for N in partitioned_Ns
    ]
    active_credit = [
        active_credit_to_json(
            active_credit_certificate(N, 7, 18, index_bandwidth=3, exact_worst=exact_worst)
        )
        for N, exact_worst in active_credit_jobs
    ]
    opposite_matching = [
        opposite_matching_to_json(opposite_matching_certificate(N, 7, 18))
        for N in matching_Ns
    ]
    opposite_band_matching = [
        opposite_matching_to_json(opposite_matching_certificate(N, 7, 18, index_bandwidth=3))
        for N in matching_Ns
    ]
    opposite_band_matching_large_summaries = [
        opposite_sparse_summary_to_json(
            opposite_band_matching_sparse_summary(N, 7, 18, index_bandwidth=3)
        )
        for N in large_sparse_matching_Ns
    ]
    seven_offset_crt = crt_obstruction_to_jsonable(seven_offset_crt_obstruction())
    seven_offset_target_crt = crt_obstruction_to_jsonable(
        seven_offset_target_crt_obstruction()
    )
    square_sieve_pivot_covers = [
        square_sieve_pivot_cover_to_json(
            square_sieve_pivot_cover_example(100, 43, [32, 57])
        ),
        square_sieve_pivot_cover_to_json(
            square_sieve_pivot_cover_example(
                500,
                493,
                [7, 32, 107, 157, 207, 257, 307, 407, 457, 482],
            )
        ),
    ]
    square_sieve_pivot_covers.extend(
        square_sieve_pivot_cover_to_json(
            square_sieve_nonneighbor_pivot_cover_example(
                item["N"],
                item["observed_max_credit_deficit_witness"]
                or item["worst_credit_witness"],
            )
        )
        for item in active_credit
        if item["observed_max_credit_deficit_witness"] or item["worst_credit_witness"]
    )
    square_sieve_singleton_budget_scans = [
        square_sieve_pivot_cover_to_json(square_sieve_singleton_budget_scan(N))
        for N in singleton_scan_Ns
    ]
    square_sieve_intersection_decay_scans = [
        square_sieve_pivot_cover_to_json(
            square_sieve_intersection_decay_scan(item["N"], witness)
        )
        for item in active_credit
        for witness in [
            item["observed_max_credit_deficit_witness"]
            or item["worst_credit_witness"]
        ]
        if item["exact_worst"] and len(witness) >= 2
    ]
    square_sieve_residual_tail_scans = [
        square_sieve_pivot_cover_to_json(
            square_sieve_residual_tail_scan(N, skeleton_primes=skeleton_primes)
        )
        for N in singleton_scan_Ns
        for skeleton_primes in square_sieve_skeleton_prime_profiles
    ]
    square_sieve_tail_quotient_profile_scans = [
        square_sieve_pivot_cover_to_json(
            square_sieve_tail_quotient_profile_scan(
                N, skeleton_primes=skeleton_primes
            )
        )
        for N in singleton_scan_Ns
        for skeleton_primes in square_sieve_skeleton_prime_profiles
    ]
    square_sieve_two_pivot_quotient_scans = [
        square_sieve_pivot_cover_to_json(
            square_sieve_two_pivot_quotient_scan(
                item["N"],
                witness,
                skeleton_primes=square_sieve_skeleton_prime_profiles[-1],
            )
        )
        for item in active_credit
        for witness in [
            item["observed_max_credit_deficit_witness"]
            or item["worst_credit_witness"]
        ]
        if item["exact_worst"] and len(witness) >= 2
    ]

    refs = {
        "327": {
            "spec": PROBLEMS[327].__dict__,
            "small_checks": [problem327_max_set(60, 1), problem327_max_set(60, 2)],
        },
        "727": {
            "spec": PROBLEMS[727].__dict__,
            "small_checks": [problem727_scan(1, 200), problem727_scan(2, 200)],
        },
    }

    payload = {
        "schema": "erdos-848-squarefree-internal.build.v1",
        "generated_at": datetime.now(timezone.utc).isoformat(),
        "mode": mode,
        "primary_problem": PROBLEMS[848].__dict__,
        "residue_certificate_5_13": residue,
        "exact_848_checks": exact,
        "hall_checks": hall,
        "middle_region_checks": middle,
        "opposite_matching_checks": opposite_matching,
        "opposite_band_matching_checks": opposite_band_matching,
        "opposite_band_matching_large_summaries": opposite_band_matching_large_summaries,
        "seven_offset_crt_obstruction": seven_offset_crt,
        "seven_offset_target_crt_obstruction": seven_offset_target_crt,
        "square_sieve_pivot_covers": square_sieve_pivot_covers,
        "square_sieve_singleton_budget_scans": square_sieve_singleton_budget_scans,
        "square_sieve_intersection_decay_scans": square_sieve_intersection_decay_scans,
        "square_sieve_residual_tail_scans": square_sieve_residual_tail_scans,
        "square_sieve_tail_quotient_profile_scans": (
            square_sieve_tail_quotient_profile_scans
        ),
        "square_sieve_two_pivot_quotient_scans": square_sieve_two_pivot_quotient_scans,
        "partitioned_hall_checks": partitioned,
        "active_credit_checks": active_credit,
        "reference_problem_templates": refs,
    }

    write_json(ROOT / "data" / "certificates" / f"residue_5_13_{mode}.json", residue)
    write_json(ROOT / "data" / "results" / f"build_{mode}.json", payload)
    write_json(ROOT / "data" / "results" / "latest.json", payload)
    return payload


def assert_gate(payload: dict) -> None:
    code_names = ["neg86", "neg61", "neg36", "neg11", "pos14", "pos39", "pos64"]
    def source_count(n: int) -> int:
        return 0 if n < 18 else (n - 18) // 25 + 1

    residue = payload["residue_certificate_5_13"]
    assert residue["max_clique"] == residue["modulus"] // 25
    assert residue["outside_pm5_max_clique"] == 23
    if residue["prefix_checked"]:
        assert residue["prefix_max_excess"] <= 0
    for item in payload["exact_848_checks"]:
        assert item["matches_candidate"], item
    for item in payload["hall_checks"]:
        assert item["worst_defect"] >= 0, item
    for item in payload["middle_region_checks"]:
        assert item["strict_worst_defect"] >= 0, item
    for item in payload["opposite_matching_checks"]:
        assert item["opposite_size"] == source_count(item["N"]), item
        assert item["perfect"], item
        assert item["matched_count"] == item["opposite_size"], item
        assert len(item["source_index_matching"]) == item["matched_count"], item
        target_by_source = {source_index: target_index for source_index, target_index, _shift in item["source_index_matching"]}
        for source_index, target_index, shift in item["source_index_matching"]:
            assert target_index - source_index == shift, item
            assert 25 * target_index + 7 == 25 * source_index + 18 + 25 * shift - 11, item
            assert 25 * target_index + 7 <= item["N"], item
            for other_source in range(source_index + 1, min(item["opposite_size"], source_index + 7)):
                assert target_by_source[other_source] != target_index, item
    for item in payload["opposite_band_matching_checks"]:
        assert item["opposite_size"] == source_count(item["N"]), item
        assert item["perfect"], item
        assert item["matched_count"] == item["opposite_size"], item
        assert item["max_index_gap"] <= 3, item
        assert item["max_value_gap"] <= 86, item
        assert item["allowed_value_offsets"] == [-86, -61, -36, -11, 14, 39, 64], item
        assert set(item["value_offset_counts"]) <= set(item["allowed_value_offsets"]), item
        assert len(item["source_index_matching"]) == item["matched_count"], item
        assert len(item["typed_source_index_codes"]) == item["matched_count"], item
        assert item["source_index_target_valid_count"] == item["matched_count"], item
        assert item["source_index_target_valid_failures"] == [], item
        assert item["period6_template"] == [0, 2, -1, -1, 1, -1], item
        assert item["period6_template_code_names"] == [
            code_names[shift + 3] for shift in item["period6_template"]
        ], item
        assert item["period6_template_invalid_count"] <= item["period6_matching_deviation_count"], item
        assert item["period6_repair_window_count"] <= item["period6_matching_deviation_count"], item
        assert item["period6_repair_window_count"] == len(item["period6_repair_code_windows"]), item
        assert item["period6_repair_window_count"] == len(item["period6_repair_code_name_windows"]), item
        assert sum(len(codes) for _start, codes in item["period6_repair_code_windows"]) == item["period6_matching_deviation_count"], item
        assert max(
            (len(codes) for _start, codes in item["period6_repair_code_windows"]),
            default=0,
        ) == item["period6_repair_window_max_length"], item
        code_by_source = dict(item["typed_source_index_codes"])
        target_by_source = {source_index: target_index for source_index, target_index, _shift in item["source_index_matching"]}
        reconstructed_codes = {
            source_index: item["period6_template"][source_index % len(item["period6_template"])] + 3
            for source_index in range(item["opposite_size"])
        }
        for (start, codes), (name_start, names) in zip(
            item["period6_repair_code_windows"],
            item["period6_repair_code_name_windows"],
        ):
            assert start == name_start, item
            assert names == [code_names[code] for code in codes], item
            assert codes, item
            for offset, code in enumerate(codes):
                assert 0 <= code <= 6, item
                reconstructed_codes[start + offset] = code
        for source_index, target_index, shift in item["source_index_matching"]:
            assert target_index - source_index == shift, item
            assert -3 <= shift <= 3, item
            assert 25 * target_index + 7 == 25 * source_index + 18 + 25 * shift - 11, item
            assert 25 * target_index + 7 <= item["N"], item
            for other_source in range(source_index + 1, min(item["opposite_size"], source_index + 7)):
                assert target_by_source[other_source] != target_index, item
            assert code_by_source[source_index] == shift + 3, item
            assert reconstructed_codes[source_index] == shift + 3, item
    for item in payload["opposite_band_matching_large_summaries"]:
        assert item["opposite_size"] == source_count(item["N"]), item
        assert item["perfect"], item
        assert item["matched_count"] == item["opposite_size"], item
        assert item["max_index_gap"] <= 3, item
        assert item["max_value_gap"] <= 86, item
        assert item["allowed_value_offsets"] == [-86, -61, -36, -11, 14, 39, 64], item
        assert set(item["value_offset_counts"]) <= set(item["allowed_value_offsets"]), item
        assert item["source_index_target_valid_count"] == item["matched_count"], item
        assert item["source_index_target_valid_failures"] == [], item
        assert item["period6_template"] == [0, 2, -1, -1, 1, -1], item
        assert item["period6_template_code_names"] == [
            code_names[shift + 3] for shift in item["period6_template"]
        ], item
        assert item["period6_template_invalid_count"] <= item["period6_matching_deviation_count"], item
        assert item["period6_repair_window_count"] <= item["period6_matching_deviation_count"], item
        assert item["period6_repair_window_count"] == len(item["period6_repair_code_windows"]), item
        assert item["period6_repair_window_count"] == len(item["period6_repair_code_name_windows"]), item
        assert sum(len(codes) for _start, codes in item["period6_repair_code_windows"]) == item["period6_matching_deviation_count"], item
        assert max(
            (len(codes) for _start, codes in item["period6_repair_code_windows"]),
            default=0,
        ) == item["period6_repair_window_max_length"], item
        for (start, codes), (name_start, names) in zip(
            item["period6_repair_code_windows"],
            item["period6_repair_code_name_windows"],
        ):
            assert start == name_start, item
            assert names == [code_names[code] for code in codes], item
            assert codes, item
            for code in codes:
                assert 0 <= code <= 6, item
        assert item["sparse_squarefree_checks"] > 0, item
        assert item["stores_full_matching"] is False, item
    obstruction = payload["seven_offset_crt_obstruction"]
    assert obstruction["source_index"] == 595_423_111, obstruction
    assert obstruction["source_value"] == 25 * obstruction["source_index"] + 18, obstruction
    assert obstruction["endpoint_N"] == 25 * (obstruction["source_index"] + 3) + 7, obstruction
    assert len(obstruction["shift_square_witnesses"]) == 7, obstruction
    assert sorted(w[0] for w in obstruction["shift_square_witnesses"]) == list(range(-3, 4)), obstruction
    for shift, target_index, target_value, square_prime, quotient in obstruction["shift_square_witnesses"]:
        assert target_index == obstruction["source_index"] + shift, obstruction
        assert target_value == 25 * target_index + 7, obstruction
        assert 1 <= target_value <= obstruction["endpoint_N"], obstruction
        assert target_value * obstruction["source_value"] + 1 == square_prime * square_prime * quotient, obstruction
    target_obstruction = payload["seven_offset_target_crt_obstruction"]
    assert target_obstruction["target_index"] == 10_616_429_230_084, target_obstruction
    assert target_obstruction["target_value"] == 25 * target_obstruction["target_index"] + 7, target_obstruction
    assert target_obstruction["endpoint_N"] == 25 * (target_obstruction["target_index"] + 3) + 18, target_obstruction
    assert len(target_obstruction["shift_square_witnesses"]) == 7, target_obstruction
    assert sorted(w[0] for w in target_obstruction["shift_square_witnesses"]) == list(range(-3, 4)), target_obstruction
    for shift, source_index, source_value, square_prime, quotient in target_obstruction["shift_square_witnesses"]:
        assert source_index == target_obstruction["target_index"] + shift, target_obstruction
        assert source_value == 25 * source_index + 18, target_obstruction
        assert 1 <= source_value <= target_obstruction["endpoint_N"], target_obstruction
        assert target_obstruction["target_value"] * source_value + 1 == square_prime * square_prime * quotient, target_obstruction
    for item in payload["square_sieve_pivot_covers"]:
        assert item["outside_size"] >= 1, item
        assert len(item["outside_witness"]) == item["outside_size"], item
        assert item["pivot"] in item["outside_witness"], item
        assert all(
            outside % 25 != item["base_residue"] % 25
            for outside in item["outside_witness"]
        ), item
        assert item["target_mode"] in {"manual_subset", "nonneighbor_exact"}, item
        assert item["rectangle_budget_holds"], item
        assert item["outside_size"] + item["cover_budget"] <= item["candidate_count"], item
        assert item["prime_cover_budget"] == item["cover_budget"], item
        assert item["prime_cover_budget"] == sum(
            item["N"] // (25 * p * p) + 1
            for p, _residue in item["prime_residue_classes"]
        ), item
        assert all(p != 5 for p, _residue in item["prime_residue_classes"]), item
        assert item["cover_budget"] == sum(
            item["N"] // modulus + 1
            for modulus, _residue in item["residue_classes"]
        ), item
        assert {
            (25 * p * p, residue)
            for p, residue in item["prime_residue_classes"]
        } == set(map(tuple, item["residue_classes"])), item
        classes = set(map(tuple, item["residue_classes"]))
        prime_classes = set(map(tuple, item["prime_residue_classes"]))
        if item["targets"]:
            assert classes, item
        if item["target_mode"] == "nonneighbor_exact":
            exact_targets = [
                a
                for a in range(1, item["N"] + 1)
                if a % 25 == item["base_residue"] % 25
                and all(
                    has_square_divisor(a * outside + 1)
                    for outside in item["outside_witness"]
                )
            ]
            assert exact_targets == item["targets"], item
        assert len(item["target_witnesses"]) == len(item["targets"]), item
        for target in item["targets"]:
            for outside in item["outside_witness"]:
                assert has_square_divisor(target * outside + 1), item
        for target, p, p2, modulus, residue in item["target_witnesses"]:
            assert target in item["targets"], item
            assert 1 <= target <= item["N"], item
            assert target % 25 == item["base_residue"] % 25, item
            assert p2 == p * p, item
            assert p != 5, item
            assert modulus == 25 * p2, item
            assert (modulus, residue) in classes, item
            assert (p, residue) in prime_classes, item
            assert target % modulus == residue, item
            assert (target * item["pivot"] + 1) % p2 == 0, item
    for item in payload["square_sieve_singleton_budget_scans"]:
        assert item["checked_pivots"] >= 0, item
        assert item["candidate_count"] == candidate_count(item["N"], item["base_residue"]), item
        assert item["worst_slack"] >= 0, item
        assert item["worst_prime_cover_budget"] + 1 <= item["candidate_count"], item
        if item["checked_pivots"] > 0:
            assert item["worst_pivot"] % 25 != item["base_residue"] % 25, item
            assert item["worst_target_count"] >= 0, item
            assert item["worst_prime_class_count"] >= 0, item
            assert item["worst_prime_cover_budget"] >= item["worst_prime_class_count"], item
    for item in payload["square_sieve_residual_tail_scans"]:
        assert item["checked_pivots"] >= 0, item
        assert item["candidate_count"] == candidate_count(item["N"], item["base_residue"]), item
        assert all(p >= 2 and p != 5 for p in item["skeleton_primes"]), item
        assert len(set(item["skeleton_primes"])) == len(item["skeleton_primes"]), item
        assert item["worst_tail_slack"] >= 0, item
        assert item["worst_total_prime_cover_budget"] == (
            item["worst_skeleton_prime_cover_budget"] +
            item["worst_tail_prime_cover_budget"]
        ), item
        assert item["worst_total_prime_cover_budget"] + 1 <= item["candidate_count"], item
        assert item["worst_total_target_count"] >= item["worst_skeleton_target_count"], item
        assert item["worst_total_target_count"] >= item["worst_tail_target_count"], item
        assert item["worst_skeleton_prime_cover_budget"] == sum(
            item["N"] // (25 * p * p) + 1
            for p, _residue in item["worst_skeleton_prime_classes"]
        ), item
        assert item["worst_tail_prime_cover_budget"] == sum(
            item["N"] // (25 * p * p) + 1
            for p, _residue in item["worst_tail_prime_classes"]
        ), item
        assert item["worst_skeleton_prime_class_count"] == len(
            item["worst_skeleton_prime_classes"]
        ), item
        assert item["worst_tail_prime_class_count"] == len(
            item["worst_tail_prime_classes"]
        ), item
        assert all(
            p in item["skeleton_primes"]
            for p, _residue in item["worst_skeleton_prime_classes"]
        ), item
        assert all(
            p not in item["skeleton_primes"] and p != 5
            for p, _residue in item["worst_tail_prime_classes"]
        ), item
        if item["checked_pivots"] > 0:
            assert item["worst_pivot"] % 25 != item["base_residue"] % 25, item
    for item in payload["square_sieve_tail_quotient_profile_scans"]:
        assert item["checked_pivots"] >= 0, item
        assert item["candidate_count"] == candidate_count(item["N"], item["base_residue"]), item
        assert all(p >= 2 and p != 5 for p in item["skeleton_primes"]), item
        assert len(set(item["skeleton_primes"])) == len(item["skeleton_primes"]), item
        assert item["worst_tail_slack"] >= 0, item
        assert item["worst_tail_prime_cover_budget"] == sum(
            item["N"] // (25 * p * p) + 1
            for p, _residue in item["worst_tail_prime_classes"]
        ), item
        assert item["worst_tail_prime_class_count"] == len(
            item["worst_tail_prime_classes"]
        ), item
        assert all(
            p not in item["skeleton_primes"] and p != 5
            for p, _residue in item["worst_tail_prime_classes"]
        ), item
        assert len(item["worst_tail_prime_quotient_witnesses"]) == item[
            "worst_tail_target_count"
        ], item
        if item["worst_tail_target_count"] == 0:
            assert item["worst_tail_min_prime"] == 0, item
            assert item["worst_tail_max_prime"] == 0, item
            assert item["worst_tail_min_quotient"] == 0, item
            assert item["worst_tail_max_quotient"] == 0, item
            assert item["worst_tail_prime_quotient_witnesses"] == [], item
        else:
            assert item["worst_tail_min_prime"] >= 2, item
            assert item["worst_tail_max_prime"] >= item["worst_tail_min_prime"], item
            assert item["worst_tail_min_quotient"] >= 1, item
            assert item["worst_tail_max_quotient"] >= item["worst_tail_min_quotient"], item
        if item["checked_pivots"] > 0:
            assert item["worst_pivot"] % 25 != item["base_residue"] % 25, item
        tail_classes = set(tuple(cls) for cls in item["worst_tail_prime_classes"])
        for target, p, quotient, residue in item[
            "worst_tail_prime_quotient_witnesses"
        ]:
            assert 1 <= target <= item["N"], item
            assert target % 25 == item["base_residue"] % 25, item
            assert p not in item["skeleton_primes"] and p != 5, item
            assert quotient >= 1, item
            assert (p, residue) in tail_classes, item
            assert target * item["worst_pivot"] + 1 == p * p * quotient, item
    for item in payload["square_sieve_two_pivot_quotient_scans"]:
        assert len(item["outside_witness"]) >= 2, item
        assert item["outside_size"] == len(item["outside_witness"]), item
        assert item["pair_count"] == item["outside_size"] * (item["outside_size"] - 1), item
        assert item["candidate_count"] == candidate_count(item["N"], item["base_residue"]), item
        assert all(p >= 2 and p != 5 for p in item["skeleton_primes"]), item
        assert len(set(item["skeleton_primes"])) == len(item["skeleton_primes"]), item
        assert item["best_pair"][0] in item["outside_witness"], item
        assert item["best_pair"][1] in item["outside_witness"], item
        assert item["best_pair"][0] != item["best_pair"][1], item
        assert item["best_skeleton_prime_cover_budget"] == sum(
            item["N"] // (25 * p * p) + 1
            for p, _residue in item["best_skeleton_prime_classes"]
        ), item
        assert item["best_tail_prime_cover_budget"] == sum(
            item["N"] // (25 * p * p) + 1
            for p, _residue in item["best_tail_prime_classes"]
        ), item
        assert item["best_total_prime_cover_budget"] == (
            item["best_skeleton_prime_cover_budget"] +
            item["best_tail_prime_cover_budget"]
        ), item
        assert item["best_pair_rectangle_slack"] == (
            item["candidate_count"] - 2 - item["best_total_prime_cover_budget"]
        ), item
        assert item["best_full_rectangle_slack"] == (
            item["candidate_count"] -
            item["outside_size"] -
            item["best_total_prime_cover_budget"]
        ), item
        assert item["best_pair_rectangle_slack"] >= item["best_full_rectangle_slack"], item
        assert item["best_pair_target_count"] >= item["best_skeleton_target_count"], item
        assert item["best_pair_target_count"] >= item["best_tail_target_count"], item
        assert len(item["best_tail_prime_quotient_witnesses"]) == item[
            "best_tail_target_count"
        ], item
        assert all(
            p in item["skeleton_primes"]
            for p, _residue in item["best_skeleton_prime_classes"]
        ), item
        assert all(
            p not in item["skeleton_primes"] and p != 5
            for p, _residue in item["best_tail_prime_classes"]
        ), item
        if item["best_tail_target_count"] == 0:
            assert item["best_tail_min_prime"] == 0, item
            assert item["best_tail_max_prime"] == 0, item
            assert item["best_tail_min_quotient"] == 0, item
            assert item["best_tail_max_quotient"] == 0, item
        else:
            assert item["best_tail_min_prime"] >= 2, item
            assert item["best_tail_max_prime"] >= item["best_tail_min_prime"], item
            assert item["best_tail_min_quotient"] >= 1, item
            assert item["best_tail_max_quotient"] >= item["best_tail_min_quotient"], item
        tail_classes = set(tuple(cls) for cls in item["best_tail_prime_classes"])
        pivot = item["best_pair"][0]
        other = item["best_pair"][1]
        for target, p, quotient, residue in item[
            "best_tail_prime_quotient_witnesses"
        ]:
            assert 1 <= target <= item["N"], item
            assert target % 25 == item["base_residue"] % 25, item
            assert p not in item["skeleton_primes"] and p != 5, item
            assert quotient >= 1, item
            assert (p, residue) in tail_classes, item
            assert target * pivot + 1 == p * p * quotient, item
            assert has_square_divisor(target * other + 1), item
    for item in payload["square_sieve_intersection_decay_scans"]:
        assert item["outside_witness"], item
        assert all(
            outside % 25 != item["base_residue"] % 25
            for outside in item["outside_witness"]
        ), item
        assert item["all_target_counts_nonincreasing"], item
        assert item["all_prime_budgets_nonincreasing"], item
        assert len(item["steps"]) == len(item["outside_witness"]), item
        previous_target_count = None
        previous_prime_budget = None
        for step in item["steps"]:
            assert 1 <= step["prefix_len"] <= len(item["outside_witness"]), item
            assert step["pivot"] in item["outside_witness"][: step["prefix_len"]], item
            assert step["target_count"] >= 0, item
            assert step["prime_class_count"] >= 0, item
            assert step["prime_cover_budget"] >= step["prime_class_count"], item
            assert step["rectangle_slack"] >= 0, item
            assert (
                step["prefix_len"] + step["prime_cover_budget"]
                <= candidate_count(item["N"], item["base_residue"])
            ), item
            if previous_target_count is None:
                assert step["target_drop"] == 0, item
                assert step["budget_drop"] == 0, item
            else:
                assert step["target_drop"] == previous_target_count - step["target_count"], item
                assert step["budget_drop"] == previous_prime_budget - step["prime_cover_budget"], item
                assert step["target_drop"] >= 0, item
                assert step["budget_drop"] >= 0, item
            previous_target_count = step["target_count"]
            previous_prime_budget = step["prime_cover_budget"]
    for item in payload["partitioned_hall_checks"]:
        assert item["worst_opposite_defect"] >= 0, item
        assert item["worst_middle_defect"] >= 0, item
        assert item["worst_union_defect"] >= 0, item
        assert item["worst_incremental_defect"] >= 0, item
        assert item["worst_incremental_with_middle_defect"] >= 0, item
    for item in payload["active_credit_checks"]:
        assert item["capacity_obligation"] == "reserve_plus_new_middle", item
        assert item["search_order"] == "middle_first_then_opposite", item
        assert item["search_exhausted"], item
        assert item["outside_opposite_vertices"] + item["outside_middle_vertices"] == item["outside_vertices"], item
        assert item["search_nodes"] > 0, item
        assert item["search_max_depth"] <= item["outside_vertices"], item
        assert item["search_pruned_no_middle_tail"] >= 0, item
        assert item["search_pruned_no_middle_tail"] <= item["search_nodes"], item
        assert item["search_pruned_defect_bound"] >= 0, item
        assert item["search_pruned_defect_bound"] <= item["search_nodes"], item
        assert item["search_pruned_nonnegative_bound"] >= 0, item
        assert item["search_pruned_nonnegative_bound"] <= item["search_nodes"], item
        if item["exact_worst"]:
            assert item["search_pruned_nonnegative_bound"] == 0, item
        else:
            assert item["search_pruned_nonnegative_bound"] > 0, item
        assert item["worst_credit_defect"] >= 0, item
        assert item["worst_credit_reserve_new_disjoint"], item
        assert item["worst_credit_split_pool_size"] == (
            item["worst_credit_reserve_size"] + item["worst_credit_new_middle_size"]
        ), item
        assert item["worst_credit_split_pool_size"] == item["worst_credit_pool_size"], item
        assert item["worst_credit_deficit"] == max(
            0,
            item["worst_credit_middle_size"] - item["worst_credit_new_middle_size"],
        ), item
        assert item["worst_credit_deficit_surplus"] == (
            item["worst_credit_reserve_size"] - item["worst_credit_deficit"]
        ), item
        assert item["worst_credit_deficit_capacity_holds"], item
        assert item["worst_credit_deficit_reserve_dominance_holds"], item
        assert item["worst_credit_deficit_reserve_dominance_holds"] == (
            item["worst_credit_middle_size"] <=
            item["worst_credit_new_middle_size"] + item["worst_credit_reserve_size"]
        ), item
        assert item["worst_credit_deficit_surplus"] >= 0, item
        assert item["worst_credit_deficit_allocation_valid"], item
        assert item["worst_credit_deficit_allocation_additive_count_valid"], item
        assert item["worst_credit_deficit_allocation_count_upper_valid"], item
        assert item["worst_credit_deficit_allocation_reserve_prefix"], item
        assert item["worst_credit_deficit_allocation_prefix_reserve_valid"], item
        assert item["worst_credit_deficit_allocation_reserve_lower_bound_valid"], item
        assert item["worst_credit_deficit_allocation_seeded"], item
        assert len(item["worst_credit_deficit_allocation_seed_keys"]) == item[
            "worst_credit_deficit"
        ], item
        assert item["worst_credit_deficit_allocation_seed_keys_prefix_indexed"], item
        assert item[
            "worst_credit_deficit_allocation_seed_keys_prefix_injective"
        ], item
        assert item[
            "worst_credit_deficit_allocation_seed_keys_strictly_increasing"
        ], item
        assert item["worst_credit_deficit_allocation_seed_keys_consecutive"], item
        assert item[
            "worst_credit_deficit_allocation_seed_strict_middle_valid"
        ], item
        assert item["worst_credit_deficit_allocation_exact_prefix_pairs"], item
        assert item["worst_credit_deficit_allocation_prefix_pairs_complete"], item
        assert item["worst_credit_deficit_allocation_prefix_pairs_ordered"], item
        assert item["worst_credit_deficit_allocation_generated_prefix_pairs"], item
        assert item["worst_credit_deficit_allocation_reserve_witness_valid"], item
        assert item[
            "worst_credit_deficit_allocation_reserve_witness_source_indexed"
        ], item
        assert item[
            "worst_credit_deficit_allocation_reserve_witness_prefix_indexed"
        ], item
        assert item[
            "worst_credit_deficit_allocation_source_index_no_image_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_shift_target_no_image_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_mate_target_no_image_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_mate_target_lower_bound_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_mate_source_index_lower_bound_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_target_prefix_box_bound_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_target_prefix_bound_from_seed_box_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_last_target_upper_bound_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_prefix_witness_edge_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_indexed_source_witness_membership_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_exists_source_witness_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_opposite_witness_valid"
        ], item
        assert item[
            "worst_credit_deficit_allocation_opposite_witness_source_indexed"
        ], item
        assert len(item["worst_credit_deficit_allocation_reserve_witnesses"]) == item[
            "worst_credit_deficit"
        ], item
        assert len(item["worst_credit_deficit_allocation_reserve_witness_indices"]) == item[
            "worst_credit_deficit"
        ], item
        assert all(
            witness == 25 * index + 18
            for witness, index in zip(
                item["worst_credit_deficit_allocation_reserve_witnesses"],
                item["worst_credit_deficit_allocation_reserve_witness_indices"],
            )
        ), item
        assert len(item["worst_credit_deficit_allocation_pairs"]) == item[
            "worst_credit_deficit"
        ], item
        assert len({pay for _middle, pay in item["worst_credit_deficit_allocation_pairs"]}) == item[
            "worst_credit_deficit"
        ], item
        assert item["worst_credit_required_reserve_slack"] == max(
            0,
            item["worst_credit_middle_size"] - item["worst_credit_new_middle_size"],
        ), item
        assert item["worst_credit_required_reserve_slack"] == item["worst_credit_deficit"], item
        assert item["worst_credit_reserve_slack_surplus"] == (
            item["worst_credit_reserve_size"] -
            item["worst_credit_required_reserve_slack"]
        ), item
        assert item["worst_credit_reserve_slack_surplus"] == item[
            "worst_credit_deficit_surplus"
        ], item
        assert item["worst_credit_slack_capacity_holds"], item
        assert item["worst_credit_reserve_slack_surplus"] >= 0, item
        assert sum(item["worst_credit_witness_residue_counts"].values()) == len(
            item["worst_credit_witness"]
        ), item
        assert item["observed_positive_deficit_nodes"] >= 0, item
        assert item["observed_positive_deficit_nodes"] <= item["search_nodes"], item
        assert item["observed_max_credit_deficit"] >= 0, item
        assert item["observed_deficit_pressure_complete"] == item["exact_worst"], item
        if item["observed_positive_deficit_nodes"] == 0:
            assert item["observed_max_credit_deficit"] == 0, item
            assert item["observed_max_credit_deficit_witness"] == [], item
            assert item["observed_max_credit_deficit_residue_counts"] == {}, item
        else:
            assert item["observed_max_credit_deficit"] > 0, item
            assert item["observed_max_credit_deficit_surplus"] == (
                item["observed_max_credit_deficit_reserve_size"] -
                item["observed_max_credit_deficit"]
            ), item
            assert item["observed_max_credit_deficit_reserve_dominance_holds"], item
            assert item["observed_max_credit_deficit_reserve_dominance_holds"] == (
                item["observed_max_credit_deficit_middle_size"] <=
                item["observed_max_credit_deficit_new_middle_size"] +
                item["observed_max_credit_deficit_reserve_size"]
            ), item
            assert len(item["observed_max_credit_deficit_middle_vertices"]) == item[
                "observed_max_credit_deficit_middle_size"
            ], item
            assert sum(item["observed_max_credit_deficit_middle_mod169_counts"].values()) == item[
                "observed_max_credit_deficit_middle_size"
            ], item
            if item["observed_max_credit_deficit_middle_size"] <= 1:
                assert item["observed_max_credit_deficit_middle_step_gcd"] == 0, item
            else:
                assert item["observed_max_credit_deficit_middle_step_gcd"] > 0, item
            assert item["observed_max_credit_deficit_allocation_valid"], item
            assert item[
                "observed_max_credit_deficit_allocation_additive_count_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_count_upper_valid"
            ], item
            assert item["observed_max_credit_deficit_allocation_reserve_prefix"], item
            assert item[
                "observed_max_credit_deficit_allocation_prefix_reserve_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_reserve_lower_bound_valid"
            ], item
            assert item["observed_max_credit_deficit_allocation_seeded"], item
            assert len(item["observed_max_credit_deficit_allocation_seed_keys"]) == item[
                "observed_max_credit_deficit"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_seed_keys_prefix_indexed"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_seed_keys_prefix_injective"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_seed_keys_strictly_increasing"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_seed_keys_consecutive"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_seed_strict_middle_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_exact_prefix_pairs"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_prefix_pairs_complete"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_prefix_pairs_ordered"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_generated_prefix_pairs"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_reserve_witness_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_reserve_witness_source_indexed"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_reserve_witness_prefix_indexed"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_source_index_no_image_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_shift_target_no_image_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_mate_target_no_image_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_mate_target_lower_bound_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_mate_source_index_lower_bound_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_target_prefix_box_bound_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_target_prefix_bound_from_seed_box_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_last_target_upper_bound_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_prefix_witness_edge_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_indexed_source_witness_membership_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_exists_source_witness_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_opposite_witness_valid"
            ], item
            assert item[
                "observed_max_credit_deficit_allocation_opposite_witness_source_indexed"
            ], item
            assert len(
                item["observed_max_credit_deficit_allocation_reserve_witnesses"]
            ) == item["observed_max_credit_deficit"], item
            assert len(
                item["observed_max_credit_deficit_allocation_reserve_witness_indices"]
            ) == item["observed_max_credit_deficit"], item
            assert all(
                witness == 25 * index + 18
                for witness, index in zip(
                    item["observed_max_credit_deficit_allocation_reserve_witnesses"],
                    item["observed_max_credit_deficit_allocation_reserve_witness_indices"],
                )
            ), item
            assert len(item["observed_max_credit_deficit_allocation_pairs"]) == item[
                "observed_max_credit_deficit"
            ], item
            assert len(
                {pay for _middle, pay in item["observed_max_credit_deficit_allocation_pairs"]}
            ) == item["observed_max_credit_deficit"], item
            assert item["observed_max_credit_deficit"] == max(
                0,
                item["observed_max_credit_deficit_middle_size"] -
                item["observed_max_credit_deficit_new_middle_size"],
            ), item
            assert sum(item["observed_max_credit_deficit_residue_counts"].values()) == len(
                item["observed_max_credit_deficit_witness"]
            ), item
        if item["worst_credit_split_pool_size"] == 0:
            assert item["worst_credit_split_mode"] == "empty", item
        elif item["worst_credit_reserve_size"] == 0:
            assert item["worst_credit_split_mode"] == "new_middle_only", item
        elif item["worst_credit_new_middle_size"] == 0:
            assert item["worst_credit_split_mode"] == "reserve_only", item
        else:
            assert item["worst_credit_split_mode"] == "mixed", item
        assert item["worst_credit_pool_size"] >= item["worst_credit_middle_size"], item
        assert len(item["worst_credit_matching"]) == item["worst_credit_middle_size"], item


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--mode", choices=["smoke", "extended"], default="smoke")
    args = parser.parse_args()
    payload = run(args.mode)
    assert_gate(payload)
    print(f"OK mode={args.mode}")
    print(f"  residue max clique: {payload['residue_certificate_5_13']['max_clique']}")
    print(f"  exact checks: {[x['N'] for x in payload['exact_848_checks']]}")
    print(f"  hall checks: {[(x['N'], x['base_residue'], x['worst_defect']) for x in payload['hall_checks']]}")
    print(
        "  middle checks: "
        f"{[(x['N'], x['strict_vertices'], x['strict_worst_defect']) for x in payload['middle_region_checks']]}"
    )
    print(
        "  opposite matching checks: "
        f"{[(x['N'], x['opposite_size'], x['matched_count'], x['min_degree']) for x in payload['opposite_matching_checks']]}"
    )
    print(
        "  opposite band matching checks: "
        f"{[(x['N'], x['opposite_size'], x['matched_count'], x['min_degree'], x['max_value_gap']) for x in payload['opposite_band_matching_checks']]}"
    )
    print(
        "  opposite band large summaries: "
        f"{[(x['N'], x['opposite_size'], x['matched_count'], x['min_degree'], x['max_value_gap'], x['sparse_squarefree_checks']) for x in payload['opposite_band_matching_large_summaries']]}"
    )
    obstruction = payload["seven_offset_crt_obstruction"]
    print(
        "  seven-offset CRT obstruction: "
        f"{(obstruction['source_index'], obstruction['source_value'], obstruction['endpoint_N'], [(x[0], x[3]) for x in obstruction['shift_square_witnesses']])}"
    )
    target_obstruction = payload["seven_offset_target_crt_obstruction"]
    print(
        "  seven-offset target CRT obstruction: "
        f"{(target_obstruction['target_index'], target_obstruction['target_value'], target_obstruction['endpoint_N'], [(x[0], x[3]) for x in target_obstruction['shift_square_witnesses']])}"
    )
    print(
        "  partitioned capacity checks: "
        f"{[(x['N'], x['worst_opposite_defect'], x['worst_middle_defect'], x['worst_new_middle_defect'], x['worst_incremental_defect'], x['worst_incremental_with_middle_defect']) for x in payload['partitioned_hall_checks']]}"
    )
    print(
        "  square-sieve pivot covers: "
        f"{[(x['N'], x['outside_size'], len(x['targets']), x['pivot'], len(x['prime_residue_classes']), x['prime_cover_budget'], x['candidate_count']) for x in payload['square_sieve_pivot_covers']]}"
    )
    print(
        "  square-sieve singleton budget scans: "
        f"{[(x['N'], x['checked_pivots'], x['worst_slack'], x['worst_pivot'], x['worst_target_count'], x['worst_prime_class_count'], x['worst_prime_cover_budget']) for x in payload['square_sieve_singleton_budget_scans']]}"
    )
    print(
        "  square-sieve residual tail scans: "
        f"{[(x['N'], x['checked_pivots'], x['skeleton_primes'], x['worst_tail_slack'], x['worst_pivot'], x['worst_skeleton_target_count'], x['worst_tail_target_count'], x['worst_skeleton_prime_cover_budget'], x['worst_tail_prime_cover_budget']) for x in payload['square_sieve_residual_tail_scans']]}"
    )
    print(
        "  square-sieve tail quotient profiles: "
        f"{[(x['N'], x['skeleton_primes'], x['worst_tail_target_count'], x['worst_tail_prime_cover_budget'], x['worst_tail_min_prime'], x['worst_tail_max_prime'], x['worst_tail_min_quotient'], x['worst_tail_max_quotient']) for x in payload['square_sieve_tail_quotient_profile_scans']]}"
    )
    print(
        "  square-sieve two-pivot quotient scans: "
        f"{[(x['N'], x['outside_size'], x['best_pair'], x['best_pair_target_count'], x['best_skeleton_target_count'], x['best_tail_target_count'], x['best_total_prime_cover_budget'], x['best_pair_rectangle_slack'], x['best_full_rectangle_slack'], x['best_tail_min_prime'], x['best_tail_max_prime']) for x in payload['square_sieve_two_pivot_quotient_scans']]}"
    )
    print(
        "  square-sieve intersection decay scans: "
        f"{[(x['N'], len(x['outside_witness']), x['all_target_counts_nonincreasing'], x['all_prime_budgets_nonincreasing'], x['steps'][-1]['rectangle_slack'] if x['steps'] else 0) for x in payload['square_sieve_intersection_decay_scans']]}"
    )
    print(
        "  active credit capacity checks: "
        f"{[(x['N'], x['exact_worst'], x['worst_credit_split_mode'], x['worst_credit_defect'], x['worst_credit_middle_size'], x['worst_credit_pool_size'], x['worst_credit_reserve_size'], x['worst_credit_new_middle_size'], x['worst_credit_deficit'], x['worst_credit_deficit_surplus'], x['observed_positive_deficit_nodes'], x['observed_max_credit_deficit'], x['observed_max_credit_deficit_surplus'], x['search_nodes'], x['search_pruned_no_middle_tail'], x['search_pruned_defect_bound'], x['search_pruned_nonnegative_bound']) for x in payload['active_credit_checks']]}"
    )
    print(
        "  active credit max-deficit middle gcds: "
        f"{[(x['N'], x['observed_max_credit_deficit'], x['observed_max_credit_deficit_middle_step_gcd'], x['observed_max_credit_deficit_middle_mod169_counts']) for x in payload['active_credit_checks']]}"
    )
    print("  wrote data/results/latest.json")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
