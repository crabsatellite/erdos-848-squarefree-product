#!/usr/bin/env python3
"""Mod-9-cell/valuation certificate for the mixed close on [1e7, 2e7).

The Hall cut is unchanged.  Sparse cells are charged in raw cardinality.
Two dense cells supply two close pairs and the four-pivot Boolean inequality

  1_{cap_i(F_i union H_i)}
    <= (1/2) sum_{|S|=3} 1_{cap_{i in S} F_i}
       + (1/2) sum_i 1_{H_i}.

The residual one-odd-class branch is evaluated exactly over the four possible
odd-prime coincidence states (three coincident edges or no coincidence), with
degree-3 pair-survivor lower bounds and a degree-4 triple-survivor upper bound.
"""

from __future__ import annotations

from decimal import Decimal, getcontext
from fractions import Fraction
from itertools import product
import math

import systematic_mixed_joint_tail_close as joint
from modulus_correlated_eight_prime_scan import primes_through
from q503_endpoint import prime_pi
from quadratic_residue_support_scan import qr_mask
from systematic_mixed_full_close import alternating, endpoint_terms
from systematic_mod5_actual_support import mod5_cosets, support_coset_maximum


LOWER = 10_000_000
UPPER = 20_000_000
CELL_GAP = 1_000_000
TAIL47 = Fraction(3_887, 1_000_000)

DIAGONAL = {
    "unrestricted": Decimal("0.025294"),
    "concentrated": Decimal("0.019681"),
    "low_two_adic": Decimal("0.015812"),
    "e2_cell": Decimal("0.016164"),
    "odd_union": Decimal("0.012652"),
    "one_odd": Decimal("0.006330"),
    "one_odd_cell": Decimal("0.000711"),
}


def dec(value: Fraction) -> Decimal:
    return Decimal(value.numerator) / Decimal(value.denominator)


def tail_after(cutoff: int) -> Fraction:
    return TAIL47 + sum(
        (Fraction(1, p * p) for p in primes_through(47) if p > cutoff),
        Fraction(),
    )


def quotient_mask(M: int, label: str) -> int:
    if label == "v2=1":
        modulus = 2
    elif label == "v2=2":
        modulus = 4
    elif label == "v2>=3":
        modulus = 8
    elif label == "odd":
        return (1 << M) - 1
    else:
        raise ValueError(label)
    return sum(
        1 << (m - 1) for m in range(1, M + 1) if m % modulus == 1
    )


