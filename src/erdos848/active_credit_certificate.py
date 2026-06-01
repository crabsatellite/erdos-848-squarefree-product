from __future__ import annotations

from collections import Counter
from dataclasses import asdict, dataclass
from math import gcd

from .core import BitsetGraph, squarefree_sieve
from .opposite_matching_certificate import opposite_matching_certificate


DEFICIT_SEED_EXCEPTIONS = {41, 515}


def _deficit_seed_key(vertex: int) -> int | None:
    if vertex not in DEFICIT_SEED_EXCEPTIONS and vertex % 676 != 239:
        return None
    if vertex == 41:
        return 0
    if vertex == 515:
        return 1
    return 2 + (vertex - 239) // 676


def _deficit_seed_value(key: int) -> int:
    if key == 0:
        return 41
    if key == 1:
        return 515
    return 239 + 676 * (key - 2)


def _is_deficit_seed(vertex: int) -> bool:
    return _deficit_seed_key(vertex) is not None


@dataclass
class ActiveCreditCertificate:
    N: int
    base_residue: int
    opposite_residue: int
    index_bandwidth: int
    search_order: str
    exact_worst: bool
    outside_vertices: int
    outside_opposite_vertices: int
    outside_middle_vertices: int
    search_nodes: int
    search_max_depth: int
    search_pruned_no_middle_tail: int
    search_pruned_defect_bound: int
    search_pruned_nonnegative_bound: int
    search_exhausted: bool
    capacity_obligation: str
    worst_credit_defect: int
    worst_credit_witness: list[int]
    worst_credit_witness_residue_counts: dict[int, int]
    worst_credit_split_mode: str
    worst_credit_opposite_size: int
    worst_credit_middle_size: int
    worst_credit_pool_size: int
    worst_credit_reserve_size: int
    worst_credit_new_middle_size: int
    worst_credit_deficit: int
    worst_credit_deficit_surplus: int
    worst_credit_deficit_capacity_holds: bool
    worst_credit_deficit_allocation_pairs: list[tuple[int, int]]
    worst_credit_deficit_allocation_valid: bool
    worst_credit_deficit_allocation_additive_count_valid: bool
    worst_credit_deficit_allocation_reserve_prefix: bool
    worst_credit_deficit_allocation_seeded: bool
    worst_credit_deficit_allocation_seed_keys: list[int]
    worst_credit_deficit_allocation_seed_keys_prefix_indexed: bool
    worst_credit_deficit_allocation_seed_keys_prefix_injective: bool
    worst_credit_deficit_allocation_seed_keys_strictly_increasing: bool
    worst_credit_deficit_allocation_seed_strict_middle_valid: bool
    worst_credit_deficit_allocation_exact_prefix_pairs: bool
    worst_credit_deficit_allocation_prefix_pairs_complete: bool
    worst_credit_deficit_allocation_prefix_pairs_ordered: bool
    worst_credit_deficit_allocation_generated_prefix_pairs: bool
    worst_credit_deficit_allocation_reserve_witnesses: list[int]
    worst_credit_deficit_allocation_reserve_witness_indices: list[int]
    worst_credit_deficit_allocation_reserve_witness_valid: bool
    worst_credit_deficit_allocation_reserve_witness_source_indexed: bool
    worst_credit_deficit_allocation_reserve_witness_prefix_indexed: bool
    worst_credit_deficit_allocation_source_index_no_image_valid: bool
    worst_credit_deficit_allocation_shift_target_no_image_valid: bool
    worst_credit_deficit_allocation_mate_target_no_image_valid: bool
    worst_credit_deficit_allocation_mate_target_lower_bound_valid: bool
    worst_credit_deficit_allocation_mate_source_index_lower_bound_valid: bool
    worst_credit_deficit_allocation_target_prefix_box_bound_valid: bool
    worst_credit_deficit_allocation_last_target_upper_bound_valid: bool
    worst_credit_deficit_allocation_prefix_witness_edge_valid: bool
    worst_credit_deficit_allocation_opposite_witness_valid: bool
    worst_credit_deficit_allocation_opposite_witness_source_indexed: bool
    worst_credit_required_reserve_slack: int
    worst_credit_reserve_slack_surplus: int
    worst_credit_split_pool_size: int
    worst_credit_reserve_new_disjoint: bool
    worst_credit_slack_capacity_holds: bool
    worst_credit_matching: list[tuple[int, int]]
    observed_positive_deficit_nodes: int
    observed_max_credit_deficit: int
    observed_max_credit_deficit_surplus: int
    observed_max_credit_deficit_witness: list[int]
    observed_max_credit_deficit_residue_counts: dict[int, int]
    observed_max_credit_deficit_middle_vertices: list[int]
    observed_max_credit_deficit_middle_mod169_counts: dict[int, int]
    observed_max_credit_deficit_middle_step_gcd: int
    observed_max_credit_deficit_middle_size: int
    observed_max_credit_deficit_new_middle_size: int
    observed_max_credit_deficit_reserve_size: int
    observed_max_credit_deficit_allocation_pairs: list[tuple[int, int]]
    observed_max_credit_deficit_allocation_valid: bool
    observed_max_credit_deficit_allocation_additive_count_valid: bool
    observed_max_credit_deficit_allocation_reserve_prefix: bool
    observed_max_credit_deficit_allocation_seeded: bool
    observed_max_credit_deficit_allocation_seed_keys: list[int]
    observed_max_credit_deficit_allocation_seed_keys_prefix_indexed: bool
    observed_max_credit_deficit_allocation_seed_keys_prefix_injective: bool
    observed_max_credit_deficit_allocation_seed_keys_strictly_increasing: bool
    observed_max_credit_deficit_allocation_seed_strict_middle_valid: bool
    observed_max_credit_deficit_allocation_exact_prefix_pairs: bool
    observed_max_credit_deficit_allocation_prefix_pairs_complete: bool
    observed_max_credit_deficit_allocation_prefix_pairs_ordered: bool
    observed_max_credit_deficit_allocation_generated_prefix_pairs: bool
    observed_max_credit_deficit_allocation_reserve_witnesses: list[int]
    observed_max_credit_deficit_allocation_reserve_witness_indices: list[int]
    observed_max_credit_deficit_allocation_reserve_witness_valid: bool
    observed_max_credit_deficit_allocation_reserve_witness_source_indexed: bool
    observed_max_credit_deficit_allocation_reserve_witness_prefix_indexed: bool
    observed_max_credit_deficit_allocation_source_index_no_image_valid: bool
    observed_max_credit_deficit_allocation_shift_target_no_image_valid: bool
    observed_max_credit_deficit_allocation_mate_target_no_image_valid: bool
    observed_max_credit_deficit_allocation_mate_target_lower_bound_valid: bool
    observed_max_credit_deficit_allocation_mate_source_index_lower_bound_valid: bool
    observed_max_credit_deficit_allocation_target_prefix_box_bound_valid: bool
    observed_max_credit_deficit_allocation_last_target_upper_bound_valid: bool
    observed_max_credit_deficit_allocation_prefix_witness_edge_valid: bool
    observed_max_credit_deficit_allocation_opposite_witness_valid: bool
    observed_max_credit_deficit_allocation_opposite_witness_source_indexed: bool
    observed_deficit_pressure_complete: bool


