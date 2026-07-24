#!/usr/bin/env python3
"""Valuation-stratified joint mixed certificate on [2e7, 4e7).

This keeps the original Hall cut.  It refines the even quotient support by

  v2(t)=1: m odd;  v2(t)=2: m=1 (mod 4);  v2(t)>=3: m=1 (mod 8),

and partitions the even residual pivots into those three valuation classes.
For the controlling two-odd branch it uses cutoff 19 and the degree-3 upper
Bonferroni polynomial for the close pair's finite union.  If prime 3 is
common, the opposite odd mod-4 class is forced into one mod-9 cell, so the
corresponding restricted diagonal is used directly.
"""

from __future__ import annotations

from decimal import Decimal, getcontext
from fractions import Fraction
import math

import systematic_mixed_joint_tail_close as joint
import systematic_mixed_cell_10m_close as cell10
from modulus_correlated_eight_prime_scan import primes_through
from quadratic_residue_support_scan import qr_mask
from systematic_mixed_full_close import alternating, endpoint_terms
from systematic_mixed_interval_support import dusart_intermediate
from systematic_mod5_actual_support import mod5_cosets, support_coset_maximum


LOWER = 20_000_000
UPPER = 40_000_000
GAP = 20_000
EVEN_CUTOFF = 47
ODD_CUTOFF = 19
TAIL47 = Fraction(3_887, 1_000_000)

DIAGONAL = {
    "unrestricted": Decimal("0.025294"),
    "concentrated": Decimal("0.019681"),
    "low_two_adic": Decimal("0.015812"),
    "e2_cell": Decimal("0.016164"),
    "odd_union": Decimal("0.012652"),
    "odd_plus_cell": Decimal("0.007036"),
    "one_odd": Decimal("0.006330"),
    "one_odd_cell": Decimal("0.000711"),
}

ROOTS = {
    "v2=1": (106, Decimal("0.008122742")),
    "v2=2": (100, Decimal("0.009693804")),
    "v2>=3": (70, Decimal("0.012874327")),
    "odd": (80, Decimal("0.010147827")),
}


def dec(value: Fraction) -> Decimal:
    return Decimal(value.numerator) / Decimal(value.denominator)


def tail_after(cutoff: int) -> Fraction:
    if cutoff <= 47:
        return TAIL47 + sum(
            (Fraction(1, p * p) for p in primes_through(47) if p > cutoff),
            Fraction(),
        )
    return TAIL47 - sum(
        (Fraction(1, p * p) for p in primes_through(cutoff) if p > 47),
        Fraction(),
    )


def quotient_mask(M: int, label: str) -> int:
    if label == "v2=1":
        modulus, residue = 2, 1
    elif label == "v2=2":
        modulus, residue = 4, 1
    elif label == "v2>=3":
        modulus, residue = 8, 1
    elif label == "odd":
        return (1 << M) - 1
    else:
        raise ValueError(label)
    return sum(
        1 << (m - 1) for m in range(1, M + 1) if m % modulus == residue
    )


def root_profile(split: int, label: str) -> tuple[Decimal, tuple]:
    M = split * split
    primes = primes_through(math.isqrt(UPPER) + 1)
    masks = [qr_mask(p, M) for p in primes]
    base_cosets = mod5_cosets(M)
    qmask = quotient_mask(M, label)
    cosets = (base_cosets[0] & qmask, base_cosets[1] & qmask)
    dL = Decimal(LOWER)
    a_bound = Decimal(2) * (dL / 25 + 2) * Decimal(split + 1) / dL
    c_nu = {"v2=1": 1, "v2=2": 2, "v2>=3": 4, "odd": 1}[label]
    worst = None
    product = 1
    for k in range(12):
        if k:
            product *= primes[k - 1]
        if product > UPPER:
            break
        survivors, witness, prefixes, coset = support_coset_maximum(
            UPPER, k, M, primes, masks, cosets
        )
        H = c_nu * 2 ** (k + 1)
        payment = Decimal(H) * (Decimal(survivors) + a_bound)
        row = (payment, k, H, survivors, witness, prefixes, coset)
        if worst is None or row > worst:
            worst = row
    value = dusart_intermediate(LOWER, split) + Decimal(6) * worst[0] / dL
    return value, worst


