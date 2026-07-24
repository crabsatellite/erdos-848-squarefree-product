#!/usr/bin/env python3
"""Actual-support QR degree certificate below the first systemic block.

For a pivot with k non-5 odd prime divisors, enumerate the smallest k-1
divisors and require that a kth larger prime still fits under the pivot bound.
Every complementary variable is a nonzero quadratic residue modulo all those
k-1 primes.  This removes the artificial independent-cutoff relaxation.
"""

from __future__ import annotations

import argparse
from fractions import Fraction
import math

from modulus_correlated_eight_prime_scan import primes_through
from quadratic_residue_support_scan import qr_mask
from systematic_mixed_degree_close import KAPPA5


def support_maximum(
    N: int,
    k: int,
    M: int,
    primes: list[int],
    masks: list[int],
    initial_mask: int | None = None,
):
    if k <= 1:
        survivors = M if initial_mask is None else initial_mask.bit_count()
        return survivors, (), 1
    full = (1 << M) - 1 if initial_mask is None else initial_mask
    best = (-1, ())
    count = 0

    def extend(start: int, chosen: tuple[int, ...], product: int, mask: int) -> None:
        nonlocal best, count
        need = k - 1 - len(chosen)
        if need == 0:
            if start >= len(primes) or product * primes[start] > N:
                return
            count += 1
            candidate = mask.bit_count()
            if candidate > best[0]:
                best = (candidate, chosen)
            return
        for i in range(start, len(primes) - need):
            least = product
            for j in range(need + 1):
                least *= primes[i + j]
            if least > N:
                break
            extend(i + 1, chosen + (primes[i],), product * primes[i], mask & masks[i])

    extend(0, (), 1, full)
    return best[0], best[1], count


def exact_degree_margin(N: int, D: int, H: int, survivors: int, even: bool) -> Fraction:
    X = Fraction(N, 25) + 1
    main = (Fraction(4, 3) if even else 1) * KAPPA5 * Fraction(N - 43, 25)
    degree = (
        main - D - X / D - Fraction(1, 5 * D)
        - H * (survivors + 2 * X / D) - 1
    )
    return degree - Fraction(N, 50)


def certificate(N: int, K: int):
    D = N // K
    if D <= 0:
        raise ValueError("D must be positive")
    M = (N * N + 25 * N + 1 + D * D - 1) // (D * D)
    # The first member of a support of size at least two is at most sqrt(N).
    primes = primes_through(math.isqrt(N) + 1)
    masks = [qr_mask(p, M) for p in primes]
    least_product = 1
    feasible_max = 0
    for k, p in enumerate(primes[:12], 1):
        least_product *= p
        if least_product <= N:
            feasible_max = k
        else:
            break
    support = {k: support_maximum(N, k, M, primes, masks) for k in range(feasible_max + 1)}
    rows = []
    for label, c_nu, even in (
        ("odd", 1, False), ("v2=1", 1, True),
        ("v2=2", 2, True), ("v2>=3", 4, True),
    ):
        for k, (survivors, witness, count) in support.items():
            H = c_nu * 2 ** (k + 1)
            margin = exact_degree_margin(N, D, H, survivors, even)
            rows.append((margin, label, k, H, survivors, witness, count))
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
            margin, label, k, H, survivors, witness, count = row
            print(
                f"case={label} k={k} H={H} survivors={survivors} "
                f"witness={list(witness)} prefixes={count} margin={float(margin):.9f}"
            )
    margin, label, k, H, survivors, witness, count = worst
    print(
        f"worst={label} k={k} H={H} survivors={survivors} "
        f"witness={list(witness)} prefixes={count} margin={float(margin):.9f} "
        f"residual={float(2 * margin - 1):.9f}"
    )


if __name__ == "__main__":
    main()
