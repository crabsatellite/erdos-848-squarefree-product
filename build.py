from __future__ import annotations

import argparse
import json
import sys
from datetime import datetime, timezone
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
from erdos848.opposite_matching_certificate import opposite_matching_certificate
from erdos848.partitioned_hall_certificate import (
    certificate_to_jsonable as partitioned_to_json,
)
from erdos848.partitioned_hall_certificate import partitioned_hall_certificate
from erdos848.problem_specs import PROBLEMS, problem327_max_set, problem727_scan
from erdos848.residue_certificate import certificate_to_jsonable as residue_to_json
from erdos848.residue_certificate import generate_residue_certificate


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


def run(mode: str) -> dict:
    extended = mode == "extended"
    exact_Ns = [100, 500, 1000] if not extended else [100, 500, 1000, 2000, 5000]
    hall_Ns = [100, 500] if not extended else [100, 500, 1000, 2000]
    matching_Ns = [100, 500, 1000] if not extended else [100, 500, 1000, 2000, 5000]
    partitioned_Ns = [100, 500]

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
        active_credit_to_json(active_credit_certificate(N, 7, 18, index_bandwidth=3))
        for N in partitioned_Ns
    ]
    opposite_matching = [
        opposite_matching_to_json(opposite_matching_certificate(N, 7, 18))
        for N in matching_Ns
    ]
    opposite_band_matching = [
        opposite_matching_to_json(opposite_matching_certificate(N, 7, 18, index_bandwidth=3))
        for N in matching_Ns
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
        "partitioned_hall_checks": partitioned,
        "active_credit_checks": active_credit,
        "reference_problem_templates": refs,
    }

    write_json(ROOT / "data" / "certificates" / f"residue_5_13_{mode}.json", residue)
    write_json(ROOT / "data" / "results" / f"build_{mode}.json", payload)
    write_json(ROOT / "data" / "results" / "latest.json", payload)
    return payload


def assert_gate(payload: dict) -> None:
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
        assert item["perfect"], item
        assert item["matched_count"] == item["opposite_size"], item
    for item in payload["opposite_band_matching_checks"]:
        assert item["perfect"], item
        assert item["matched_count"] == item["opposite_size"], item
        assert item["max_index_gap"] <= 3, item
        assert item["max_value_gap"] <= 86, item
        assert item["allowed_value_offsets"] == [-86, -61, -36, -11, 14, 39, 64], item
        assert set(item["value_offset_counts"]) <= set(item["allowed_value_offsets"]), item
    for item in payload["partitioned_hall_checks"]:
        assert item["worst_opposite_defect"] >= 0, item
        assert item["worst_middle_defect"] >= 0, item
        assert item["worst_union_defect"] >= 0, item
        assert item["worst_incremental_defect"] >= 0, item
        assert item["worst_incremental_with_middle_defect"] >= 0, item
    for item in payload["active_credit_checks"]:
        assert item["worst_credit_defect"] >= 0, item
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
        "  partitioned capacity checks: "
        f"{[(x['N'], x['worst_opposite_defect'], x['worst_middle_defect'], x['worst_new_middle_defect'], x['worst_incremental_defect'], x['worst_incremental_with_middle_defect']) for x in payload['partitioned_hall_checks']]}"
    )
    print(
        "  active credit capacity checks: "
        f"{[(x['N'], x['worst_credit_defect'], x['worst_credit_middle_size'], x['worst_credit_pool_size']) for x in payload['active_credit_checks']]}"
    )
    print("  wrote data/results/latest.json")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
