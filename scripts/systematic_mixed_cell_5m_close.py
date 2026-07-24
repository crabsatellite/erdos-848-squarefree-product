#!/usr/bin/env python3
"""Full valuation/cell/fibre certificate on [5e6, 1e7).

The Hall cut is unchanged.  The even branches use the mod-9 cell and
mod-49/mod-121 fibre dichotomies.  The odd branches use the pointwise
Boolean inequality

  1_{cap_i(F_i union H_i)}
    <= 1_{#{i:F_i} >= k} + (n-k+1)^(-1) sum_i 1_{H_i}.

At cutoff 7 the finite event is periodic modulo
4*9*49=1764.  A backwards state dynamic programme maximizes its density
over every allowed collision partition.  The endpoint payment uses the
sharp prefix bound R(1-R/1764), not an asymptotic equidistribution claim.
"""

from __future__ import annotations

from decimal import Decimal, getcontext
from fractions import Fraction
import math

import systematic_mixed_cell_10m_close as cell10
import systematic_mixed_joint_tail_close as joint


LOWER = 5_000_000
UPPER = 10_000_000
PERIOD = 4 * 9 * 49
TARGET = Fraction(1, 25) - Fraction(7, 25 * LOWER)

# Maxima of the eventwise diagonal scan on [5e6,1e7).  The producing
# executable prints every 0.5%-wide block and is rerun by the full audit.
DIAGONAL = {
    "unrestricted": Decimal("0.025294"),
    "concentrated": Decimal("0.019681"),
    "low_two_adic": Decimal("0.015812"),
    "e2_cell": Decimal("0.016164"),
    "e2_all_cells": Decimal("0.018973"),
    "odd_union": Decimal("0.012652"),
    "one_odd_cell": Decimal("0.000711"),
    "odd_11_cells": Decimal("0.007748"),
    "cap49_failure_8": Decimal("0.003572"),
    "cap49_failure_9": Decimal("0.003587"),
    "one_odd_cell_three49": Decimal("0.000050"),
}
ONE_ODD_CELLS = [
    Decimal(0),
    Decimal("0.000710"),
    Decimal("0.001415"),
    Decimal("0.002119"),
    Decimal("0.002823"),
    Decimal("0.003526"),
    Decimal("0.004227"),
    Decimal("0.004928"),
    Decimal("0.005629"),
    Decimal("0.006330"),
]
E1_Q49_CELLS = [
    Decimal("0.019113"),
    Decimal("0.019113"),
    Decimal("0.019113"),
    Decimal("0.019113"),
    Decimal("0.019113"),
    Decimal("0.019113"),
    Decimal("0.019113"),
    Decimal("0.019113"),
    Decimal("0.019113"),
    Decimal("0.019113"),
]


def dec(value: Fraction) -> Decimal:
    return Decimal(value.numerator) / Decimal(value.denominator)


def with_cutoff(cutoff: int, callback):
    old = joint.CUTOFF
    joint.CUTOFF = cutoff
    try:
        return callback()
    finally:
        joint.CUTOFF = old


def common_rows(cutoff: int, require_three: bool):
    return with_cutoff(
        cutoff,
        lambda: joint.common_sets(Fraction(UPPER), require_three),
    )


def four_payment(cutoff: int, support: tuple[int, ...], inactive_two: bool):
    def calculate():
        density, error = joint.finite_three(
            support, (2,) if inactive_two else ()
        )
        return dec(density) / 25 + Decimal(error) / LOWER
    return with_cutoff(cutoff, calculate)


def three_payment(cutoff: int, support: tuple[int, ...], parity: str):
    def calculate():
        inactive = (2,) if parity == "even" else ()
        i3, e3 = joint.finite_three(support, inactive)
        i2, e2 = joint.finite_two(
            tuple(p for p in support if p != 2), parity
        )
        return dec(i3 + i2) / 25 + Decimal(e3 + e2) / LOWER
    return with_cutoff(cutoff, calculate)


def worst_filtered_payment(
    cutoff: int,
    require_three: bool,
    parity: str,
    allowed,
):
    rows = common_rows(cutoff, require_three)
    return max(
        (three_payment(cutoff, support, parity), support)
        for support in rows if allowed(support)
    )


def exact_root(cutoff: int, split: int, label: str) -> Fraction:
    row = cell10.exact_root_profile(cutoff, split, label)
    print(
        f"root label={label} cutoff={cutoff} split={split} "
        f"value={dec(row[0]):.18f} witness_N={row[1]} worst={row[2][1:4]}"
    )
    return row[0]


