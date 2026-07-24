#!/usr/bin/env python3
"""One-form degree via finite Bonferroni plus the actual-support root tail.

This avoids the O(D) loss in the Mobius split.  Primes through 47 are treated
by a degree-3 lower Bonferroni polynomial, 47 < p <= Y one at a time, and
p > Y by the transformed complementary-variable/root estimate.  The latter
retains both the actual pivot support and the forced nonzero mod-5 square
coset.
"""

from __future__ import annotations

import argparse
from fractions import Fraction
import math

from modulus_correlated_eight_prime_scan import primes_through
from q503_endpoint import prime_pi
from quadratic_residue_support_scan import qr_mask
from systematic_mixed_full_close import alternating, endpoint_terms
from systematic_mod5_actual_support import mod5_cosets


CUTOFF = 47
TAIL = Fraction(3887, 1_000_000)  # proved upper bound for sum_{p>47} p^-2


def support_prefix_cases(
    N: int,
    k: int,
    M: int,
    primes: list[int],
    masks: list[int],
    cosets: tuple[int, int],
):
    if k <= 1:
        return [
            (coset.bit_count(), (), 1, name)
            for name, coset in (("square", cosets[0]), ("nonsquare", cosets[1]))
        ]
    rows = []
    count = 0

    def extend(start: int, chosen: tuple[int, ...], product: int, mask: int) -> None:
        nonlocal count
        need = k - 1 - len(chosen)
        if need == 0:
            if start >= len(primes) or product * primes[start] > N:
                return
            count += 1
            rows.append((mask.bit_count(), chosen))
            return
        for i in range(start, len(primes) - need):
            least = product
            for j in range(need + 1):
                least *= primes[i + j]
            if least > N:
                break
            extend(i + 1, chosen + (primes[i],), product * primes[i], mask & masks[i])

    result = []
    for name, coset in (("square", cosets[0]), ("nonsquare", cosets[1])):
        rows.clear()
        count = 0
        extend(0, (), 1, coset)
        result.extend((survivors, witness, count, name) for survivors, witness in rows)
    return result


def certificate(N: int, split: int):
    Y = N // split
    if Y <= CUTOFF:
        raise ValueError("Y must exceed the finite cutoff")
    # The transformed box is bounded by this exact integer ceiling.
    M = (N * N + 25 * N + 1 + Y * Y - 1) // (Y * Y)
    support_primes = primes_through(math.isqrt(N) + 1)
    masks = [qr_mask(p, M) for p in support_primes]
    cosets = mod5_cosets(M)
    least_product = 1
    feasible_max = 0
    for k, p in enumerate(support_primes[:12], 1):
        least_product *= p
        if least_product <= N:
            feasible_max = k
        else:
            break
    support = {
        k: support_prefix_cases(N, k, M, support_primes, masks, cosets)
        for k in range(feasible_max + 1)
    }
    odd_small_primes = primes_through(CUTOFF)
    x_lower = Fraction(N - 43, 25)
    x_upper = Fraction(N, 25) + 1
    medium = x_upper * TAIL + prime_pi(Y) - prime_pi(CUTOFF)

    rows = []
    for label, c_nu, even in (
        ("odd", 1, False),
        ("v2=1", 1, True),
        ("v2=2", 2, True),
        ("v2>=3", 4, True),
    ):
        for k, cases in support.items():
            for survivors, witness, count, coset in cases:
                inactive = set(witness)
                active_odd = [p for p in odd_small_primes if p not in inactive]
                small_primes = active_odd if even else [2] + active_odd
                weights = [Fraction(1, p * p) for p in small_primes]
                small_lower = alternating(weights, 3)
                small_error = endpoint_terms([1] * len(small_primes), 3)
                H = c_nu * 2 ** (k + 1)
                root = H * (survivors + 2 * x_upper / Y)
                degree = small_lower * x_lower - small_error - medium - root
                margin = degree - Fraction(N, 50)
                rows.append(
                    (margin, label, k, H, survivors, witness, count, coset,
                     root, small_lower, small_error)
                )
    return Y, M, medium, min(rows), rows


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("N", type=int)
    parser.add_argument("--split", type=int, required=True)
    parser.add_argument("--all-rows", action="store_true")
    args = parser.parse_args()
    Y, M, medium, worst, rows = certificate(
        args.N, args.split
    )
    print(
        f"N={args.N} split={args.split} Y={Y} M={M} "
        f"medium={float(medium):.9f}"
    )
    if args.all_rows:
        for row in rows:
            (margin, label, k, H, survivors, witness, count, coset, root,
             small_lower, small_error) = row
            print(
                f"case={label} k={k} H={H} survivors={survivors} "
                f"witness={list(witness)} prefixes={count} coset={coset} "
                f"L3={float(small_lower):.15f}/{small_error} "
                f"root={float(root):.9f} margin={float(margin):.9f}"
            )
    (margin, label, k, H, survivors, witness, count, coset, root,
     small_lower, small_error) = worst
    print(
        f"worst={label} k={k} H={H} survivors={survivors} "
        f"witness={list(witness)} prefixes={count} coset={coset} "
        f"L3={float(small_lower):.15f}/{small_error} "
        f"root={float(root):.9f} margin={float(margin):.9f} "
        f"residual={float(2 * margin - 1):.9f}"
    )


if __name__ == "__main__":
    main()