def active_credit_certificate(
    N: int,
    base_residue: int = 7,
    opposite_residue: int = 18,
    index_bandwidth: int = 3,
    max_nodes: int | None = None,
    exact_worst: bool = True,
) -> ActiveCreditCertificate:
    """Check the finite shadow of `ActiveStrictMiddleCreditCapacity`.

    For a compatible outside clique B, use the banded opposite matching on the
    opposite part O.  The active strict-middle credit pool is

    * opposite neighbors of O not used by the opposite matching image, plus
    * strict-middle neighbors not already hit by O.

    The live Lean cut asks for the deterministic deficit inequality
    `max(0, |M| - |new_middle|) <= |reserve|`.  The older count-level
    `|credit_pool| >= |M|` and sorted matching witness remain in the JSON as
    diagnostic support.
    """
    sf = squarefree_sieve(N * N + 1)
    base = [a for a in range(1, N + 1) if a % 25 == base_residue]
    base_index = {a: i for i, a in enumerate(base)}
    outside = sorted(
        (
            b
            for b in range(1, N + 1)
            if b % 25 != base_residue and not sf[b * b + 1]
        ),
        key=lambda b: (b % 25 == opposite_residue, b),
    )

    band_match = opposite_matching_certificate(
        N, base_residue, opposite_residue, index_bandwidth=index_bandwidth
    )
    if not band_match.perfect:
        raise ValueError("banded opposite matching must be perfect")
    matched_base_index = {
        b: base_index[a]
        for b, a in band_match.matching
    }

    graph = BitsetGraph(outside, lambda a, b: not sf[a * b + 1])
    is_opposite = [b % 25 == opposite_residue for b in outside]
    outside_opposite_vertices = sum(1 for flag in is_opposite if flag)
    outside_middle_vertices = len(outside) - outside_opposite_vertices
    opposite_candidate_mask = 0
    middle_candidate_mask = 0
    for i, opposite_flag in enumerate(is_opposite):
        if opposite_flag:
            opposite_candidate_mask |= 1 << i
        else:
            middle_candidate_mask |= 1 << i
    neigh = [0] * len(outside)
    for i, b in enumerate(outside):
        mask = 0
        for k, a in enumerate(base):
            if sf[a * b + 1]:
                mask |= 1 << k
        neigh[i] = mask

    worst_credit_defect = 10**18
    worst_credit_witness: list[int] = []
    worst_credit_witness_residue_counts: dict[int, int] = {}
    worst_credit_split_mode = "empty"
    worst_credit_opposite_size = 0
    worst_credit_middle_size = 0
    worst_credit_pool_size = 0
    worst_credit_reserve_size = 0
    worst_credit_new_middle_size = 0
    worst_credit_deficit = 0
    worst_credit_deficit_surplus = 0
    worst_credit_deficit_capacity_holds = True
    worst_credit_deficit_allocation_pairs: list[tuple[int, int]] = []
    worst_credit_deficit_allocation_valid = True
    worst_credit_deficit_allocation_additive_count_valid = True
    worst_credit_deficit_allocation_reserve_prefix = True
    worst_credit_deficit_allocation_seeded = True
    worst_credit_deficit_allocation_seed_keys: list[int] = []
    worst_credit_deficit_allocation_seed_keys_prefix_indexed = True
    worst_credit_deficit_allocation_seed_keys_prefix_injective = True
    worst_credit_deficit_allocation_seed_keys_strictly_increasing = True
    worst_credit_deficit_allocation_seed_strict_middle_valid = True
    worst_credit_deficit_allocation_exact_prefix_pairs = True
    worst_credit_deficit_allocation_prefix_pairs_complete = True
    worst_credit_deficit_allocation_prefix_pairs_ordered = True
    worst_credit_deficit_allocation_generated_prefix_pairs = True
    worst_credit_deficit_allocation_reserve_witnesses: list[int] = []
    worst_credit_deficit_allocation_reserve_witness_indices: list[int] = []
    worst_credit_deficit_allocation_reserve_witness_valid = True
    worst_credit_deficit_allocation_reserve_witness_source_indexed = True
    worst_credit_deficit_allocation_reserve_witness_prefix_indexed = True
    worst_credit_deficit_allocation_source_index_no_image_valid = True
    worst_credit_deficit_allocation_shift_target_no_image_valid = True
    worst_credit_deficit_allocation_mate_target_no_image_valid = True
    worst_credit_deficit_allocation_mate_target_lower_bound_valid = True
    worst_credit_deficit_allocation_mate_source_index_lower_bound_valid = True
    worst_credit_deficit_allocation_target_prefix_box_bound_valid = True
    worst_credit_deficit_allocation_last_target_upper_bound_valid = True
    worst_credit_deficit_allocation_prefix_witness_edge_valid = True
    worst_credit_deficit_allocation_opposite_witness_valid = True
    worst_credit_deficit_allocation_opposite_witness_source_indexed = True
    worst_credit_required_reserve_slack = 0
    worst_credit_reserve_slack_surplus = 0
    worst_credit_split_pool_size = 0
    worst_credit_reserve_new_disjoint = True
    worst_credit_slack_capacity_holds = True
    worst_credit_matching: list[tuple[int, int]] = []
    observed_positive_deficit_nodes = 0
    observed_max_credit_deficit = 0
    observed_max_credit_deficit_surplus = 0
    observed_max_credit_deficit_witness: list[int] = []
    observed_max_credit_deficit_residue_counts: dict[int, int] = {}
    observed_max_credit_deficit_middle_vertices: list[int] = []
    observed_max_credit_deficit_middle_mod169_counts: dict[int, int] = {}
    observed_max_credit_deficit_middle_step_gcd = 0
    observed_max_credit_deficit_middle_size = 0
    observed_max_credit_deficit_new_middle_size = 0
    observed_max_credit_deficit_reserve_size = 0
    observed_max_credit_deficit_allocation_pairs: list[tuple[int, int]] = []
    observed_max_credit_deficit_allocation_valid = True
    observed_max_credit_deficit_allocation_additive_count_valid = True
    observed_max_credit_deficit_allocation_reserve_prefix = True
    observed_max_credit_deficit_allocation_seeded = True
    observed_max_credit_deficit_allocation_seed_keys: list[int] = []
    observed_max_credit_deficit_allocation_seed_keys_prefix_indexed = True
    observed_max_credit_deficit_allocation_seed_keys_prefix_injective = True
    observed_max_credit_deficit_allocation_seed_keys_strictly_increasing = True
    observed_max_credit_deficit_allocation_seed_strict_middle_valid = True
    observed_max_credit_deficit_allocation_exact_prefix_pairs = True
    observed_max_credit_deficit_allocation_prefix_pairs_complete = True
    observed_max_credit_deficit_allocation_prefix_pairs_ordered = True
    observed_max_credit_deficit_allocation_generated_prefix_pairs = True
    observed_max_credit_deficit_allocation_reserve_witnesses: list[int] = []
    observed_max_credit_deficit_allocation_reserve_witness_indices: list[int] = []
    observed_max_credit_deficit_allocation_reserve_witness_valid = True
    observed_max_credit_deficit_allocation_reserve_witness_source_indexed = True
    observed_max_credit_deficit_allocation_reserve_witness_prefix_indexed = True
    observed_max_credit_deficit_allocation_source_index_no_image_valid = True
    observed_max_credit_deficit_allocation_shift_target_no_image_valid = True
    observed_max_credit_deficit_allocation_mate_target_no_image_valid = True
    observed_max_credit_deficit_allocation_mate_target_lower_bound_valid = True
    observed_max_credit_deficit_allocation_mate_source_index_lower_bound_valid = True
    observed_max_credit_deficit_allocation_target_prefix_box_bound_valid = True
    observed_max_credit_deficit_allocation_last_target_upper_bound_valid = True
    observed_max_credit_deficit_allocation_prefix_witness_edge_valid = True
    observed_max_credit_deficit_allocation_opposite_witness_valid = True
    observed_max_credit_deficit_allocation_opposite_witness_source_indexed = True
    search_nodes = 0
    search_max_depth = 0
    search_pruned_no_middle_tail = 0
    search_pruned_defect_bound = 0
    search_pruned_nonnegative_bound = 0
    search_exhausted = True

    def expand(
        P: int,
        chosen: list[int],
        opposite_size: int,
        middle_vertices: list[int],
        opposite_neighbors: int,
        middle_neighbors: int,
        opposite_image: int,
    ) -> None:
        nonlocal worst_credit_defect
        nonlocal worst_credit_witness
        nonlocal worst_credit_witness_residue_counts
        nonlocal worst_credit_split_mode
        nonlocal worst_credit_opposite_size
        nonlocal worst_credit_middle_size
        nonlocal worst_credit_pool_size
        nonlocal worst_credit_reserve_size
        nonlocal worst_credit_new_middle_size
        nonlocal worst_credit_deficit
        nonlocal worst_credit_deficit_surplus
        nonlocal worst_credit_deficit_capacity_holds
        nonlocal worst_credit_deficit_allocation_pairs
        nonlocal worst_credit_deficit_allocation_valid
        nonlocal worst_credit_deficit_allocation_reserve_prefix
        nonlocal worst_credit_deficit_allocation_seeded
        nonlocal worst_credit_deficit_allocation_seed_keys
        nonlocal worst_credit_deficit_allocation_seed_keys_prefix_indexed
        nonlocal worst_credit_deficit_allocation_exact_prefix_pairs
        nonlocal worst_credit_deficit_allocation_prefix_pairs_complete
        nonlocal worst_credit_deficit_allocation_prefix_pairs_ordered
        nonlocal worst_credit_deficit_allocation_generated_prefix_pairs
        nonlocal worst_credit_deficit_allocation_reserve_witnesses
        nonlocal worst_credit_deficit_allocation_reserve_witness_indices
        nonlocal worst_credit_deficit_allocation_reserve_witness_valid
        nonlocal worst_credit_deficit_allocation_reserve_witness_source_indexed
        nonlocal worst_credit_deficit_allocation_reserve_witness_prefix_indexed
        nonlocal worst_credit_deficit_allocation_source_index_no_image_valid
        nonlocal worst_credit_deficit_allocation_shift_target_no_image_valid
        nonlocal worst_credit_deficit_allocation_prefix_witness_edge_valid
        nonlocal worst_credit_required_reserve_slack
        nonlocal worst_credit_reserve_slack_surplus
        nonlocal worst_credit_split_pool_size
        nonlocal worst_credit_reserve_new_disjoint
        nonlocal worst_credit_slack_capacity_holds
        nonlocal worst_credit_matching
        nonlocal observed_positive_deficit_nodes
        nonlocal observed_max_credit_deficit
        nonlocal observed_max_credit_deficit_surplus
        nonlocal observed_max_credit_deficit_witness
        nonlocal observed_max_credit_deficit_residue_counts
        nonlocal observed_max_credit_deficit_middle_vertices
        nonlocal observed_max_credit_deficit_middle_mod169_counts
        nonlocal observed_max_credit_deficit_middle_step_gcd
        nonlocal observed_max_credit_deficit_middle_size
        nonlocal observed_max_credit_deficit_new_middle_size
        nonlocal observed_max_credit_deficit_reserve_size
        nonlocal observed_max_credit_deficit_allocation_pairs
        nonlocal observed_max_credit_deficit_allocation_valid
        nonlocal observed_max_credit_deficit_allocation_reserve_prefix
        nonlocal observed_max_credit_deficit_allocation_seeded
        nonlocal observed_max_credit_deficit_allocation_seed_keys
        nonlocal observed_max_credit_deficit_allocation_seed_keys_prefix_indexed
        nonlocal observed_max_credit_deficit_allocation_exact_prefix_pairs
        nonlocal observed_max_credit_deficit_allocation_prefix_pairs_complete
        nonlocal observed_max_credit_deficit_allocation_prefix_pairs_ordered
        nonlocal observed_max_credit_deficit_allocation_generated_prefix_pairs
        nonlocal observed_max_credit_deficit_allocation_reserve_witnesses
        nonlocal observed_max_credit_deficit_allocation_reserve_witness_indices
        nonlocal observed_max_credit_deficit_allocation_reserve_witness_valid
        nonlocal observed_max_credit_deficit_allocation_reserve_witness_source_indexed
        nonlocal observed_max_credit_deficit_allocation_reserve_witness_prefix_indexed
        nonlocal observed_max_credit_deficit_allocation_source_index_no_image_valid
        nonlocal observed_max_credit_deficit_allocation_shift_target_no_image_valid
        nonlocal observed_max_credit_deficit_allocation_prefix_witness_edge_valid
        nonlocal search_nodes
        nonlocal search_max_depth
        nonlocal search_pruned_no_middle_tail
        nonlocal search_pruned_defect_bound
        nonlocal search_pruned_nonnegative_bound
        nonlocal search_exhausted

        search_nodes += 1
        search_max_depth = max(search_max_depth, len(chosen))
        if max_nodes is not None and search_nodes > max_nodes:
            search_exhausted = False
            return

        middle_size = len(middle_vertices)
        if middle_size == 0 and (P & middle_candidate_mask) == 0:
            search_pruned_no_middle_tail += 1
            return
        if middle_size > 0:
            reserve = opposite_neighbors & ~opposite_image
            new_middle = middle_neighbors & ~opposite_neighbors
            credit_pool = reserve | new_middle
            credit_pool_size = credit_pool.bit_count()
            reserve_size = reserve.bit_count()
            new_middle_size = new_middle.bit_count()
            split_pool_size = reserve_size + new_middle_size
            credit_deficit = max(0, middle_size - new_middle_size)
            deficit_surplus = reserve_size - credit_deficit
            reserve_new_disjoint = (reserve & new_middle) == 0
            defect = credit_pool_size - middle_size

            def allocation_additive_count_valid(deficit_length: int) -> bool:
                return middle_size == new_middle_size + deficit_length

            def allocation_reserve_witnesses(
                allocation_pairs: list[tuple[int, int]],
            ) -> tuple[list[int], list[int], bool, bool]:
                witnesses: list[int] = []
                witness_indices: list[int] = []
                valid = True
                source_indexed = True
                for _middle, pay in allocation_pairs:
                    pay_index = base_index[pay]
                    witness = None
                    for chosen_index in chosen:
                        if not is_opposite[chosen_index]:
                            continue
                        if (neigh[chosen_index] >> pay_index) & 1:
                            witness = outside[chosen_index]
                            break
                    if witness is None:
                        valid = False
                        source_indexed = False
                        witnesses.append(0)
                        witness_indices.append(0)
                        continue
                    witnesses.append(witness)
                    witness_index = (
                        (witness - opposite_residue) // 25
                        if witness >= opposite_residue
                        else 0
                    )
                    witness_indices.append(witness_index)
                    source_indexed = (
                        source_indexed
                        and witness == 25 * witness_index + opposite_residue
                    )
                    valid = (
                        valid
                        and 1 <= pay <= N
                        and pay % 25 == base_residue
                        and witness % 25 == opposite_residue
                        and sf[pay * witness + 1]
                        and not ((opposite_image >> pay_index) & 1)
                    )
                return witnesses, witness_indices, valid, source_indexed

            def allocation_source_index_no_image_valid(
                allocation_pairs: list[tuple[int, int]],
            ) -> bool:
                for _middle, pay in allocation_pairs:
                    pay_index = base_index[pay]
                    for chosen_index in chosen:
                        if not is_opposite[chosen_index]:
                            continue
                        source = outside[chosen_index]
                        source_index = (
                            (source - opposite_residue) // 25
                            if source >= opposite_residue
                            else 0
                        )
                        if source != 25 * source_index + opposite_residue:
                            return False
                        if matched_base_index[source] == pay_index:
                            return False
                return True

            def allocation_shift_target_no_image_valid(
                allocation_pairs: list[tuple[int, int]],
            ) -> bool:
                for _middle, pay in allocation_pairs:
                    pay_index = base_index[pay]
                    if pay != 25 * pay_index + base_residue:
                        return False
                    for chosen_index in chosen:
                        if not is_opposite[chosen_index]:
                            continue
                        source = outside[chosen_index]
                        if matched_base_index[source] == pay_index:
                            return False
                return True

            def allocation_mate_target_no_image_valid(
                allocation_pairs: list[tuple[int, int]],
            ) -> bool:
                for _middle, pay in allocation_pairs:
                    pay_index = base_index[pay]
                    if pay != 25 * pay_index + base_residue:
                        return False
                    for chosen_index in chosen:
                        if not is_opposite[chosen_index]:
                            continue
                        source = outside[chosen_index]
                        mate_target = (
                            25 * matched_base_index[source] + base_residue
                        )
                        if mate_target == pay:
                            return False
                return True

            def allocation_mate_target_lower_bound_valid(
                allocation_pairs: list[tuple[int, int]],
            ) -> bool:
                lower_bound = 25 * len(allocation_pairs) + base_residue
                for chosen_index in chosen:
                    if not is_opposite[chosen_index]:
                        continue
                    source = outside[chosen_index]
                    mate_target = 25 * matched_base_index[source] + base_residue
                    if mate_target < lower_bound:
                        return False
                return True

            def allocation_mate_source_index_lower_bound_valid(
                allocation_pairs: list[tuple[int, int]],
            ) -> bool:
                lower_bound = len(allocation_pairs)
                for chosen_index in chosen:
                    if not is_opposite[chosen_index]:
                        continue
                    source = outside[chosen_index]
                    if matched_base_index[source] < lower_bound:
                        return False
                return True

            def allocation_target_prefix_box_bound_valid(
                deficit_length: int,
            ) -> bool:
                return 25 * deficit_length <= N + (25 - base_residue)

            def allocation_last_target_upper_bound_valid(
                deficit_length: int,
            ) -> bool:
                return (
                    deficit_length == 0
                    or 25 * (deficit_length - 1) + base_residue <= N
                )

            def allocation_prefix_witness_edge_valid(
                allocation_pairs: list[tuple[int, int]],
                witnesses: list[int],
            ) -> bool:
                if len(allocation_pairs) != len(witnesses):
                    return False
                for (_middle, pay), witness in zip(allocation_pairs, witnesses):
                    pay_index = base_index[pay]
                    prefix_pay = 25 * pay_index + base_residue
                    if pay != prefix_pay:
                        return False
                    if not sf[prefix_pay * witness + 1]:
                        return False
                return True

            def allocation_opposite_witness_valid(
                allocation_pairs: list[tuple[int, int]],
                witnesses: list[int],
            ) -> bool:
                if len(allocation_pairs) != len(witnesses):
                    return False
                chosen_values = {outside[index] for index in chosen}
                for prefix_index, ((_middle, pay), witness) in enumerate(
                    zip(allocation_pairs, witnesses)
                ):
                    if pay != 25 * prefix_index + base_residue:
                        return False
                    if witness not in chosen_values:
                        return False
                    if witness % 25 != opposite_residue:
                        return False
                    if not sf[pay * witness + 1]:
                        return False
                return True

            def allocation_opposite_witness_source_indexed(
                witnesses: list[int],
                witness_indices: list[int],
            ) -> bool:
                if len(witnesses) != len(witness_indices):
                    return False
                for witness, index in zip(witnesses, witness_indices):
                    if witness != 25 * index + opposite_residue:
                        return False
                return True

            def allocation_reserve_witness_prefix_indexed(
                allocation_pairs: list[tuple[int, int]],
                witness_indices: list[int],
            ) -> bool:
                if len(allocation_pairs) != len(witness_indices):
                    return False
                for prefix_index, (_middle, pay) in enumerate(allocation_pairs):
                    if pay != 25 * prefix_index + base_residue:
                        return False
                return True

            def allocation_seed_keys_prefix_indexed(
                allocation_pairs: list[tuple[int, int]],
                seed_keys: list[int],
            ) -> bool:
                if len(allocation_pairs) != len(seed_keys):
                    return False
                for prefix_index, ((middle, pay), seed_key) in enumerate(
                    zip(allocation_pairs, seed_keys)
                ):
                    if pay != 25 * prefix_index + base_residue:
                        return False
                    if _deficit_seed_key(middle) != seed_key:
                        return False
                return True

            def allocation_seed_keys_prefix_injective(seed_keys: list[int]) -> bool:
                return len(seed_keys) == len(set(seed_keys))

            def allocation_seed_keys_strictly_increasing(seed_keys: list[int]) -> bool:
                return all(
                    seed_keys[i] < seed_keys[j]
                    for i in range(len(seed_keys))
                    for j in range(i + 1, len(seed_keys))
                )

            def allocation_seed_strict_middle_valid(
                allocation_pairs: list[tuple[int, int]],
                seed_keys: list[int],
            ) -> bool:
                if len(allocation_pairs) != len(seed_keys):
                    return False
                for (middle, _pay), seed_key in zip(allocation_pairs, seed_keys):
                    seed_value = _deficit_seed_value(seed_key)
                    if middle != seed_value:
                        return False
                    if seed_value % 25 == base_residue:
                        return False
                    if seed_value % 25 == opposite_residue:
                        return False
                return True

            def allocation_exact_prefix_pairs(
                allocation_pairs: list[tuple[int, int]],
                seed_keys: list[int],
            ) -> bool:
                if len(allocation_pairs) != len(seed_keys):
                    return False
                for prefix_index, ((middle, pay), seed_key) in enumerate(
                    zip(allocation_pairs, seed_keys)
                ):
                    if (middle, pay) != (
                        _deficit_seed_value(seed_key),
                        25 * prefix_index + base_residue,
                    ):
                        return False
                return True

            def allocation_prefix_pairs_complete(
                allocation_pairs: list[tuple[int, int]],
                seed_keys: list[int],
            ) -> bool:
                if len(allocation_pairs) != len(seed_keys):
                    return False
                pair_set = set(allocation_pairs)
                for prefix_index, seed_key in enumerate(seed_keys):
                    if (
                        _deficit_seed_value(seed_key),
                        25 * prefix_index + base_residue,
                    ) not in pair_set:
                        return False
                return True

            def allocation_prefix_pairs_ordered(
                allocation_pairs: list[tuple[int, int]],
                seed_keys: list[int],
            ) -> bool:
                if len(allocation_pairs) != len(seed_keys):
                    return False
                for prefix_index, ((middle, pay), seed_key) in enumerate(
                    zip(allocation_pairs, seed_keys)
                ):
                    if (middle, pay) != (
                        _deficit_seed_value(seed_key),
                        25 * prefix_index + base_residue,
                    ):
                        return False
                return True

            def generated_prefix_pairs(seed_keys: list[int]) -> list[tuple[int, int]]:
                return [
                    (
                        _deficit_seed_value(seed_key),
                        25 * prefix_index + base_residue,
                    )
                    for prefix_index, seed_key in enumerate(seed_keys)
                ]

            if credit_deficit > 0:
                observed_positive_deficit_nodes += 1
                if credit_deficit > observed_max_credit_deficit:
                    reserve_vertices = [
                        base[i] for i in range(len(base)) if (reserve >> i) & 1
                    ]
                    deficit_vertices = middle_vertices[:credit_deficit]
                    allocation_pairs = list(zip(deficit_vertices, reserve_vertices[:credit_deficit]))
                    reserve_vertex_set = set(reserve_vertices)
                    deficit_vertex_set = set(deficit_vertices)
                    observed_max_credit_deficit = credit_deficit
                    observed_max_credit_deficit_surplus = deficit_surplus
                    observed_max_credit_deficit_witness = [outside[i] for i in chosen]
                    observed_max_credit_deficit_residue_counts = dict(
                        sorted(Counter(b % 25 for b in observed_max_credit_deficit_witness).items())
                    )
                    observed_max_credit_deficit_middle_vertices = list(middle_vertices)
                    observed_max_credit_deficit_middle_mod169_counts = dict(
                        sorted(Counter(b % 169 for b in middle_vertices).items())
                    )
                    middle_sorted = sorted(middle_vertices)
                    step_gcd = 0
                    for left, right in zip(middle_sorted, middle_sorted[1:]):
                        step_gcd = gcd(step_gcd, right - left)
                    observed_max_credit_deficit_middle_step_gcd = step_gcd
                    observed_max_credit_deficit_middle_size = middle_size
                    observed_max_credit_deficit_new_middle_size = new_middle_size
                    observed_max_credit_deficit_reserve_size = reserve_size
                    observed_max_credit_deficit_allocation_pairs = allocation_pairs
                    observed_max_credit_deficit_allocation_valid = (
                        len(allocation_pairs) == credit_deficit
                        and all(middle in deficit_vertex_set for middle, _pay in allocation_pairs)
                        and all(pay in reserve_vertex_set for _middle, pay in allocation_pairs)
                        and len({pay for _middle, pay in allocation_pairs}) == credit_deficit
                    )
                    observed_max_credit_deficit_allocation_additive_count_valid = (
                        allocation_additive_count_valid(credit_deficit)
                    )
                    observed_max_credit_deficit_allocation_reserve_prefix = (
                        [pay for _middle, pay in allocation_pairs] == base[:credit_deficit]
                    )
                    observed_seed_keys = [
                        _deficit_seed_key(middle) for middle, _pay in allocation_pairs
                    ]
                    observed_max_credit_deficit_allocation_seeded = all(
                        key is not None for key in observed_seed_keys
                    )
                    observed_max_credit_deficit_allocation_seed_keys = [
                        key for key in observed_seed_keys if key is not None
                    ]
                    observed_max_credit_deficit_allocation_seed_keys_prefix_indexed = (
                        allocation_seed_keys_prefix_indexed(
                            allocation_pairs,
                            observed_max_credit_deficit_allocation_seed_keys,
                        )
                    )
                    observed_max_credit_deficit_allocation_seed_keys_prefix_injective = (
                        allocation_seed_keys_prefix_injective(
                            observed_max_credit_deficit_allocation_seed_keys
                        )
                    )
                    observed_max_credit_deficit_allocation_seed_keys_strictly_increasing = (
                        allocation_seed_keys_strictly_increasing(
                            observed_max_credit_deficit_allocation_seed_keys
                        )
                    )
                    observed_max_credit_deficit_allocation_seed_strict_middle_valid = (
                        allocation_seed_strict_middle_valid(
                            allocation_pairs,
                            observed_max_credit_deficit_allocation_seed_keys,
                        )
                    )
                    observed_max_credit_deficit_allocation_exact_prefix_pairs = (
                        allocation_exact_prefix_pairs(
                            allocation_pairs,
                            observed_max_credit_deficit_allocation_seed_keys,
                        )
                    )
                    observed_max_credit_deficit_allocation_prefix_pairs_complete = (
                        allocation_prefix_pairs_complete(
                            allocation_pairs,
                            observed_max_credit_deficit_allocation_seed_keys,
                        )
                    )
                    observed_max_credit_deficit_allocation_prefix_pairs_ordered = (
                        allocation_prefix_pairs_ordered(
                            allocation_pairs,
                            observed_max_credit_deficit_allocation_seed_keys,
                        )
                    )
                    observed_max_credit_deficit_allocation_generated_prefix_pairs = (
                        allocation_pairs
                        == generated_prefix_pairs(
                            observed_max_credit_deficit_allocation_seed_keys
                        )
                    )
                    (
                        observed_max_credit_deficit_allocation_reserve_witnesses,
                        observed_max_credit_deficit_allocation_reserve_witness_indices,
                        observed_max_credit_deficit_allocation_reserve_witness_valid,
                        observed_max_credit_deficit_allocation_reserve_witness_source_indexed,
                    ) = allocation_reserve_witnesses(allocation_pairs)
                    observed_max_credit_deficit_allocation_reserve_witness_prefix_indexed = (
                        allocation_reserve_witness_prefix_indexed(
                            allocation_pairs,
                            observed_max_credit_deficit_allocation_reserve_witness_indices,
                        )
                    )
                    observed_max_credit_deficit_allocation_source_index_no_image_valid = (
                        allocation_source_index_no_image_valid(allocation_pairs)
                    )
                    observed_max_credit_deficit_allocation_shift_target_no_image_valid = (
                        allocation_shift_target_no_image_valid(allocation_pairs)
                    )
                    observed_max_credit_deficit_allocation_mate_target_no_image_valid = (
                        allocation_mate_target_no_image_valid(allocation_pairs)
                    )
                    observed_max_credit_deficit_allocation_mate_target_lower_bound_valid = (
                        allocation_mate_target_lower_bound_valid(allocation_pairs)
                    )
                    observed_max_credit_deficit_allocation_mate_source_index_lower_bound_valid = (
                        allocation_mate_source_index_lower_bound_valid(
                            allocation_pairs
                        )
                    )
                    observed_max_credit_deficit_allocation_target_prefix_box_bound_valid = (
                        allocation_target_prefix_box_bound_valid(credit_deficit)
                    )
                    observed_max_credit_deficit_allocation_last_target_upper_bound_valid = (
                        allocation_last_target_upper_bound_valid(credit_deficit)
                    )
                    observed_max_credit_deficit_allocation_prefix_witness_edge_valid = (
                        allocation_prefix_witness_edge_valid(
                            allocation_pairs,
                            observed_max_credit_deficit_allocation_reserve_witnesses,
                        )
                    )
                    observed_max_credit_deficit_allocation_opposite_witness_valid = (
                        allocation_opposite_witness_valid(
                            allocation_pairs,
                            observed_max_credit_deficit_allocation_reserve_witnesses,
                        )
                    )
                    observed_max_credit_deficit_allocation_opposite_witness_source_indexed = (
                        allocation_opposite_witness_source_indexed(
                            observed_max_credit_deficit_allocation_reserve_witnesses,
                            observed_max_credit_deficit_allocation_reserve_witness_indices,
                        )
                    )
            if defect < worst_credit_defect:
                credit_vertices = [base[i] for i in range(len(base)) if (credit_pool >> i) & 1]
                reserve_vertices = [base[i] for i in range(len(base)) if (reserve >> i) & 1]
                deficit_vertices = middle_vertices[:credit_deficit]
                allocation_pairs = list(zip(deficit_vertices, reserve_vertices[:credit_deficit]))
                reserve_vertex_set = set(reserve_vertices)
                deficit_vertex_set = set(deficit_vertices)
                worst_credit_defect = defect
                worst_credit_witness = [outside[i] for i in chosen]
                worst_credit_witness_residue_counts = dict(
                    sorted(Counter(b % 25 for b in worst_credit_witness).items())
                )
                if split_pool_size == 0:
                    worst_credit_split_mode = "empty"
                elif reserve.bit_count() == 0:
                    worst_credit_split_mode = "new_middle_only"
                elif new_middle.bit_count() == 0:
                    worst_credit_split_mode = "reserve_only"
                else:
                    worst_credit_split_mode = "mixed"
                worst_credit_opposite_size = opposite_size
                worst_credit_middle_size = middle_size
                worst_credit_pool_size = credit_pool_size
                worst_credit_reserve_size = reserve_size
                worst_credit_new_middle_size = new_middle_size
                worst_credit_deficit = credit_deficit
                worst_credit_deficit_surplus = deficit_surplus
                worst_credit_deficit_capacity_holds = deficit_surplus >= 0
                worst_credit_deficit_allocation_pairs = allocation_pairs
                worst_credit_deficit_allocation_valid = (
                    len(allocation_pairs) == credit_deficit
                    and all(middle in deficit_vertex_set for middle, _pay in allocation_pairs)
                    and all(pay in reserve_vertex_set for _middle, pay in allocation_pairs)
                    and len({pay for _middle, pay in allocation_pairs}) == credit_deficit
                )
                worst_credit_deficit_allocation_additive_count_valid = (
                    allocation_additive_count_valid(credit_deficit)
                )
                worst_credit_deficit_allocation_reserve_prefix = (
                    [pay for _middle, pay in allocation_pairs] == base[:credit_deficit]
                )
                worst_seed_keys = [
                    _deficit_seed_key(middle) for middle, _pay in allocation_pairs
                ]
                worst_credit_deficit_allocation_seeded = all(
                    key is not None for key in worst_seed_keys
                )
                worst_credit_deficit_allocation_seed_keys = [
                    key for key in worst_seed_keys if key is not None
                ]
                worst_credit_deficit_allocation_seed_keys_prefix_indexed = (
                    allocation_seed_keys_prefix_indexed(
                        allocation_pairs,
                        worst_credit_deficit_allocation_seed_keys,
                    )
                )
                worst_credit_deficit_allocation_seed_keys_prefix_injective = (
                    allocation_seed_keys_prefix_injective(
                        worst_credit_deficit_allocation_seed_keys
                    )
                )
                worst_credit_deficit_allocation_seed_keys_strictly_increasing = (
                    allocation_seed_keys_strictly_increasing(
                        worst_credit_deficit_allocation_seed_keys
                    )
                )
                worst_credit_deficit_allocation_seed_strict_middle_valid = (
                    allocation_seed_strict_middle_valid(
                        allocation_pairs,
                        worst_credit_deficit_allocation_seed_keys,
                    )
                )
                worst_credit_deficit_allocation_exact_prefix_pairs = (
                    allocation_exact_prefix_pairs(
                        allocation_pairs,
                        worst_credit_deficit_allocation_seed_keys,
                    )
                )
                worst_credit_deficit_allocation_prefix_pairs_complete = (
                    allocation_prefix_pairs_complete(
                        allocation_pairs,
                        worst_credit_deficit_allocation_seed_keys,
                    )
                )
                worst_credit_deficit_allocation_prefix_pairs_ordered = (
                    allocation_prefix_pairs_ordered(
                        allocation_pairs,
                        worst_credit_deficit_allocation_seed_keys,
                    )
                )
                worst_credit_deficit_allocation_generated_prefix_pairs = (
                    allocation_pairs
                    == generated_prefix_pairs(worst_credit_deficit_allocation_seed_keys)
                )
                (
                    worst_credit_deficit_allocation_reserve_witnesses,
                    worst_credit_deficit_allocation_reserve_witness_indices,
                    worst_credit_deficit_allocation_reserve_witness_valid,
                    worst_credit_deficit_allocation_reserve_witness_source_indexed,
                ) = allocation_reserve_witnesses(allocation_pairs)
                worst_credit_deficit_allocation_reserve_witness_prefix_indexed = (
                    allocation_reserve_witness_prefix_indexed(
                        allocation_pairs,
                        worst_credit_deficit_allocation_reserve_witness_indices,
                    )
                )
                worst_credit_deficit_allocation_source_index_no_image_valid = (
                    allocation_source_index_no_image_valid(allocation_pairs)
                )
                worst_credit_deficit_allocation_shift_target_no_image_valid = (
                    allocation_shift_target_no_image_valid(allocation_pairs)
                )
                worst_credit_deficit_allocation_mate_target_no_image_valid = (
                    allocation_mate_target_no_image_valid(allocation_pairs)
                )
                worst_credit_deficit_allocation_mate_target_lower_bound_valid = (
                    allocation_mate_target_lower_bound_valid(allocation_pairs)
                )
                worst_credit_deficit_allocation_mate_source_index_lower_bound_valid = (
                    allocation_mate_source_index_lower_bound_valid(allocation_pairs)
                )
                worst_credit_deficit_allocation_target_prefix_box_bound_valid = (
                    allocation_target_prefix_box_bound_valid(credit_deficit)
                )
                worst_credit_deficit_allocation_last_target_upper_bound_valid = (
                    allocation_last_target_upper_bound_valid(credit_deficit)
                )
                worst_credit_deficit_allocation_prefix_witness_edge_valid = (
                    allocation_prefix_witness_edge_valid(
                        allocation_pairs,
                        worst_credit_deficit_allocation_reserve_witnesses,
                    )
                )
                worst_credit_deficit_allocation_opposite_witness_valid = (
                    allocation_opposite_witness_valid(
                        allocation_pairs,
                        worst_credit_deficit_allocation_reserve_witnesses,
                    )
                )
                worst_credit_deficit_allocation_opposite_witness_source_indexed = (
                    allocation_opposite_witness_source_indexed(
                        worst_credit_deficit_allocation_reserve_witnesses,
                        worst_credit_deficit_allocation_reserve_witness_indices,
                    )
                )
                worst_credit_required_reserve_slack = credit_deficit
                worst_credit_reserve_slack_surplus = deficit_surplus
                worst_credit_split_pool_size = split_pool_size
                worst_credit_reserve_new_disjoint = reserve_new_disjoint
                worst_credit_slack_capacity_holds = deficit_surplus >= 0
                worst_credit_matching = list(zip(middle_vertices, credit_vertices[:middle_size]))
            remaining_middle_size = (P & middle_candidate_mask).bit_count()
            remaining_opposite_size = (P & opposite_candidate_mask).bit_count()
            lower_defect_bound = (
                credit_pool_size - remaining_opposite_size - middle_size - remaining_middle_size
            )
            prune_threshold = worst_credit_defect if exact_worst else 0
            if lower_defect_bound >= prune_threshold:
                if exact_worst:
                    search_pruned_defect_bound += 1
                else:
                    search_pruned_nonnegative_bound += 1
                return

        while P and search_exhausted:
            lsb = P & -P
            v = lsb.bit_length() - 1
            P ^= lsb
            b = outside[v]
            if is_opposite[v]:
                match_bit = 1 << matched_base_index[b]
                expand(
                    P & graph.adj[v],
                    chosen + [v],
                    opposite_size + 1,
                    middle_vertices,
                    opposite_neighbors | neigh[v],
                    middle_neighbors,
                    opposite_image | match_bit,
                )
            else:
                expand(
                    P & graph.adj[v],
                    chosen + [v],
                    opposite_size,
                    middle_vertices + [b],
                    opposite_neighbors,
                    middle_neighbors | neigh[v],
                    opposite_image,
                )

    expand((1 << len(outside)) - 1, [], 0, [], 0, 0, 0)

    if worst_credit_defect == 10**18:
        worst_credit_defect = 0

    return ActiveCreditCertificate(
        N=N,
        base_residue=base_residue,
        opposite_residue=opposite_residue,
        index_bandwidth=index_bandwidth,
        search_order="middle_first_then_opposite",
        exact_worst=exact_worst,
        outside_vertices=len(outside),
        outside_opposite_vertices=outside_opposite_vertices,
        outside_middle_vertices=outside_middle_vertices,
        search_nodes=search_nodes,
        search_max_depth=search_max_depth,
        search_pruned_no_middle_tail=search_pruned_no_middle_tail,
        search_pruned_defect_bound=search_pruned_defect_bound,
        search_pruned_nonnegative_bound=search_pruned_nonnegative_bound,
        search_exhausted=search_exhausted,
        capacity_obligation="reserve_plus_new_middle",
        worst_credit_defect=worst_credit_defect,
        worst_credit_witness=worst_credit_witness,
        worst_credit_witness_residue_counts=worst_credit_witness_residue_counts,
        worst_credit_split_mode=worst_credit_split_mode,
        worst_credit_opposite_size=worst_credit_opposite_size,
        worst_credit_middle_size=worst_credit_middle_size,
        worst_credit_pool_size=worst_credit_pool_size,
        worst_credit_reserve_size=worst_credit_reserve_size,
        worst_credit_new_middle_size=worst_credit_new_middle_size,
        worst_credit_deficit=worst_credit_deficit,
        worst_credit_deficit_surplus=worst_credit_deficit_surplus,
        worst_credit_deficit_capacity_holds=worst_credit_deficit_capacity_holds,
        worst_credit_deficit_allocation_pairs=worst_credit_deficit_allocation_pairs,
        worst_credit_deficit_allocation_valid=worst_credit_deficit_allocation_valid,
        worst_credit_deficit_allocation_additive_count_valid=(
            worst_credit_deficit_allocation_additive_count_valid
        ),
        worst_credit_deficit_allocation_reserve_prefix=worst_credit_deficit_allocation_reserve_prefix,
        worst_credit_deficit_allocation_seeded=worst_credit_deficit_allocation_seeded,
        worst_credit_deficit_allocation_seed_keys=worst_credit_deficit_allocation_seed_keys,
        worst_credit_deficit_allocation_seed_keys_prefix_indexed=(
            worst_credit_deficit_allocation_seed_keys_prefix_indexed
        ),
        worst_credit_deficit_allocation_seed_keys_prefix_injective=(
            worst_credit_deficit_allocation_seed_keys_prefix_injective
        ),
        worst_credit_deficit_allocation_seed_keys_strictly_increasing=(
            worst_credit_deficit_allocation_seed_keys_strictly_increasing
        ),
        worst_credit_deficit_allocation_seed_strict_middle_valid=(
            worst_credit_deficit_allocation_seed_strict_middle_valid
        ),
        worst_credit_deficit_allocation_exact_prefix_pairs=(
            worst_credit_deficit_allocation_exact_prefix_pairs
        ),
        worst_credit_deficit_allocation_prefix_pairs_complete=(
            worst_credit_deficit_allocation_prefix_pairs_complete
        ),
        worst_credit_deficit_allocation_prefix_pairs_ordered=(
            worst_credit_deficit_allocation_prefix_pairs_ordered
        ),
        worst_credit_deficit_allocation_generated_prefix_pairs=(
            worst_credit_deficit_allocation_generated_prefix_pairs
        ),
        worst_credit_deficit_allocation_reserve_witnesses=(
            worst_credit_deficit_allocation_reserve_witnesses
        ),
        worst_credit_deficit_allocation_reserve_witness_indices=(
            worst_credit_deficit_allocation_reserve_witness_indices
        ),
        worst_credit_deficit_allocation_reserve_witness_valid=(
            worst_credit_deficit_allocation_reserve_witness_valid
        ),
        worst_credit_deficit_allocation_reserve_witness_source_indexed=(
            worst_credit_deficit_allocation_reserve_witness_source_indexed
        ),
        worst_credit_deficit_allocation_reserve_witness_prefix_indexed=(
            worst_credit_deficit_allocation_reserve_witness_prefix_indexed
        ),
        worst_credit_deficit_allocation_source_index_no_image_valid=(
            worst_credit_deficit_allocation_source_index_no_image_valid
        ),
        worst_credit_deficit_allocation_shift_target_no_image_valid=(
            worst_credit_deficit_allocation_shift_target_no_image_valid
        ),
        worst_credit_deficit_allocation_mate_target_no_image_valid=(
            worst_credit_deficit_allocation_mate_target_no_image_valid
        ),
        worst_credit_deficit_allocation_mate_target_lower_bound_valid=(
            worst_credit_deficit_allocation_mate_target_lower_bound_valid
        ),
        worst_credit_deficit_allocation_mate_source_index_lower_bound_valid=(
            worst_credit_deficit_allocation_mate_source_index_lower_bound_valid
        ),
        worst_credit_deficit_allocation_target_prefix_box_bound_valid=(
            worst_credit_deficit_allocation_target_prefix_box_bound_valid
        ),
        worst_credit_deficit_allocation_last_target_upper_bound_valid=(
            worst_credit_deficit_allocation_last_target_upper_bound_valid
        ),
        worst_credit_deficit_allocation_prefix_witness_edge_valid=(
            worst_credit_deficit_allocation_prefix_witness_edge_valid
        ),
        worst_credit_deficit_allocation_opposite_witness_valid=(
            worst_credit_deficit_allocation_opposite_witness_valid
        ),
        worst_credit_deficit_allocation_opposite_witness_source_indexed=(
            worst_credit_deficit_allocation_opposite_witness_source_indexed
        ),
        worst_credit_required_reserve_slack=worst_credit_required_reserve_slack,
        worst_credit_reserve_slack_surplus=worst_credit_reserve_slack_surplus,
        worst_credit_split_pool_size=worst_credit_split_pool_size,
        worst_credit_reserve_new_disjoint=worst_credit_reserve_new_disjoint,
        worst_credit_slack_capacity_holds=worst_credit_slack_capacity_holds,
        worst_credit_matching=worst_credit_matching,
        observed_positive_deficit_nodes=observed_positive_deficit_nodes,
        observed_max_credit_deficit=observed_max_credit_deficit,
        observed_max_credit_deficit_surplus=observed_max_credit_deficit_surplus,
        observed_max_credit_deficit_witness=observed_max_credit_deficit_witness,
        observed_max_credit_deficit_residue_counts=observed_max_credit_deficit_residue_counts,
        observed_max_credit_deficit_middle_vertices=observed_max_credit_deficit_middle_vertices,
        observed_max_credit_deficit_middle_mod169_counts=(
            observed_max_credit_deficit_middle_mod169_counts
        ),
        observed_max_credit_deficit_middle_step_gcd=observed_max_credit_deficit_middle_step_gcd,
        observed_max_credit_deficit_middle_size=observed_max_credit_deficit_middle_size,
        observed_max_credit_deficit_new_middle_size=observed_max_credit_deficit_new_middle_size,
        observed_max_credit_deficit_reserve_size=observed_max_credit_deficit_reserve_size,
        observed_max_credit_deficit_allocation_pairs=observed_max_credit_deficit_allocation_pairs,
        observed_max_credit_deficit_allocation_valid=observed_max_credit_deficit_allocation_valid,
        observed_max_credit_deficit_allocation_additive_count_valid=(
            observed_max_credit_deficit_allocation_additive_count_valid
        ),
        observed_max_credit_deficit_allocation_reserve_prefix=(
            observed_max_credit_deficit_allocation_reserve_prefix
        ),
        observed_max_credit_deficit_allocation_seeded=(
            observed_max_credit_deficit_allocation_seeded
        ),
        observed_max_credit_deficit_allocation_seed_keys=(
            observed_max_credit_deficit_allocation_seed_keys
        ),
        observed_max_credit_deficit_allocation_seed_keys_prefix_indexed=(
            observed_max_credit_deficit_allocation_seed_keys_prefix_indexed
        ),
        observed_max_credit_deficit_allocation_seed_keys_prefix_injective=(
            observed_max_credit_deficit_allocation_seed_keys_prefix_injective
        ),
        observed_max_credit_deficit_allocation_seed_keys_strictly_increasing=(
            observed_max_credit_deficit_allocation_seed_keys_strictly_increasing
        ),
        observed_max_credit_deficit_allocation_seed_strict_middle_valid=(
            observed_max_credit_deficit_allocation_seed_strict_middle_valid
        ),
        observed_max_credit_deficit_allocation_exact_prefix_pairs=(
            observed_max_credit_deficit_allocation_exact_prefix_pairs
        ),
        observed_max_credit_deficit_allocation_prefix_pairs_complete=(
            observed_max_credit_deficit_allocation_prefix_pairs_complete
        ),
        observed_max_credit_deficit_allocation_prefix_pairs_ordered=(
            observed_max_credit_deficit_allocation_prefix_pairs_ordered
        ),
        observed_max_credit_deficit_allocation_generated_prefix_pairs=(
            observed_max_credit_deficit_allocation_generated_prefix_pairs
        ),
        observed_max_credit_deficit_allocation_reserve_witnesses=(
            observed_max_credit_deficit_allocation_reserve_witnesses
        ),
        observed_max_credit_deficit_allocation_reserve_witness_indices=(
            observed_max_credit_deficit_allocation_reserve_witness_indices
        ),
        observed_max_credit_deficit_allocation_reserve_witness_valid=(
            observed_max_credit_deficit_allocation_reserve_witness_valid
        ),
        observed_max_credit_deficit_allocation_reserve_witness_source_indexed=(
            observed_max_credit_deficit_allocation_reserve_witness_source_indexed
        ),
        observed_max_credit_deficit_allocation_reserve_witness_prefix_indexed=(
            observed_max_credit_deficit_allocation_reserve_witness_prefix_indexed
        ),
        observed_max_credit_deficit_allocation_source_index_no_image_valid=(
            observed_max_credit_deficit_allocation_source_index_no_image_valid
        ),
        observed_max_credit_deficit_allocation_shift_target_no_image_valid=(
            observed_max_credit_deficit_allocation_shift_target_no_image_valid
        ),
        observed_max_credit_deficit_allocation_mate_target_no_image_valid=(
            observed_max_credit_deficit_allocation_mate_target_no_image_valid
        ),
        observed_max_credit_deficit_allocation_mate_target_lower_bound_valid=(
            observed_max_credit_deficit_allocation_mate_target_lower_bound_valid
        ),
        observed_max_credit_deficit_allocation_mate_source_index_lower_bound_valid=(
            observed_max_credit_deficit_allocation_mate_source_index_lower_bound_valid
        ),
        observed_max_credit_deficit_allocation_target_prefix_box_bound_valid=(
            observed_max_credit_deficit_allocation_target_prefix_box_bound_valid
        ),
        observed_max_credit_deficit_allocation_last_target_upper_bound_valid=(
            observed_max_credit_deficit_allocation_last_target_upper_bound_valid
        ),
        observed_max_credit_deficit_allocation_prefix_witness_edge_valid=(
            observed_max_credit_deficit_allocation_prefix_witness_edge_valid
        ),
        observed_max_credit_deficit_allocation_opposite_witness_valid=(
            observed_max_credit_deficit_allocation_opposite_witness_valid
        ),
        observed_max_credit_deficit_allocation_opposite_witness_source_indexed=(
            observed_max_credit_deficit_allocation_opposite_witness_source_indexed
        ),
        observed_deficit_pressure_complete=exact_worst,
    )


def certificate_to_jsonable(cert: ActiveCreditCertificate) -> dict:
    return asdict(cert)