def degree_certificate():
    old = (joint.LOWER, joint.ACTUAL_DEGREE_LOWER, joint.CUTOFF, joint.TAIL47)
    joint.LOWER = LOWER
    joint.ACTUAL_DEGREE_LOWER = UPPER
    joint.CUTOFF = 17
    joint.TAIL47 = cell10.tail_after(17)
    try:
        return joint.one_form_degree_certificate()
    finally:
        (
            joint.LOWER,
            joint.ACTUAL_DEGREE_LOWER,
            joint.CUTOFF,
            joint.TAIL47,
        ) = old


def best_partition_score(n: int, weights: list[Fraction], max_block: int):
    size = 1 << n
    dynamic: list[Fraction | None] = [None] * size
    dynamic[0] = Fraction()
    for mask in range(1, size):
        first = mask & -mask
        sub = mask
        best = None
        while sub:
            if sub & first and sub.bit_count() <= max_block:
                value = weights[sub] + dynamic[mask ^ sub]
                if best is None or value > best:
                    best = value
            sub = (sub - 1) & mask
        assert best is not None
        dynamic[mask] = best
    return dynamic[-1]


def collision_blocks(sizes: list[int]) -> tuple[int, ...]:
    blocks = []
    start = 0
    for size in sizes:
        blocks.append(sum(1 << i for i in range(start, start + size)))
        start += size
    return tuple(blocks)


def finite_density(
    n: int,
    k: int,
    p2_blocks: tuple[int, ...],
    p3_blocks: tuple[int, ...],
    max7: int | None = None,
    p7_blocks: tuple[int, ...] | None = None,
) -> Fraction:
    """Statewise upper DP over every allowed cutoff-7 collision partition."""
    values = [Fraction(int(mask.bit_count() >= k)) for mask in range(1 << n)]
    for prime, fixed in ((7, p7_blocks), (3, p3_blocks), (2, p2_blocks)):
        next_values = []
        for mask in range(1 << n):
            if prime == 7 and fixed is None:
                weights = [Fraction()] + [
                    values[mask | block] - values[mask]
                    for block in range(1, 1 << n)
                ]
                score = best_partition_score(n, weights, max7 or n)
            else:
                assert fixed is not None
                score = sum(
                    (values[mask | block] - values[mask] for block in fixed),
                    Fraction(),
                )
            next_values.append(values[mask] + score / (prime * prime))
        values = next_values
    return values[0]


def periodic_total(
    name: str,
    n: int,
    k: int,
    p2_blocks: tuple[int, ...],
    p3_blocks: tuple[int, ...],
    diagonal: Decimal,
    root_odd7: Fraction,
    raw_charge: int = 128,
    max7: int | None = None,
    p7_blocks: tuple[int, ...] | None = None,
):
    density = finite_density(n, k, p2_blocks, p3_blocks, max7, p7_blocks)
    residue_count = density * PERIOD
    assert residue_count.denominator == 1
    R = residue_count.numerator
    # A subset of R residues in a period M has prefix excess at most
    # R(1-R/M); this is attained by placing all R residues first.
    prefix = Fraction(R) * (1 - density)
    finite = 2 * density / 25 + 2 * (density + prefix) / LOWER
    factor = Fraction(n, 3 * (n - k + 1))
    total = (
        diagonal + dec(finite)
        + dec(factor * root_odd7)
        + dec(factor * 6 * cell10.tail_after(7) / 25)
        + Decimal(raw_charge) / LOWER
    )
    row = (total, name, density, R, prefix, factor)
    print(
        f"periodic branch={name} density={dec(density):.18f} R={R} "
        f"prefix={dec(prefix):.18f} factor={dec(factor):.18f} "
        f"total={total:.18f} slack={dec(TARGET)-total:.18f}"
    )
    return row