def finite_rows(
    cutoff: int,
    parity: str,
    gap: Fraction,
    require_three: bool,
    pair_degree_three: bool = False,
) -> list[tuple[Fraction, int, tuple[int, ...]]]:
    old_cutoff = joint.CUTOFF
    joint.CUTOFF = cutoff
    try:
        rows = []
        for odd_common in joint.common_sets(gap, require_three):
            all_common = (
                (2,) + odd_common if parity == "odd_one" else odd_common
            )
            i3, e3 = joint.finite_three(
                all_common, (2,) if parity == "even" else ()
            )
            if parity == "odd_two" and pair_degree_three:
                odd_density, odd_error = joint.odd_two_finite(odd_common)
                primes = [
                    p for p in joint.finite_primes_through(cutoff) if p != 2
                ]
                common_set = set(odd_common)
                multiplicities = [
                    1 if p in common_set else 2 for p in primes
                ]
                pair_union = 1 - alternating(
                    [
                        Fraction(m, p * p)
                        for m, p in zip(multiplicities, primes)
                    ],
                    3,
                )
                pair_error = endpoint_terms(multiplicities, 3)
                i2 = Fraction(1, 4) + pair_union / 4 + odd_density / 2
                e2 = 5 + pair_error + 2 * odd_error
            else:
                i2, e2 = joint.finite_two(odd_common, parity)
            rows.append((i3 + i2, e3 + e2, odd_common))
        return rows
    finally:
        joint.CUTOFF = old_cutoff


def best_payment(rows: list[tuple[Fraction, int, tuple[int, ...]]]):
    return max(
        (
            dec(density) / 25 + Decimal(error) / LOWER,
            density,
            error,
            support,
        )
        for density, error, support in rows
    )


