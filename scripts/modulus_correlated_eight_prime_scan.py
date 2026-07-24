#!/usr/bin/env python3
"""Joint Euler-gain/modulus scan for the root-512 eight-prime stratum.

For a fixed set S of eight non-5 odd prime divisors, the Euler gain depends
only on S, whereas the retained progression error is worst at the largest
integer b <= N whose prime divisors lie in S union {5}.  This script enumerates
all such S and their exact worst b.
"""

from __future__ import annotations

import argparse
import bisect
import math
from decimal import Decimal, getcontext
from fractions import Fraction


def primes_through(n: int) -> list[int]:
    sieve = bytearray(b"\x01") * (n + 1)
    sieve[:2] = b"\x00\x00"
    for p in range(2, math.isqrt(n) + 1):
        if sieve[p]:
            sieve[p * p : n + 1 : p] = b"\x00" * (((n - p * p) // p) + 1)
    return [p for p in range(3, n + 1) if sieve[p] and p != 5]


def supported(n: int, support: set[int]) -> bool:
    for p in support:
        while n % p == 0:
            n //= p
    return n == 1


def support_records(bound: int):
    primes = primes_through(bound // 22_309_287 + 1)
    kappa = Fraction(12_769, 20_164)
    records = []

    def extend(start: int, chosen: list[int], product: int) -> None:
        need = 8 - len(chosen)
        if need == 0:
            support = set(chosen)
            support.add(5)
            multipliers = [
                k
                for k in range(1, bound // product + 1)
                if supported(k, support)
            ]
            gain = Fraction(1)
            for p in chosen:
                gain *= Fraction(p * p, p * p - 1)
            gain -= 1
            records.append((tuple(chosen), product, multipliers, kappa * gain / 25))
            return
        for i in range(start, len(primes)):
            p = primes[i]
            new_product = product * p
            if i + need > len(primes):
                break
            least = new_product
            for q in primes[i + 1 : i + need]:
                least *= q
            if least > bound:
                break
            extend(i + 1, chosen + [p], new_product)

    extend(0, [], 1)
    return records


def endpoint_constants(N: int):
    H = 512
    kappa = Fraction(12_769, 20_164)
    dN = Decimal(N)
    X = dN / 25 + 1
    dH = (Decimal(2 * H) * dN * dN) ** (Decimal(1) / Decimal(3))
    saving_per_unit = Decimal(H * 25) * X / (dH * dH * dN)
    E512 = (
        Decimal("2.367")
        + dH
        + 1
        + Decimal(1 + 2 * H) * X / dH
        + Decimal(1 + 2 * H) / (Decimal(5) * dH)
        + Decimal(H * 25 * N) * X / (dH * dH)
        + Decimal(H) / (dH * dH)
    ) / dN
    base = Decimal(kappa.numerator) / Decimal(kappa.denominator) / 25
    return dN, dH, saving_per_unit, E512, base


def envelope(N: int, H: int) -> Decimal:
    dN = Decimal(N)
    X = dN / 25 + 1
    dH = (Decimal(2 * H) * dN * dN) ** (Decimal(1) / Decimal(3))
    return (
        Decimal("2.367")
        + dH
        + 1
        + Decimal(1 + 2 * H) * X / dH
        + Decimal(1 + 2 * H) / (Decimal(5) * dH)
        + Decimal(H * 25 * N) * X / (dH * dH)
        + Decimal(H) / (dH * dH)
    ) / dN


def interval_scan(L: int, U: int):
    records = support_records(U)
    breakpoints = {L, U}
    for _, radical, multipliers, _ in records:
        breakpoints.update(
            radical * k for k in multipliers if L <= radical * k <= U
        )
    worst = None
    for N in sorted(breakpoints):
        dN, _, saving_per_unit, E512, base = endpoint_constants(N)
        best_score = None
        best_data = None
        for primes, radical, multipliers, normalized in records:
            limit = N // radical
            j = bisect.bisect_right(multipliers, limit) - 1
            if j < 0:
                continue
            b = radical * multipliers[j]
            score = (
                Decimal(normalized.numerator) / Decimal(normalized.denominator)
                + saving_per_unit * Decimal(N - b)
            )
            if best_score is None or score < best_score:
                best_score = score
                best_data = (primes, radical, multipliers[j], b, normalized)
        margin = dN * (base - E512 + best_score - Decimal(1) / 50) - Decimal(7) / 25
        row = (margin, N, best_score, best_data)
        if worst is None or row[0] < worst[0]:
            worst = row
    return worst, len(records), len(breakpoints)


def scan(N: int):
    # Seven least admissible primes have product 22309287.
    primes = primes_through(N // 22_309_287 + 1)
    kappa = Fraction(12_769, 20_164)
    H = 512
    getcontext().prec = 60
    dN = Decimal(N)
    X = dN / 25 + 1
    dH = (Decimal(2 * H) * dN * dN) ** (Decimal(1) / Decimal(3))
    saving_per_unit = Decimal(H * 25) * X / (dH * dH * dN)

    best = None
    supports = 0

    def extend(start: int, chosen: list[int], product: int) -> None:
        nonlocal best, supports
        need = 8 - len(chosen)
        if need == 0:
            supports += 1
            support = set(chosen)
            support.add(5)
            max_multiplier = N // product
            multiplier = max(
                k for k in range(1, max_multiplier + 1) if supported(k, support)
            )
            b = product * multiplier
            gain = Fraction(1)
            for p in chosen:
                gain *= Fraction(p * p, p * p - 1)
            gain -= 1
            normalized = kappa * gain / 25
            score = (
                Decimal(normalized.numerator) / Decimal(normalized.denominator)
                + saving_per_unit * Decimal(N - b)
            )
            candidate = (score, chosen.copy(), product, multiplier, b, gain, normalized)
            if best is None or candidate[0] < best[0]:
                best = candidate
            return

        for i in range(start, len(primes)):
            p = primes[i]
            new_product = product * p
            if i + need > len(primes):
                break
            least = new_product
            for q in primes[i + 1 : i + need]:
                least *= q
            if least > N:
                break
            extend(i + 1, chosen + [p], new_product)

    extend(0, [], 1)
    E512 = (
        Decimal("2.367")
        + dH
        + 1
        + Decimal(1 + 2 * H) * X / dH
        + Decimal(1 + 2 * H) / (Decimal(5) * dH)
        + Decimal(H * 25 * N) * X / (dH * dH)
        + Decimal(H) / (dH * dH)
    ) / dN
    degree_margin = dN * (
        Decimal(kappa.numerator) / Decimal(kappa.denominator) / 25
        - E512
        + best[0]
        - Decimal(1) / 50
    ) - Decimal(7) / 25
    strip_ratio = Decimal(2) * degree_margin / dN - Decimal(1) / dN
    return best, supports, dH, saving_per_unit, E512, degree_margin, strip_ratio


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("N", type=int, nargs="?", default=12_780_000_000)
    parser.add_argument("--interval", type=int, nargs=2, metavar=("L", "U"))
    args = parser.parse_args()
    if args.interval:
        getcontext().prec = 60
        worst, supports, breakpoints = interval_scan(*args.interval)
        margin, N, score, data = worst
        primes, radical, multiplier, b, normalized = data
        print(
            f"interval={args.interval} supports={supports} "
            f"breakpoints={breakpoints}"
        )
        print(
            f"worst_N={N} primes={list(primes)} radical={radical} "
            f"multiplier={multiplier} b={b}"
        )
        print(f"normalized_gain={normalized.numerator}/{normalized.denominator}")
        print(f"joint_score={score} degree_minus_half={margin}")
        return
    best, supports, dH, saving_per_unit, E512, degree_margin, strip_ratio = scan(args.N)
    score, primes, product, multiplier, b, gain, normalized = best
    print(f"N={args.N} supports={supports}")
    print(f"dH={dH} saving_per_unit={saving_per_unit}")
    print(
        f"primes={primes} radical={product} multiplier={multiplier} b={b}"
    )
    print(f"gain={gain.numerator}/{gain.denominator} = {float(gain):.18f}")
    print(
        f"normalized_gain={normalized.numerator}/{normalized.denominator} "
        f"= {float(normalized):.18f}"
    )
    print(f"joint_score={score}")
    print(f"E512={E512}")
    print(
        "root_comparisons="
        f"E512-E256:{E512-envelope(args.N, 256)} "
        f"E1024-E512+score:{envelope(args.N, 1024)-E512+score} "
        f"E4096-E512+score:{envelope(args.N, 4096)-E512+score}"
    )
    print(f"degree_minus_half={degree_margin} strip_ratio={strip_ratio}")


if __name__ == "__main__":
    main()