def main() -> None:
    getcontext().prec = 70
    cell10.LOWER = LOWER
    cell10.UPPER = UPPER
    cell10.CELL_GAP = UPPER

    residual, degree_worst = degree_certificate()
    assert residual * LOWER > 1000
    print(
        f"degree residual={dec(residual):.18f} worst={degree_worst[1:7]}"
    )

    root_v1_23 = exact_root(23, 70, "v2=1")
    root_v2_7 = exact_root(7, 58, "v2=2")
    root_v3_23 = exact_root(23, 58, "v2>=3")
    root_odd7 = exact_root(7, 49, "odd")
    target = dec(TARGET)
    totals: list[tuple] = []

    # E1: a cell is good if it is contained in neither a mod-49 nor a
    # mod-121 fibre.  The two-coordinate grid lemma then supplies a pair
    # breaking both primes.  The other three types are 7-only, 11-only,
    # and both.  Primes 13 and above are still exhausted, not discarded.
    constraints = {
        "good": lambda S: 7 not in S and 11 not in S,
        "7": lambda S: 11 not in S,
        "11": lambda S: 7 not in S,
        "both": lambda S: True,
    }
    four23 = {
        typ: max(
            (four_payment(23, S, True), S)
            for S in common_rows(23, False) if allowed(S)
        )
        for typ, allowed in constraints.items()
    }
    three23 = {
        typ: worst_filtered_payment(23, True, "even", allowed)
        for typ, allowed in constraints.items()
    }
    square4_23 = Decimal(4) * dec(cell10.tail_after(23)) / 25
    square3_23 = Decimal(3) * dec(cell10.tail_after(23)) / 25
    root4_v1 = Decimal(2) * dec(root_v1_23) / 3
    root3_v1 = dec(root_v1_23) / 2
    fibre = {
        "7": Decimal(1) / (36 * 49) + Decimal(1) / LOWER,
        "11": Decimal(1) / (36 * 121) + Decimal(1) / LOWER,
        "both": Decimal(1) / (36 * 49 * 121) + Decimal(1) / LOWER,
    }

    total = (
        DIAGONAL["unrestricted"] + 4 * four23["good"][0]
        + square4_23 + root4_v1
    )
    totals.append((total, "E1-two-good", four23["good"][1]))

    # Exactly one good paired cell; choose it and the best bad cell.
    worst = None
    for n7 in range(9):
        for n11 in range(9 - n7):
            for nb in range(9 - n7 - n11):
                count = n7 + n11 + nb
                if not 1 <= count <= 8:
                    continue
                types = ["7"] * n7 + ["11"] * n11 + ["both"] * nb
                chosen = min(types, key=lambda typ: four23[typ][0])
                diagonal = (
                    Decimal("0.019681")
                    + n7 * fibre["7"] + n11 * fibre["11"]
                    + nb * fibre["both"] + Decimal(8 - count) / LOWER
                )
                value = (
                    diagonal + 2 * four23["good"][0]
                    + 2 * four23[chosen][0] + square4_23 + root4_v1
                )
                row = (value, (n7, n11, nb), chosen)
                if worst is None or row[0] > worst[0]:
                    worst = row
    totals.append((worst[0], "E1-one-good", worst[1:]))

    # No good paired cell.  Every 7-only or both cell is inserted through
    # the exact E1_0+q49 diagonal; 11-only cells are counted raw.
    worst = None
    for n7 in range(10):
        for n11 in range(10 - n7):
            for nb in range(10 - n7 - n11):
                count = n7 + n11 + nb
                if not 2 <= count <= 9:
                    continue
                types = ["7"] * n7 + ["11"] * n11 + ["both"] * nb
                finite = min(
                    2 * four23[types[i]][0] + 2 * four23[types[j]][0]
                    for i in range(count) for j in range(i + 1, count)
                )
                diagonal = (
                    E1_Q49_CELLS[n7 + nb] + n11 * fibre["11"]
                    + Decimal(9 - count) / LOWER
                )
                value = diagonal + finite + square4_23 + root4_v1
                row = (value, (n7, n11, nb), finite)
                if worst is None or row[0] > worst[0]:
                    worst = row
    totals.append((worst[0], "E1-no-good", worst[1:]))

    # The sole paired E1 cell has at least three elements; otherwise E1 has
    # at most ten elements and is charged before E2.
    one_cell_diagonal = {
        "good": DIAGONAL["concentrated"],
        "7": E1_Q49_CELLS[1],
        "11": E1_Q49_CELLS[0] + fibre["11"],
        "both": E1_Q49_CELLS[1],
    }
    for typ in constraints:
        value = (
            one_cell_diagonal[typ] + Decimal(8) / LOWER
            + three23[typ][0] + square3_23 + root3_v1
        )
        totals.append((value, f"E1-one-cell-{typ}", three23[typ][1]))

    # E2 after charging at most ten E1 pivots.
    finite4_e2 = max(
        (four_payment(7, S, True), S)
        for S in common_rows(7, False)
    )
    finite3_e2 = max(
        (three_payment(7, S, "even"), S)
        for S in common_rows(7, True)
    )
    value = (
        DIAGONAL["e2_all_cells"] + Decimal(10) / LOWER
        + 4 * finite4_e2[0]
        + Decimal(4) * dec(cell10.tail_after(7)) / 25
        + Decimal(2) * dec(root_v2_7) / 3
    )
    totals.append((value, "E2-two-cells", finite4_e2[1]))
    value = (
        DIAGONAL["e2_cell"] + Decimal(18) / LOWER
        + finite3_e2[0] + Decimal(3) * dec(cell10.tail_after(7)) / 25
        + dec(root_v2_7) / 2
    )
    totals.append((value, "E2-one-cell", finite3_e2[1]))

    # If E1 and E2 were both charged, 19 E3 pivots force three in one
    # mod-9 cell; their span is automatically below UPPER.
    finite3_e3 = max(
        (three_payment(23, S, "even"), S)
        for S in common_rows(23, True)
    )
    value = (
        DIAGONAL["low_two_adic"] + Decimal(20) / LOWER
        + finite3_e3[0] + square3_23 + dec(root_v3_23) / 2
    )
    totals.append((value, "E3-cell", finite3_e3[1]))

    # Odd branches.  Cells with fewer than six pivots are charged.  Across
    # the three even and two odd reductions this costs at most 128 pivots.
    all6 = ((1 << 6) - 1,)
    single6 = tuple(1 << i for i in range(6))
    single8 = tuple(1 << i for i in range(8))

    periodic = []
    periodic.append(periodic_total(
        "O1-s1-match", 8, 3, ((1 << 8) - 1,), ((1 << 8) - 1,),
        ONE_ODD_CELLS[1], root_odd7, max7=2,
    ))
    for b, sizes, k in (
        (1, [6], 2), (2, [4, 2], 2), (3, [2, 2, 2], 3)
    ):
        periodic.append(periodic_total(
            f"O1-s1-fibre-{b}", 6, k, all6, all6,
            DIAGONAL["one_odd_cell_three49"], root_odd7,
            raw_charge=177, p7_blocks=collision_blocks(sizes),
        ))
    for s, sizes, k in (
        (2, [3, 3], 4),
        (3, [2, 2, 2], 3),
        (4, [2, 2, 1, 1], 3),
        (5, [2, 1, 1, 1, 1], 3),
        (6, [1] * 6, 3),
        (7, [1] * 6, 3),
    ):
        periodic.append(periodic_total(
            f"O1-s{s}", 6, k, all6, collision_blocks(sizes),
            ONE_ODD_CELLS[s], root_odd7, max7=6,
        ))
    for s, failure_diagonal in (
        (8, DIAGONAL["cap49_failure_8"]),
        (9, DIAGONAL["cap49_failure_9"]),
    ):
        periodic.append(periodic_total(
            f"O1-s{s}-match", 8, 4, ((1 << 8) - 1,), single8,
            ONE_ODD_CELLS[s], root_odd7, max7=2,
        ))
        periodic.append(periodic_total(
            f"O1-s{s}-failure", 6, 3, all6, single6,
            failure_diagonal, root_odd7, max7=6,
        ))

    # Both odd mod-4 classes: disjoint triples give the balanced six-pivot
    # row.  If they do not exist, there are at most eleven active odd cells.
    periodic.append(periodic_total(
        "O2-balanced", 6, 5, (7, 56), single6,
        DIAGONAL["odd_union"], root_odd7, max7=6,
    ))
    odd_four = max(
        (four_payment(7, S, False), S)
        for S in common_rows(7, False)
    )
    value = (
        DIAGONAL["odd_11_cells"] + Decimal(128) / LOWER
        + 4 * odd_four[0] + Decimal(4) * dec(cell10.tail_after(7)) / 25
        + Decimal(2) * dec(root_odd7) / 3
    )
    totals.append((value, "O2-at-most-11-cells", odd_four[1]))
    odd_same = max(
        (three_payment(7, S, "odd_two"), S)
        for S in common_rows(7, True)
    )
    value = (
        2 * DIAGONAL["one_odd_cell"] + Decimal(128) / LOWER
        + odd_same[0] + Decimal(3) * dec(cell10.tail_after(7)) / 25
        + dec(root_odd7) / 2
    )
    totals.append((value, "O2-one-residue", odd_same[1]))

    totals.extend((row[0], row[1], row[2:]) for row in periodic)
    controlling = None
    for total, name, witness in totals:
        slack = target - total
        assert slack > 0, (name, total, target, witness)
        print(
            f"branch={name} total={total:.18f} slack={slack:.18f} "
            f"witness={witness}"
        )
        row = (slack, name, total, witness)
        if controlling is None or row < controlling:
            controlling = row

    # Decimal-free audit of the controlling O1-s7 row.  The exact root
    # maximum is replaced by the upward rational ceiling 0.017398287.
    density = Fraction(55, 196)
    residue_count = density * PERIOD
    assert residue_count == 495
    prefix = Fraction(69_795, 196)
    assert prefix == residue_count * (1 - density)
    finite = 2 * density / 25 + 2 * (density + prefix) / LOWER
    factor = Fraction(1, 2)
    root_ceiling = Fraction(17_398_287, 10**9)
    assert root_odd7 < root_ceiling
    exact_total = (
        Fraction(4_928, 10**6)
        + finite
        + factor * root_ceiling
        + factor * 6 * cell10.tail_after(7) / 25
        + Fraction(128, LOWER)
    )
    exact_slack = TARGET - exact_total
    assert controlling[1] == "O1-s7"
    assert exact_slack > Fraction(67, 10**6)
    print(
        f"PASS controlling={controlling} "
        f"exact_total={dec(exact_total):.18f} "
        f"exact_slack={dec(exact_slack):.18f}"
    )


if __name__ == "__main__":
    main()
