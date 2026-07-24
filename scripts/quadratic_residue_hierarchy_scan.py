#!/usr/bin/env python3
"""Exact small-prime QR masks for the H=256,512,1024,2048 strata."""

from __future__ import annotations

import argparse

from modulus_correlated_eight_prime_scan import primes_through
from quadratic_residue_support_scan import qr_mask


CASES = (
    # (root bound H, cutoff P, number of forced primes <= P)
    (256, 1000, 3),
    (512, 360, 4),
    (1024, 160, 5),
    (2048, 60, 6),
)


def maximum_intersection(M: int, cutoff: int, choose: int):
    primes = primes_through(cutoff)
    masks = [qr_mask(p, M) for p in primes]
    full = (1 << M) - 1
    best = (-1, None)

    def extend(start: int, chosen: list[int], mask: int) -> None:
        nonlocal best
        need = choose - len(chosen)
        if need == 0:
            count = mask.bit_count()
            if count > best[0]:
                best = (count, tuple(chosen))
            return
        last = len(primes) - need
        for i in range(start, last + 1):
            extend(i + 1, chosen + [primes[i]], mask & masks[i])

    extend(0, [], full)
    return best, len(primes)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("M", type=int)
    args = parser.parse_args()
    overall = 0
    for H, cutoff, choose in CASES:
        best, prime_count = maximum_intersection(args.M, cutoff, choose)
        count, support = best
        tail = H * count
        overall = max(overall, tail)
        print(
            f"H={H} cutoff={cutoff} choose={choose} primes={prime_count} "
            f"max_qr_count={count} support={list(support)} tail={tail}"
        )
    print(f"uniform_tail={overall}")


if __name__ == "__main__":
    main()