def degree_certificate() -> tuple[Fraction, tuple]:
    old = (joint.LOWER, joint.ACTUAL_DEGREE_LOWER, joint.CUTOFF, joint.TAIL47)
    joint.LOWER = LOWER
    joint.ACTUAL_DEGREE_LOWER = UPPER
    joint.CUTOFF = ODD_CUTOFF
    joint.TAIL47 = tail_after(ODD_CUTOFF)
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
    delta = Fraction(1, GAP + 1) + Fraction(1, LOWER)
    even_charge = 3 * delta
    odd_mass = residual - even_charge
    assert odd_mass > 0

    even_generic = best_payment(
        finite_rows(EVEN_CUTOFF, "even", Fraction(GAP + 1), False)
    )
    even_common3 = best_payment(
        finite_rows(EVEN_CUTOFF, "even", Fraction(GAP + 1), True)
    )
    odd_two = best_payment(
        finite_rows(
            ODD_CUTOFF, "odd_two", Fraction(2, 1) / odd_mass, False, True
        )
    )
    odd_two_common3 = best_payment(
        finite_rows(
            ODD_CUTOFF, "odd_two", Fraction(2, 1) / odd_mass, True, True
        )
    )
    odd_one = best_payment(
        finite_rows(
            ODD_CUTOFF, "odd_one", Fraction(1, 1) / odd_mass, False
        )
    )
    odd_one_common3 = best_payment(
        finite_rows(
            ODD_CUTOFF, "odd_one", Fraction(1, 1) / odd_mass, True
        )
    )

    cell10.LOWER = LOWER
    cell10.UPPER = UPPER
    root_values = {}
    for label, (split, ceiling) in ROOTS.items():
        value, witness_N, worst = cell10.exact_root_profile(
            ODD_CUTOFF, split, label
        )
        assert dec(value) < ceiling, (label, value, ceiling)
        root_values[label] = ceiling
        print(
            f"root={label} split={split} value={dec(value):.18f} "
            f"ceiling={ceiling:.18f} witness_N={witness_N} "
            f"worst={worst[1:4]}"
        )

    square_even = Decimal(3) * dec(tail_after(EVEN_CUTOFF)) / 25
    square_odd = Decimal(3) * dec(tail_after(ODD_CUTOFF)) / 25
    target = Decimal(1) / 25 - Decimal(7) / (25 * Decimal(LOWER))

    eg, ec = even_generic[0], even_common3[0]
    o2, o23 = odd_two[0], odd_two_common3[0]
    o1, o123 = odd_one[0], odd_one_common3[0]
    totals = {
        "E1-generic": DIAGONAL["unrestricted"] + eg + square_even
        + root_values["v2=1"] / 2,
        "E1-common3": DIAGONAL["concentrated"] + ec + square_even
        + root_values["v2=1"] / 2,
        "E2-generic": DIAGONAL["unrestricted"] + eg + square_even
        + root_values["v2=2"] / 2,
        "E2-common3": DIAGONAL["e2_cell"] + dec(delta) + ec
        + square_even + root_values["v2=2"] / 2,
        "E3-generic": DIAGONAL["low_two_adic"] + 2 * dec(delta) + eg
        + square_even + root_values["v2>=3"] / 2,
        "E3-common3": DIAGONAL["low_two_adic"] + 2 * dec(delta) + ec
        + square_even + root_values["v2>=3"] / 2,
        "O2-generic": DIAGONAL["odd_union"] + dec(even_charge) + o2
        + square_odd + root_values["odd"] / 2,
        "O2-common3": DIAGONAL["odd_plus_cell"] + dec(even_charge) + o23
        + square_odd + root_values["odd"] / 2,
        "O1-generic": DIAGONAL["one_odd"] + dec(even_charge) + o1
        + square_odd + root_values["odd"] / 2,
        "O1-common3": DIAGONAL["one_odd_cell"] + dec(even_charge) + o123
        + square_odd + root_values["odd"] / 2,
    }

    print(
        f"degree_worst={degree_worst[1:7]} residual={dec(residual):.18f} "
        f"delta={dec(delta):.18f} odd_mass={dec(odd_mass):.18f}"
    )
    for name, row in (
        ("even-generic", even_generic),
        ("even-common3", even_common3),
        ("odd-two", odd_two),
        ("odd-two-common3", odd_two_common3),
        ("odd-one", odd_one),
        ("odd-one-common3", odd_one_common3),
    ):
        print(
            f"finite={name} support={list(row[3])} "
            f"density={dec(row[1]):.18f} error={row[2]} "
            f"payment={row[0]:.18f}"
        )

    controlling = None
    for name, total in totals.items():
        slack = target - total
        assert slack > 0, (name, total, target)
        print(f"branch={name} total={total:.18f} slack={slack:.18f}")
        row = (slack, name, total)
        if controlling is None or row < controlling:
            controlling = row

    # Decimal-free audit of the controlling two-odd generic row.  Each
    # displayed decimal below is an upward rational ceiling.
    exact_total = (
        Fraction(12_652, 10**6)
        + even_charge
        + odd_two[1] / 25 + Fraction(odd_two[2], LOWER)
        + 3 * tail_after(ODD_CUTOFF) / 25
        + Fraction(10_147_827, 2 * 10**9)
    )
    exact_slack = (
        Fraction(1, 25) - Fraction(7, 25 * LOWER) - exact_total
    )
    assert controlling[1] == "O2-generic"
    assert exact_slack > Fraction(85, 10**6)
    print(
        f"PASS controlling={controlling} "
        f"exact_total={dec(exact_total):.18f} "
        f"exact_slack={dec(exact_slack):.18f}"
    )


if __name__ == "__main__":
    main()
