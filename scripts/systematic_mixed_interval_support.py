#!/usr/bin/env python3
"""Uniform actual-support degree/root certificate on [2e8,2e9).

The degree uses one global support superset at N=2e9 and M=90001.  After
replacing floor(N/300) by its safe lower/upper bounds, every normalized row is
increasing, so N=2e8 controls.  The large-square root payment uses four broad
product-support blocks and a monotone Dusart prime-count bound.
"""

from __future__ import annotations

from decimal import Decimal, getcontext
from fractions import Fraction
import math

from modulus_correlated_eight_prime_scan import primes_through
from quadratic_residue_support_scan import qr_mask
from systematic_mixed_degree_close import KAPPA5
from systematic_mixed_degree_descent import support_maximum


LOWER = 200_000_000
UPPER = 2_000_000_000
DEGREE_K = 300
DEGREE_M = 90_001
ETA = Fraction(16, 100_000)  # 0.00016

ROOT_BLOCKS = (
    (200_000_000, 300_000_000, 75, Decimal("0.008954353732912")),
    (300_000_000, 500_000_000, 85, Decimal("0.007667014915985")),
    (500_000_000, 1_000_000_000, 100, Decimal("0.006334916183438")),
    (1_000_000_000, 2_000_000_000, 125, Decimal("0.004880538114951")),
)


def safe_degree_margin(N: int, H: int, survivors: int, even: bool) -> Fraction:
    # D=floor(N/300): D<=N/300 and D>=(N-299)/300.
    d_lower = Fraction(N - (DEGREE_K - 1), DEGREE_K)
    X = Fraction(N, 25) + 1
    x_over_d = X / d_lower
    main = (Fraction(4, 3) if even else 1) * KAPPA5 * Fraction(N - 43, 25)
    degree = (
        main - Fraction(N, DEGREE_K) - x_over_d - Fraction(1, 5) / d_lower
        - H * (survivors + 2 * x_over_d) - 1
    )
    return degree - Fraction(N, 50)


def degree_certificate():
    # The transformed complementary box is uniformly below 90001.  The
    # displayed rational controls the endpoint of the decreasing envelope.
    d_lower = Fraction(LOWER - (DEGREE_K - 1), DEGREE_K)
    m_upper = Fraction(LOWER * LOWER + 25 * LOWER + 1, 1) / (d_lower * d_lower)
    assert m_upper < DEGREE_M

    primes = primes_through(math.isqrt(UPPER) + 1)
    masks = [qr_mask(p, DEGREE_M) for p in primes]
    support = {}
    for k in range(12):
        if math.prod(primes[:k]) > UPPER:
            break
        support[k] = support_maximum(UPPER, k, DEGREE_M, primes, masks)

    rows = []
    for label, c_nu, even in (
        ("odd", 1, False), ("v2=1", 1, True),
        ("v2=2", 2, True), ("v2>=3", 4, True),
    ):
        for k, (survivors, witness, prefixes) in support.items():
            H = c_nu * 2 ** (k + 1)
            margin = safe_degree_margin(LOWER, H, survivors, even)
            rows.append((margin, label, k, H, survivors, witness, prefixes))

    worst = min(rows)
    margin = worst[0]
    residual_ratio = (2 * margin - 1) / LOWER
    # In every fixed row margin/N is increasing: its affine leading
    # coefficient is positive, while all remaining positive payments divided
    # by N decrease.  Therefore the lower endpoint controls the normalized
    # residual as well.
    assert residual_ratio > 2 * ETA
    return m_upper, worst, residual_ratio, support


def dusart_intermediate(L: int, split: int) -> Decimal:
    dL = Decimal(L)
    logarithm = (dL / Decimal(split + 1)).ln()
    return Decimal(6) / split * (
        Decimal(1) / logarithm
        + Decimal(1) / logarithm**2
        + Decimal("2.51") / logarithm**3
    )


def root_block_certificate(L: int, U: int, split: int):
    M = split * split
    primes = primes_through(math.isqrt(U) + 1)
    masks = [qr_mask(p, M) for p in primes]
    support = []
    worst = None
    dL = Decimal(L)
    # Y=floor(N/split)>=N/(split+1), hence this is a uniform a-bound.
    a_bound = Decimal(2) * (dL / 25 + 2) * Decimal(split + 1) / dL
    for k in range(12):
        if math.prod(primes[:k]) > U:
            break
        survivors, witness, prefixes = support_maximum(U, k, M, primes, masks)
        support.append((k, survivors, witness, prefixes))
        for label, c_nu in (("odd/v2=1", 1), ("v2=2", 2), ("v2>=3", 4)):
            H = c_nu * 2 ** (k + 1)
            payment = Decimal(H) * (Decimal(survivors) + a_bound)
            row = (payment, label, k, H, survivors, witness, prefixes)
            if worst is None or row[0] > worst[0]:
                worst = row
    root = Decimal(6) * worst[0] / dL
    total = dusart_intermediate(L, split) + root
    return total, worst, support


def main() -> None:
    getcontext().prec = 60
    m_upper, worst, residual_ratio, _ = degree_certificate()
    print(f"degree_interval=[{LOWER},{UPPER}) K={DEGREE_K} M_upper={float(m_upper):.12f}")
    print(
        f"degree_worst={worst[1:]} margin={float(worst[0]):.12f} "
        f"residual_ratio={float(residual_ratio):.15f} eta={float(ETA):.15f}"
    )
    for L, U, split, ceiling in ROOT_BLOCKS:
        total, root_worst, _ = root_block_certificate(L, U, split)
        assert total < ceiling, (L, U, total, ceiling)
        print(
            f"root_block=[{L},{U}) split={split} worst={root_worst[1:]} "
            f"total={total:.18f} ceiling={ceiling:.18f} slack={ceiling-total:.18f}"
        )

    residual = Decimal(residual_ratio.numerator) / Decimal(residual_ratio.denominator)
    odd_density = residual - Decimal(ETA.numerator) / Decimal(ETA.denominator)
    even_pair_gap = Decimal(2) / Decimal(ETA.numerator) * Decimal(ETA.denominator)
    odd_pair_gap = Decimal(1) / odd_density
    assert even_pair_gap < Decimal(4 * (3 * 7 * 11) ** 2)
    assert odd_pair_gap < Decimal(4 * (7 * 11) ** 2)
    print(
        f"gap_certificate even_pair<{even_pair_gap:.9f} "
        f"odd_pair<{odd_pair_gap:.9f}"
    )


if __name__ == "__main__":
    main()
