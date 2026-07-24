#!/usr/bin/env python3
"""Evaluate the fixed exact-pair Q=503 endpoint envelope."""

from __future__ import annotations

import argparse
import functools
import math
from array import array
from decimal import Decimal, getcontext


Q = 503
M = 43890
C_QUAD = Decimal("0.027346508")
TAU = Decimal("0.000269280")
PAIR_I = Decimal("0.020694788706384609")
PAIR_EPS = 230703
K = 121
ROOT_SUM = 768


def prime_table(limit: int = 5_000_000):
    sieve = bytearray(b"\x01") * (limit + 1)
    sieve[:2] = b"\x00\x00"
    for p in range(2, math.isqrt(limit) + 1):
        if sieve[p]:
            sieve[p * p : limit + 1 : p] = b"\x00" * (((limit - p * p) // p) + 1)
    primes = [i for i in range(2, limit + 1) if sieve[i]]
    pi = array("I", [0]) * (limit + 1)
    count = 0
    for i in range(limit + 1):
        if sieve[i]:
            count += 1
        pi[i] = count
    return primes, pi


PRIMES, SMALL_PI = prime_table()


@functools.lru_cache(maxsize=None)
def phi(x: int, s: int) -> int:
    if s == 0:
        return x
    if s == 1:
        return x - x // 2
    return phi(x, s - 1) - phi(x // PRIMES[s - 1], s - 1)


def iroot(n: int, k: int) -> int:
    x = int(n ** (1.0 / k))
    while (x + 1) ** k <= n:
        x += 1
    while x**k > n:
        x -= 1
    return x


@functools.lru_cache(maxsize=None)
def prime_pi(x: int) -> int:
    if x < len(SMALL_PI):
        return int(SMALL_PI[x])
    a = prime_pi(iroot(x, 4))
    b = prime_pi(math.isqrt(x))
    c = prime_pi(iroot(x, 3))
    result = phi(x, a) + ((b + a - 2) * (b - a + 1)) // 2
    for i in range(a, b):
        w = x // PRIMES[i]
        result -= prime_pi(w)
        if i < c:
            limit = prime_pi(math.isqrt(w))
            for j in range(i, limit):
                result -= prime_pi(w // PRIMES[j]) - j
    return result


PHI_M = sum(1 for a in range(1, M + 1) if math.gcd(a, M) == 1)
COPRIME_PREFIX = array("I", [0]) * (M + 1)
_count = 0
for _a in range(1, M + 1):
    if math.gcd(_a, M) == 1:
        _count += 1
    COPRIME_PREFIX[_a] = _count


def coprime_count(y: int) -> int:
    blocks, rem = divmod(y, M)
    return blocks * PHI_M + int(COPRIME_PREFIX[rem])


@functools.lru_cache(maxsize=None)
def divisor_sum(R: int) -> int:
    root = math.isqrt(R)
    half = 0
    for a in range(1, root + 1):
        if math.gcd(a, M) == 1:
            half += coprime_count(R // a)
    return 2 * half - coprime_count(root) ** 2


def r_floor(N: int) -> int:
    getcontext().prec = 60
    dN = Decimal(N)
    r = Decimal(12) / Decimal(5) * (dN * dN) ** (Decimal(1) / Decimal(3))
    return int(r + 1)


def envelope(N: int):
    getcontext().prec = 50
    dN = Decimal(N)
    R = r_floor(N)
    S = divisor_sum(R)
    Y = N // K
    pi_y = prime_pi(Y)
    pi_q = prime_pi(Q)

    logR = Decimal(str(math.log(R)))
    logN = Decimal(str(math.log(N)))
    logbase = logN / Decimal(str(math.log(2 + math.sqrt(3))))
    delta = (
        Decimal(23) / dN
        + Decimal(3 * S) / dN
        + Decimal(46) * (logR + 2) / (Decimal(25) * Decimal(R))
        + (dN * dN + 1) / (dN * Decimal(R) ** 2) * (1 + logbase)
    )
    pair = Decimal(2) * PAIR_I / 25 + Decimal(2 * PAIR_EPS) / dN
    bracket = (
        Decimal(2) * (dN / 25 + 2) / Decimal(Y)
        + (dN * dN + 25 * dN + 1) / Decimal(Y) ** 2
    )
    prime_root = (
        Decimal(4 * (pi_y - pi_q)) / dN
        + Decimal(2 * ROOT_SUM) / dN * bracket
    )
    tail = Decimal(4) * TAU / 25
    total = Decimal(23) * C_QUAD / 25 + delta + pair + tail + prime_root
    target = Decimal(1) / 25 - Decimal(7) / (25 * dN)
    return {
        "N": N,
        "R": R,
        "S": S,
        "Y": Y,
        "piY": pi_y,
        "delta": delta,
        "pair": pair,
        "prime_root": prime_root,
        "tail": tail,
        "total": total,
        "target": target,
        "slack": target - total,
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("N", nargs="*", type=int, default=[26_153_000_000])
    parser.add_argument("--scan-start", type=int)
    parser.add_argument("--scan-stop", type=int)
    parser.add_argument("--scan-step", type=int, default=10_000_000)
    args = parser.parse_args()
    values = list(args.N)
    if args.scan_start is not None and args.scan_stop is not None:
        values.extend(range(args.scan_start, args.scan_stop - 1, -args.scan_step))
    for N in values:
        v = envelope(N)
        print(
            f"N={N} R={v['R']} S={v['S']} Y={v['Y']} piY={v['piY']} "
            f"delta={v['delta']:.15f} pair={v['pair']:.15f} "
            f"prime_root={v['prime_root']:.15f} total={v['total']:.15f} "
            f"target={v['target']:.15f} slack={v['slack']:.15f}"
        )


if __name__ == "__main__":
    main()
