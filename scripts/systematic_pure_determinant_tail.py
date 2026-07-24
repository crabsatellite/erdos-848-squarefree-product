#!/usr/bin/env python3
"""Determinant square-sieve high-tail scan for pure 18 parity triples."""

from __future__ import annotations

import argparse
from functools import lru_cache
import math

from determinant_pell_orbit_scan import PELL_GROWTH
from modulus_correlated_eight_prime_scan import primes_through
from quadratic_residue_support_scan import qr_mask
from systematic_mod5_actual_support import mod5_cosets


PATTERNS = tuple(
    (0, x, y)
    for x in (50, 100, 150)
    for y in (100, 150, 200)
    if x < y
)


def uniform_h2_root_table() -> tuple[list[tuple[tuple[int, int, int], int]], int]:
    """Finite residue table used by the pure h=2 paper corollary."""
    K = 4
    quotient_mask = 1 << (3 - 1)
    rows = []
    for pattern in PATTERNS:
        gaps = tuple(
            pattern[j] - pattern[i] for i, j in ((0, 1), (0, 2), (1, 2))
        )
        period = math.lcm(25, *gaps)
        best = 0
        for b in range(18, period + 1, 25):
            pivots = tuple(b + offset for offset in pattern)
            total = 0
            for i, j in ((0, 1), (0, 2), (1, 2)):
                d = pivots[j] - pivots[i]
                total += exact_root_sum(
                    K,
                    d,
                    pivots[j] % d,
                    pivots[i] % d,
                    quotient_mask,
                    quotient_mask,
                )
            best = max(best, total)
        rows.append((pattern, best))
    return rows, max(value for _, value in rows)


def bounded_qr_mask(p: int, K: int) -> int:
    """QR mask on [1,K] without constructing a full period when p>K."""
    if p <= K:
        return qr_mask(p, K)
    mask = 0
    exponent = (p - 1) // 2
    for m in range(1, K + 1):
        if pow(m, exponent, p) == 1:
            mask |= 1 << (m - 1)
    return mask


def support_data(N: int, split: int):
    K = split * split
    primes = tuple(primes_through(math.isqrt(N) + 1))
    masks = {p: bounded_qr_mask(p, K) for p in primes}
    odd_mask = sum(1 << (m - 1) for m in range(1, K + 1, 2))
    nonsquare5 = mod5_cosets(K)[1] & odd_mask

    @lru_cache(maxsize=None)
    def quotient_mask(t: int) -> int:
        """Exact pure-class quotient mask, retaining every prime divisor of t."""
        n = t
        while n % 2 == 0:
            n //= 2
        mask = nonsquare5
        for p in primes:
            if p == 5:
                continue
            if p * p > n:
                break
            if n % p:
                continue
            mask &= masks[p]
            while n % p == 0:
                n //= p
        if n > 1 and n != 5:
            mask &= bounded_qr_mask(n, K)
        return mask

    return K, quotient_mask


def orbit_length(N: int, d: int) -> int:
    height = 2.0 * math.sqrt(N * (N * N + 1) / d)
    return 1 + max(0, int(math.log(height) / math.log(PELL_GROWTH)))


@lru_cache(maxsize=None)
def exact_root_sum(
    K: int, d: int, A: int, B: int, left_mask: int, right_mask: int
) -> int:
    """Sum the admissible unit root classes for the two exact quotient masks."""
    right_counts = [0] * d
    bits = right_mask
    while bits:
        bit = bits & -bits
        s = bit.bit_length()
        right_counts[(B * s) % d] += 1
        bits ^= bit
    total = 0
    for z in range(d):
        if math.gcd(z, d) != 1:
            continue
        multiplier = A * z * z
        bits = left_mask
        while bits:
            bit = bits & -bits
            r = bit.bit_length()
            total += right_counts[(multiplier * r) % d]
            bits ^= bit
    return total


def pair_bound(
    K: int,
    L: int,
    b: int,
    c: int,
    left_mask: int,
    right_mask: int,
) -> tuple[int, int]:
    d = c - b
    left = left_mask.bit_count()
    right = right_mask.bit_count()
    g = math.gcd(b, d)
    envelope = min(
        d * left * right,
        left * (g * K + d),
        right * (g * K + d),
    )
    root_sum = exact_root_sum(
        K, d, c % d, b % d, left_mask, right_mask
    )
    assert root_sum <= envelope
    return L * root_sum, L * envelope


def certificate(N: int, split: int):
    Y = N // split
    if Y < 200:
        raise ValueError("the determinant threshold must dominate every gap")
    K, quotient_mask = support_data(N, split)
    orbit_lengths = {d: orbit_length(N, d) for d in (50, 100, 150, 200)}
    worst = None
    triples = 0
    for b in range(18, N + 1, 25):
        if b % 25 != 18:
            continue
        for pattern in PATTERNS:
            pivots = tuple(b + offset for offset in pattern)
            if pivots[-1] > N:
                continue
            masks = tuple(quotient_mask(t) for t in pivots)
            sizes = tuple(mask.bit_count() for mask in masks)
            total = 0
            envelope_total = 0
            for i, j in ((0, 1), (0, 2), (1, 2)):
                d = pivots[j] - pivots[i]
                exact, envelope = pair_bound(
                    K,
                    orbit_lengths[d],
                    pivots[i],
                    pivots[j],
                    masks[i],
                    masks[j],
                )
                total += exact
                envelope_total += envelope
            total = min(total, N // 50 + 1)
            row = (total, pivots, sizes, envelope_total)
            if worst is None or row[0] > worst[0]:
                worst = row
            triples += 1
    return Y, K, triples, worst


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("N", type=int)
    parser.add_argument("--split", type=int, required=True)
    args = parser.parse_args()
    Y, K, triples, worst = certificate(args.N, args.split)
    print(
        f"N={args.N} split={args.split} Y={Y} K={K} "
        f"triples={triples}"
    )
    print(
        f"worst_two_high_union={worst[0]} normalized={worst[0]/args.N:.18f} "
        f"pivots={worst[1]} sizes={worst[2]} envelope={worst[3]}"
    )
    if args.split == 2:
        rows, maximum = uniform_h2_root_table()
        print(f"uniform_h2_root_sums={rows} maximum={maximum}")
        assert maximum == 16
        assert worst[0] <= maximum * orbit_length(args.N, 50)


if __name__ == "__main__":
    main()