def exact_root_profile(cutoff: int, split: int, label: str):
    """Exact prime-jump maximum of the fixed-support root envelope."""
    M = split * split
    support_primes = primes_through(math.isqrt(UPPER) + 1)
    masks = [qr_mask(p, M) for p in support_primes]
    base_cosets = mod5_cosets(M)
    qmask = quotient_mask(M, label)
    cosets = (base_cosets[0] & qmask, base_cosets[1] & qmask)
    c_nu = {"v2=1": 1, "v2=2": 2, "v2>=3": 4, "odd": 1}[label]
    rows = []
    product_bound = 1
    for k in range(12):
        if k:
            product_bound *= support_primes[k - 1]
        if product_bound > UPPER:
            break
        survivors, witness, prefixes, coset = support_coset_maximum(
            UPPER, k, M, support_primes, masks, cosets
        )
        rows.append(
            (c_nu * 2 ** (k + 1), survivors, k, witness, prefixes, coset)
        )

    def value(N: int):
        Y = N // split
        a_bound = 2 * (Fraction(N, 25) + 2) / Y
        worst = max(
            (H * (survivors + a_bound), k, H, survivors, witness)
            for H, survivors, k, witness, _, _ in rows
        )
        total = (
            Fraction(6 * (prime_pi(Y) - prime_pi(cutoff)), N)
            + 6 * worst[0] / N
        )
        return total, worst

    candidates = {LOWER}
    candidates.update(
        split * p
        for p in primes_through((UPPER - 1) // split)
        if LOWER <= split * p < UPPER
    )
    return max((value(N)[0], N, value(N)[1]) for N in candidates)


def with_cutoff(cutoff: int, callback):
    old = joint.CUTOFF
    joint.CUTOFF = cutoff
    try:
        return callback()
    finally:
        joint.CUTOFF = old


def best_three(cutoff: int, parity: str, require_three: bool):
    """Best old three-pivot joint row on the cell-gap relaxation."""
    def calculate():
        rows = []
        for odd_common in joint.common_sets(Fraction(CELL_GAP + 1), require_three):
            all_common = (
                (2,) + odd_common if parity == "odd_one" else odd_common
            )
            i3, e3 = joint.finite_three(
                all_common, (2,) if parity == "even" else ()
            )
            i2, e2 = joint.finite_two(odd_common, parity)
            rows.append((i3 + i2, e3 + e2, odd_common))
        return max(
            (
                dec(density) / 25 + Decimal(error) / LOWER,
                density,
                error,
                support,
            )
            for density, error, support in rows
        )
    return with_cutoff(cutoff, calculate)


def best_four(cutoff: int, inactive_two: bool):
    """Four-pivot row when all four triples have prime 3 non-common."""
    def calculate():
        rows = []
        for common in joint.common_sets(Fraction(CELL_GAP + 1), False):
            density, error = joint.finite_three(
                common, (2,) if inactive_two else ()
            )
            payment = 4 * dec(density) / 25 + Decimal(4 * error) / LOWER
            rows.append((payment, density, error, common))
        return max(rows)
    return with_cutoff(cutoff, calculate)


def high_order_one_odd(common: tuple[int, ...]):
    """Exact four-state allocation at cutoff 17 for the one-odd branch."""
    cutoff = 17
    primes = primes_through(cutoff)
    common_set = set(common)
    noncommon = [p for p in primes if p not in common_set]
    best = None
    for states in product(range(4), repeat=len(noncommon)):
        state = dict(zip(noncommon, states))
        pair_multiplicities = []
        for edge in range(3):
            pair_multiplicities.append([
                1 if p in common_set
                else (1 if state[p] == edge else 2)
                for p in primes
            ])
        triple_multiplicities = [
            1 if p in common_set else (3 if state[p] == 3 else 2)
            for p in primes
        ]
        pair_survivors = sum((
            alternating(
                [Fraction(m, p * p) for m, p in zip(mult, primes)], 3
            )
            for mult in pair_multiplicities
        ), Fraction())
        triple_survivor = alternating(
            [
                Fraction(m, p * p)
                for m, p in zip(triple_multiplicities, primes)
            ],
            4,
        )
        two_of_three = 1 - pair_survivors + 2 * triple_survivor
        allocation_error = (
            sum(endpoint_terms(mult, 3) for mult in pair_multiplicities)
            + 2 * endpoint_terms(triple_multiplicities, 4)
        )
        i2 = Fraction(1, 4) + 3 * two_of_three / 4
        e2 = 5 + 3 * allocation_error

        def finite_three_row():
            return joint.finite_three((2,) + common, ())

        i3, e3 = with_cutoff(cutoff, finite_three_row)
        payment = dec(i3 + i2) / 25 + Decimal(e3 + e2) / LOWER
        row = (
            payment, i3 + i2, e3 + e2, states,
            two_of_three, allocation_error,
        )
        if best is None or row[0] > best[0]:
            best = row
    return best


def degree_certificate():
    old = (joint.LOWER, joint.ACTUAL_DEGREE_LOWER, joint.CUTOFF, joint.TAIL47)
    joint.LOWER = LOWER
    joint.ACTUAL_DEGREE_LOWER = UPPER
    joint.CUTOFF = 17
    joint.TAIL47 = tail_after(17)
    try:
        return joint.one_form_degree_certificate()
    finally:
        (
            joint.LOWER,
            joint.ACTUAL_DEGREE_LOWER,
            joint.CUTOFF,
            joint.TAIL47,
        ) = old


def main() -> None:
    getcontext().prec = 60
    residual, degree_worst = degree_certificate()
    delta = Fraction(1, CELL_GAP + 1) + Fraction(1, LOWER)
    even_charge = 27 * delta
    assert residual > even_charge

    root_v1 = exact_root_profile(7, 78, "v2=1")
    root_v2 = exact_root_profile(7, 78, "v2=2")
    root_v3 = exact_root_profile(7, 70, "v2>=3")
    root_odd7 = exact_root_profile(7, 62, "odd")
    root_odd17 = exact_root_profile(17, 62, "odd")
    roots = {
        "v1": dec(root_v1[0]),
        "v2": dec(root_v2[0]),
        "v3": dec(root_v3[0]),
        "odd7": dec(root_odd7[0]),
        "odd17": dec(root_odd17[0]),
    }
    for name, row in (
        ("v1", root_v1), ("v2", root_v2), ("v3", root_v3),
        ("odd7", root_odd7), ("odd17", root_odd17),
    ):
        print(
            f"root={name} value={dec(row[0]):.18f} witness_N={row[1]} "
            f"worst={row[2][1:4]}"
        )

    even_four = best_four(29, True)
    odd_four = best_four(7, False)
    even_cell = best_three(7, "even", True)
    odd_two_cell = best_three(7, "odd_two", True)
    odd_one_cell = best_three(7, "odd_one", True)
    high_rows = {
        common: high_order_one_odd(common)
        for common in ((), (7,), (11,), (13,), (17,))
    }

    square7_3 = Decimal(3) * dec(tail_after(7)) / 25
    square7_4 = Decimal(4) * dec(tail_after(7)) / 25
    square17_3 = Decimal(3) * dec(tail_after(17)) / 25
    square29_4 = Decimal(4) * dec(tail_after(29)) / 25
    target = Decimal(1) / 25 - Decimal(7) / (25 * Decimal(LOWER))

    totals = {
        "E1-two-cells": DIAGONAL["unrestricted"] + even_four[0]
        + square29_4 + 2 * roots["v1"] / 3,
        "E1-one-cell": DIAGONAL["concentrated"] + 8 * dec(delta)
        + even_cell[0] + square7_3 + roots["v1"] / 2,
        "E2-two-cells": DIAGONAL["unrestricted"] + even_four[0]
        + square29_4 + 2 * roots["v2"] / 3,
        "E2-one-cell": DIAGONAL["e2_cell"] + 17 * dec(delta)
        + even_cell[0] + square7_3 + roots["v2"] / 2,
        "E3-cell": DIAGONAL["low_two_adic"] + 18 * dec(delta)
        + even_cell[0] + square7_3 + roots["v3"] / 2,
        "O2-different-dense-cells": DIAGONAL["odd_union"]
        + dec(even_charge) + odd_four[0] + square7_4
        + 2 * roots["odd7"] / 3,
        "O2-same-dense-cell": 2 * DIAGONAL["one_odd_cell"]
        + 43 * dec(delta) + odd_two_cell[0] + square7_3
        + roots["odd7"] / 2,
        "O1-one-cell": DIAGONAL["one_odd_cell"] + 36 * dec(delta)
        + odd_one_cell[0] + square7_3 + roots["odd7"] / 2,
        "O1-no-common-cutoff-prime": DIAGONAL["one_odd"]
        + 36 * dec(delta) + high_rows[()][0] + square17_3
        + roots["odd17"] / 2,
    }
    for q in (7, 11, 13, 17):
        # The chosen close pair lies in one mod-9 cell.  If q is common and
        # no alternative third pivot breaks it, all pivots outside that cell
        # lie in one residue modulo q^2.  Count that fibre raw.
        fibre = (
            DIAGONAL["one_odd_cell"] + Decimal(1) / (4 * q * q)
            + Decimal(1) / LOWER
        )
        totals[f"O1-common-{q}"] = (
            fibre + 36 * dec(delta) + high_rows[(q,)][0]
            + square17_3 + roots["odd17"] / 2
        )

    print(
        f"degree_worst={degree_worst[1:7]} residual={dec(residual):.18f} "
        f"delta={dec(delta):.18f} even_charge={dec(even_charge):.18f}"
    )
    print(
        f"finite_even_four support={list(even_four[3])} "
        f"payment={even_four[0]:.18f}; "
        f"finite_odd_four support={list(odd_four[3])} "
        f"payment={odd_four[0]:.18f}"
    )
    for common, row in high_rows.items():
        print(
            f"high_one_odd common={list(common)} payment={row[0]:.18f} "
            f"density={dec(row[1]):.18f} error={row[2]} "
            f"allocation={row[3]}"
        )

    controlling = None
    for name, total in totals.items():
        slack = target - total
        assert slack > 0, (name, total, target)
        print(f"branch={name} total={total:.18f} slack={slack:.18f}")
        row = (slack, name, total)
        if controlling is None or row < controlling:
            controlling = row
    print(f"PASS controlling={controlling}")


if __name__ == "__main__":
    main()
