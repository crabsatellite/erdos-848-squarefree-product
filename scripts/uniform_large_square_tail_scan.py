#!/usr/bin/env python3
r"""Finite audit of the uniform one-form large-square tail.

This checks the two elementary ingredients used in the paper proof:

* a unit quadratic congruence modulo m has at most 2*sqrt(m) roots;
* the resulting bound for primes p>Y with p^2 | a*t+1 dominates the exact
  finite count.

The finite scan is diagnostic only; the TeX proof is unconditional.
"""

from __future__ import annotations

import argparse
from dataclasses import asdict, dataclass
import json
import math


@dataclass(frozen=True)
class TailAudit:
    modulus_cases: int
    root_bound_failures: int
    tail_cases: int
    tail_bound_failures: int
    floor_ninth_failures: int
    worst_root_ratio: float
    worst_root_witness: tuple[int, int, int] | None
    tightest_tail_slack: float
    tightest_tail_witness: tuple[int, int, int, int, float] | None


def primes_through(n: int) -> list[int]:
    sieve = bytearray(b"\x01") * (n + 1)
    if n >= 0:
        sieve[0] = 0
    if n >= 1:
        sieve[1] = 0
    for p in range(2, math.isqrt(n) + 1):
        if sieve[p]:
            sieve[p * p : n + 1 : p] = b"\x00" * (
                (n - p * p) // p + 1
            )
    return [p for p in range(2, n + 1) if sieve[p]]


def paper_bound(N: int, t: int, Y: int) -> float:
    K = (t * N + 1) // (Y * Y)
    return (
        2.0 * math.sqrt(N + 1) * sum(
            1.0 / math.sqrt(s) for s in range(1, K + 1)
        )
        + 2.0 * K * math.sqrt(t)
    )


def audit(N_max: int, modulus_max: int) -> TailAudit:
    modulus_cases = 0
    root_bound_failures = 0
    worst_root_ratio = 0.0
    worst_root_witness = None
    for m in range(1, modulus_max + 1):
        for u in range(m):
            if math.gcd(u, m) != 1:
                continue
            modulus_cases += 1
            roots = sum((x * x - u) % m == 0 for x in range(m))
            ratio = roots / math.sqrt(m)
            if ratio > worst_root_ratio:
                worst_root_ratio = ratio
                worst_root_witness = (m, u, roots)
            if roots > 2.0 * math.sqrt(m):
                root_bound_failures += 1

    primes = primes_through(N_max + 1)
    tail_cases = 0
    tail_bound_failures = 0
    floor_ninth_failures = 0
    tightest_tail_slack = float("inf")
    tightest_tail_witness = None
    for N in range(1, N_max + 1):
        relevant_primes = [p for p in primes if p * p <= N * N + 1]
        for t in range(1, N + 1):
            max_witness = []
            for a in range(1, N + 1):
                value = a * t + 1
                witnesses = [p for p in relevant_primes if value % (p * p) == 0]
                max_witness.append(max(witnesses, default=0))
            for Y in range(1, N + 1):
                tail_cases += 1
                exact = sum(p > Y for p in max_witness)
                bound = paper_bound(N, t, Y)
                slack = bound - exact
                if slack < tightest_tail_slack:
                    tightest_tail_slack = slack
                    tightest_tail_witness = (N, t, Y, exact, bound)
                if exact > bound + 1e-12:
                    tail_bound_failures += 1

            if N >= 41:
                Y = N // 3
                if (t * N + 1) // (Y * Y) > 9:
                    floor_ninth_failures += 1

    return TailAudit(
        modulus_cases=modulus_cases,
        root_bound_failures=root_bound_failures,
        tail_cases=tail_cases,
        tail_bound_failures=tail_bound_failures,
        floor_ninth_failures=floor_ninth_failures,
        worst_root_ratio=worst_root_ratio,
        worst_root_witness=worst_root_witness,
        tightest_tail_slack=tightest_tail_slack,
        tightest_tail_witness=tightest_tail_witness,
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--N-max", type=int, default=80)
    parser.add_argument("--modulus-max", type=int, default=500)
    args = parser.parse_args()
    print(json.dumps(asdict(audit(args.N_max, args.modulus_max)), sort_keys=True))


if __name__ == "__main__":
    main()
