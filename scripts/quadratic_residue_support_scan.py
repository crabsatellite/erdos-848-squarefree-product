#!/usr/bin/env python3
"""Uniform QR-screen bound for complementary-variable root tails."""

from __future__ import annotations

import argparse
from fractions import Fraction

from modulus_correlated_eight_prime_scan import support_records


def qr_mask(p: int, M: int) -> int:
    # A period records m=1,...,p.  Repetition is a geometric series in 2^p.
    pattern = 0
    for m in range(1, p + 1):
        if pow(m % p, (p - 1) // 2, p) == 1:
            pattern |= 1 << (m - 1)
    blocks, rem = divmod(M, p)
    if blocks:
        mask = pattern * ((1 << (blocks * p)) - 1) // ((1 << p) - 1)
    else:
        mask = 0
    if rem:
        mask |= (pattern & ((1 << rem) - 1)) << (blocks * p)
    return mask


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("bound", type=int)
    parser.add_argument("M", type=int, nargs="?")
    parser.add_argument("--D", type=int)
    args = parser.parse_args()
    if (args.M is None) == (args.D is None):
        parser.error("supply exactly one of M or --D")
    M = args.M
    if args.D is not None:
        M = (args.bound * args.bound + 25 * args.bound + 1) // (args.D**2)
    records = support_records(args.bound)
    primes = sorted({p for support, _, _, _ in records for p in support})
    masks = {p: qr_mask(p, M) for p in primes}
    best = None
    worst_degree = None
    for support, radical, multipliers, normalized in records:
        mask = (1 << M) - 1
        for p in support:
            mask &= masks[p]
        count = mask.bit_count()
        row = (count, support, radical, multipliers[-1], normalized)
        if best is None or row[0] > best[0]:
            best = row
        if args.D is not None:
            kappa5 = Fraction(12_769, 20_164)
            product = kappa5 + 25 * normalized
            lower = (
                product * Fraction(args.bound - 43, 25)
                - args.D
                - Fraction(args.bound, 25 * args.D)
                - Fraction(1, args.D)
                - Fraction(1, 5 * args.D)
                - 512 * count
                - 1
            )
            degree_row = (lower - Fraction(args.bound, 50), support, radical, count, product)
            if worst_degree is None or degree_row[0] < worst_degree[0]:
                worst_degree = degree_row
    count, support, radical, multiplier, normalized = best
    print(
        f"bound={args.bound} M={M} supports={len(records)} "
        f"distinct_primes={len(primes)}"
    )
    print(
        f"max_qr_count={count} root512_tail_bound={512*count} "
        f"support={list(support)} radical={radical} max_multiplier={multiplier}"
    )
    print(f"normalized_gain={normalized.numerator}/{normalized.denominator}")
    if worst_degree is not None:
        margin, support, radical, count, product = worst_degree
        print(
            f"D={args.D} worst_degree_support={list(support)} radical={radical} "
            f"qr_count={count} product_lower={float(product):.18f}"
        )
        print(f"uniform_degree_minus_N_over_50={float(margin):.6f}")


if __name__ == "__main__":
    main()
