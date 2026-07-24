#!/usr/bin/env python3
"""Actual-support degree certificate retaining the forced mod-5 square coset.

For q0=25 the transformed root modulus is d1=25b/g with g in {1,5},
so 5 always divides d1.  The complementary congruence d^2 m = c1 (mod d1)
therefore puts m in one of the two nonzero square cosets modulo 5.  We take
the worse coset for every support; no residue choice is assumed.
"""

from __future__ import annotations

import argparse
from fractions import Fraction
import math

from modulus_correlated_eight_prime_scan import primes_through
from quadratic_residue_support_scan import qr_mask
from systematic_mixed_degree_descent import (
    exact_degree_margin,
    support_maximum,
)


def mod5_cosets(M: int) -> tuple[int, int]:
    full = (1 << M) - 1
    square = qr_mask(5, M)
    nonzero = 0
    for m in range(1, M + 1):
        if m % 5:
            nonzero |= 1 << (m - 1)
    nonsquare = nonzero & (full ^ square)
    assert square.bit_count() + nonsquare.bit_count() == nonzero.bit_count()
    return square, nonsquare


def support_coset_maximum(
    N: int,
    k: int,
    M: int,
    primes: list[int],
    masks: list[int],
    cosets: tuple[int, int],
):
    rows = []
    for sign, coset in (("square", cosets[0]), ("nonsquare", cosets[1])):
        survivors, witness, count = support_maximum(
            N, k, M, primes, masks, initial_mask=coset
        )
        rows.append((survivors, witness, count, sign))
    return max(rows)


def certificate(N: int, K: int):
    D = N // K
    if D <= 0:
        raise ValueError("D must be positive")
    M = (N * N + 25 * N + 1 + D * D - 1) // (D * D)
    primes = primes_through(math.isqrt(N) + 1)
    masks = [qr_mask(p, M) for p in primes]
    cosets = mod5_cosets(M)
    least_product = 1
    feasible_max = 0
    for k, p in enumerate(primes[:12], 1):
        least_product *= p
        if least_product <= N:
            feasible_max = k
        else:
            break
    support = {
        k: support_coset_maximum(N, k, M, primes, masks, cosets)
        for k in range(feasible_max + 1)
    }
    rows = []
    for label, c_nu, even in (
        ("odd", 1, False),
        ("v2=1", 1, True),
        ("v2=2", 2, True),
        ("v2>=3", 4, True),
    ):
        for k, (survivors, witness, count, coset) in support.items():
            H = c_nu * 2 ** (k + 1)
            margin = exact_degree_margin(N, D, H, survivors, even)
            rows.append((margin, label, k, H, survivors, witness, count, coset))
    return D, M, min(rows), rows


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("N", type=int)
    parser.add_argument("--K", type=int, required=True)
    parser.add_argument("--all-rows", action="store_true")
    args = parser.parse_args()
    D, M, worst, rows = certificate(args.N, args.K)
    print(f"N={args.N} K={args.K} D={D} M={M}")
    if args.all_rows:
        for row in rows:
            margin, label, k, H, survivors, witness, count, coset = row
            print(
                f"case={label} k={k} H={H} survivors={survivors} "
                f"witness={list(witness)} prefixes={count} coset={coset} "
                f"margin={float(margin):.9f}"
            )
    margin, label, k, H, survivors, witness, count, coset = worst
    print(
        f"worst={label} k={k} H={H} survivors={survivors} "
        f"witness={list(witness)} prefixes={count} coset={coset} "
        f"margin={float(margin):.9f} residual={float(2 * margin - 1):.9f}"
    )


if __name__ == "__main__":
    main()
