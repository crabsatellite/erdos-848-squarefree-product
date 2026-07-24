#!/usr/bin/env python3
"""Corrected paper certificate on [10^7, 2*10^7).

The historical 10m program treated the last one-odd-class branch by choosing
one common cutoff prime and charging a single prime-square fibre.  That does
not by itself cover crossed common supports (for example, different third
pivots preserving 7 and 11).  This certificate keeps the historical even
valuation rows and replaces the whole odd terminal by the cutoff-7 periodic
threshold allocation used on the five-million block.

All finite densities are Fractions.  The decimal diagonal constants below
are upward ceilings from

  systematic_concentrated_diagonal_blocks 5000000 20000000

so the five-million ceilings may safely be reused on this block.
"""

from __future__ import annotations

from decimal import Decimal, getcontext
from fractions import Fraction

import systematic_mixed_cell_10m_close as cell10
import systematic_mixed_cell_5m_close as cell5


LOWER = 10_000_000
UPPER = 20_000_000
CELL_GAP = 1_000_000
TARGET = Fraction(1, 25) - Fraction(7, 25 * LOWER)


def dec(value: Fraction) -> Decimal:
    return Decimal(value.numerator) / Decimal(value.denominator)


def main() -> None:
    getcontext().prec = 80

    cell10.LOWER = LOWER
    cell10.UPPER = UPPER
    cell10.CELL_GAP = CELL_GAP
    cell5.LOWER = LOWER
    cell5.UPPER = UPPER
    cell5.TARGET = TARGET

    residual, degree_worst = cell10.degree_certificate()
    delta = Fraction(1, CELL_GAP + 1) + Fraction(1, LOWER)
    even_charge = 27 * delta
    assert residual > even_charge + Fraction(90, LOWER)

    root_v1 = cell10.exact_root_profile(7, 78, "v2=1")[0]
    root_v2 = cell10.exact_root_profile(7, 78, "v2=2")[0]
    root_v3 = cell10.exact_root_profile(7, 70, "v2>=3")[0]
    root_odd7 = cell10.exact_root_profile(7, 62, "odd")[0]

    even_four = cell10.best_four(29, True)
    even_cell = cell10.best_three(7, "even", True)
    square7_3 = Decimal(3) * dec(cell10.tail_after(7)) / 25
    square29_4 = Decimal(4) * dec(cell10.tail_after(29)) / 25

    totals: list[tuple[Decimal, str, object]] = [
        (
            cell10.DIAGONAL["unrestricted"] + even_four[0]
            + square29_4 + Decimal(2) * dec(root_v1) / 3,
            "E1-two-cells",
            even_four[3],
        ),
        (
            cell10.DIAGONAL["concentrated"] + Decimal(8) * dec(delta)
            + even_cell[0] + square7_3 + dec(root_v1) / 2,
            "E1-one-cell",
            even_cell[3],
        ),
        (
            cell10.DIAGONAL["unrestricted"] + even_four[0]
            + square29_4 + Decimal(2) * dec(root_v2) / 3,
            "E2-two-cells",
            even_four[3],
        ),
        (
            cell10.DIAGONAL["e2_cell"] + Decimal(17) * dec(delta)
            + even_cell[0] + square7_3 + dec(root_v2) / 2,
            "E2-one-cell",
            even_cell[3],
        ),
        (
            cell10.DIAGONAL["low_two_adic"] + Decimal(18) * dec(delta)
            + even_cell[0] + square7_3 + dec(root_v3) / 2,
            "E3-cell",
            even_cell[3],
        ),
    ]

    # Once all 27 even valuation/mod-9 cells are sparse, charge at most
    # 27*delta*N even pivots.  Odd mod-9 cells of size at most five cost at
    # most 90 further pivots.  The remaining active odd cells use exactly the
    # finite collision DP from the five-million certificate.
    all6 = ((1 << 6) - 1,)
    single6 = tuple(1 << i for i in range(6))
    single8 = tuple(1 << i for i in range(8))

    def add_periodic(row: tuple) -> None:
        totals.append((row[0] + dec(even_charge), row[1], row[2:]))

    add_periodic(cell5.periodic_total(
        "O1-s1-match", 8, 3, ((1 << 8) - 1,), ((1 << 8) - 1,),
        cell5.ONE_ODD_CELLS[1], root_odd7, raw_charge=90, max7=2,
    ))
    for fibres, sizes, k in (
        (1, [6], 2), (2, [4, 2], 2), (3, [2, 2, 2], 3)
    ):
        add_periodic(cell5.periodic_total(
            f"O1-s1-fibre-{fibres}", 6, k, all6, all6,
            cell5.DIAGONAL["one_odd_cell_three49"], root_odd7,
            raw_charge=139, p7_blocks=cell5.collision_blocks(sizes),
        ))
    for s, sizes, k in (
        (2, [3, 3], 4),
        (3, [2, 2, 2], 3),
        (4, [2, 2, 1, 1], 3),
        (5, [2, 1, 1, 1, 1], 3),
        (6, [1] * 6, 3),
        (7, [1] * 6, 3),
    ):
        add_periodic(cell5.periodic_total(
            f"O1-s{s}", 6, k, all6, cell5.collision_blocks(sizes),
            cell5.ONE_ODD_CELLS[s], root_odd7,
            raw_charge=90, max7=6,
        ))
    for s, failure_diagonal in (
        (8, cell5.DIAGONAL["cap49_failure_8"]),
        (9, cell5.DIAGONAL["cap49_failure_9"]),
    ):
        add_periodic(cell5.periodic_total(
            f"O1-s{s}-match", 8, 4, ((1 << 8) - 1,), single8,
            cell5.ONE_ODD_CELLS[s], root_odd7,
            raw_charge=90, max7=2,
        ))
        add_periodic(cell5.periodic_total(
            f"O1-s{s}-failure", 6, 3, all6, single6,
            failure_diagonal, root_odd7,
            raw_charge=90, max7=6,
        ))

    add_periodic(cell5.periodic_total(
        "O2-balanced", 6, 5, (7, 56), single6,
        cell10.DIAGONAL["odd_union"], root_odd7,
        raw_charge=90, max7=6,
    ))

    # If the two odd mod-4 classes do not admit disjoint triples of active
    # cells, there are at most eleven active cells.  The unrestricted odd
    # diagonal is a safe (deliberately non-sharp) replacement for the
    # eleven-cell diagonal.
    odd_four = cell10.best_four(7, False)
    odd_same = cell10.best_three(7, "odd_two", True)
    totals.extend([
        (
            cell10.DIAGONAL["odd_union"] + dec(even_charge)
            + Decimal(90) / LOWER + odd_four[0]
            + Decimal(4) * dec(cell10.tail_after(7)) / 25
            + Decimal(2) * dec(root_odd7) / 3,
            "O2-at-most-11-cells",
            odd_four[3],
        ),
        (
            Decimal(2) * cell10.DIAGONAL["one_odd_cell"]
            + dec(even_charge) + Decimal(90) / LOWER
            + odd_same[0] + Decimal(3) * dec(cell10.tail_after(7)) / 25
            + dec(root_odd7) / 2,
            "O2-one-residue",
            odd_same[3],
        ),
    ])

    target = dec(TARGET)
    controlling = None
    for total, name, witness in totals:
        slack = target - total
        assert slack > 0, (name, total, target, witness)
        print(
            f"branch={name} total={total:.18f} "
            f"slack={slack:.18f} witness={witness}"
        )
        row = (slack, name, total)
        if controlling is None or row < controlling:
            controlling = row

    # Decimal-free audit of the controlling E2 two-cell row.
    diagonal_ceiling = Fraction(25_294, 10**6)
    root_ceiling = Fraction(11_843_670, 10**9)
    assert root_v2 < root_ceiling
    exact_total = (
        diagonal_ceiling
        + 4 * even_four[1] / 25
        + Fraction(4 * even_four[2], LOWER)
        + 4 * cell10.tail_after(29) / 25
        + 2 * root_ceiling / 3
    )
    exact_slack = TARGET - exact_total
    assert exact_slack > Fraction(69, 10**6)
    assert controlling[1] == "E2-two-cells"
    print(
        f"degree_worst={degree_worst[1:7]} "
        f"residual={dec(residual):.18f}"
    )
    print(
        f"PASS controlling={controlling} "
        f"exact_total={dec(exact_total):.18f} "
        f"exact_slack={dec(exact_slack):.18f}"
    )


if __name__ == "__main__":
    main()
