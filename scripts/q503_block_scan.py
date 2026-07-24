#!/usr/bin/env python3
"""Unit-block certificate for a fixed Q=503 exact-pattern interval."""

from __future__ import annotations

import argparse
import math
from decimal import Decimal, getcontext

from q503_endpoint import (
    C_QUAD,
    K,
    M,
    PAIR_EPS,
    PAIR_I,
    PHI_M,
    PRIMES,
    Q,
    ROOT_SUM,
    TAU,
    coprime_count,
    divisor_sum,
    prime_pi,
    r_floor,
)


def prime_segment(lo: int, hi: int) -> bytearray:
    sieve = bytearray(b"\x01") * (hi - lo + 1)
    for p in PRIMES:
        if p * p > hi:
            break
        start = max(p * p, ((lo + p - 1) // p) * p)
        if start <= hi:
            sieve[start - lo : hi - lo + 1 : p] = b"\x00" * (((hi - start) // p) + 1)
    if lo <= 1:
        for n in range(lo, min(hi, 1) + 1):
            sieve[n - lo] = 0
    return sieve


def segmented_divisors(lo: int, hi: int) -> list[int]:
    rem = list(range(lo, hi + 1))
    tau = [1] * len(rem)
    for p in PRIMES:
        if p * p > hi:
            break
        start = ((lo + p - 1) // p) * p
        for n in range(start, hi + 1, p):
            i = n - lo
            exponent = 0
            while rem[i] % p == 0:
                rem[i] //= p
                exponent += 1
            tau[i] *= exponent + 1
    for i, value in enumerate(rem):
        if value > 1:
            tau[i] *= 2
    return tau


def first_N_for_R(R: int) -> int:
    # R <= (12/5)N^(2/3)+1 iff 1728 N^2 >= 125(R-1)^3.
    numerator = 125 * (R - 1) ** 3
    q = (numerator + 1727) // 1728
    root = math.isqrt(q)
    return root if root * root == q else root + 1


def prime_root_float(N: int, Y: int, piY: int) -> float:
    bracket = 2.0 * (N / 25.0 + 2.0) / Y + (N * N + 25 * N + 1) / (Y * Y)
    return 4.0 * (piY - prime_pi(Q)) / N + 2.0 * ROOT_SUM / N * bracket


def delta_float(N: int, R: int, S: int) -> float:
    return (
        23.0 / N
        + 3.0 * S / N
        + 46.0 * (math.log(R) + 2.0) / (25.0 * R)
        + (N * N + 1.0) / (N * R * R)
        * (1.0 + math.log(N) / math.log(2.0 + math.sqrt(3.0)))
    )


def prime_root_decimal(N: int, Y: int, piY: int) -> Decimal:
    getcontext().prec = 50
    dN = Decimal(N)
    dY = Decimal(Y)
    bracket = 2 * (dN / 25 + 2) / dY + (dN * dN + 25 * dN + 1) / (dY * dY)
    return Decimal(4 * (piY - prime_pi(Q))) / dN + Decimal(2 * ROOT_SUM) / dN * bracket


def delta_decimal(N: int, R: int, S: int) -> Decimal:
    getcontext().prec = 50
    dN = Decimal(N)
    dR = Decimal(R)
    return (
        Decimal(23) / dN
        + Decimal(3 * S) / dN
        + Decimal(46) * Decimal(str(math.log(R) + 2.0)) / (25 * dR)
        + (dN * dN + 1) / (dN * dR * dR)
        * (1 + Decimal(str(math.log(N) / math.log(2.0 + math.sqrt(3.0)))))
    )


def scan(L: int, U: int):
    ylo, yhi = L // K, U // K
    primality = prime_segment(ylo, yhi)
    piY = prime_pi(ylo - 1)
    best_pr = (-1.0, None)
    for offset, isprime in enumerate(primality):
        Y = ylo + offset
        if isprime:
            piY += 1
        nlo = max(L, K * Y)
        nhi = min(U, K * Y + K - 1)
        if nlo > nhi:
            continue
        for N in (nlo, nhi):
            value = prime_root_float(N, Y, piY)
            if value > best_pr[0]:
                best_pr = (value, (N, Y, piY))

    rlo, rhi = r_floor(L), r_floor(U)
    taus = segmented_divisors(rlo, rhi)
    S = divisor_sum(rlo - 1)
    best_ratio = (-1.0, None)
    best_delta = (-1.0, None)
    for R in range(rlo, rhi + 1):
        if math.gcd(R, M) == 1:
            S += taus[R - rlo]
        nlo = max(L, first_N_for_R(R))
        nhi = min(U, first_N_for_R(R + 1) - 1)
        if nlo > nhi:
            continue
        ratio = S / nlo
        if ratio > best_ratio[0]:
            best_ratio = (ratio, (nlo, R, S))
        for N in (nlo, nhi):
            value = delta_float(N, R, S)
            if value > best_delta[0]:
                best_delta = (value, (N, R, S))

    prN, prY, prPi = best_pr[1]
    dN, dR, dS = best_delta[1]
    pr_bound = prime_root_decimal(prN, prY, prPi)
    delta_bound = delta_decimal(dN, dR, dS)
    getcontext().prec = 50
    dL = Decimal(L)
    pair_bound = 2 * PAIR_I / 25 + Decimal(2 * PAIR_EPS) / dL
    total = (
        Decimal(23) * C_QUAD / 25
        + delta_bound
        + pair_bound
        + Decimal(4) * TAU / 25
        + pr_bound
    )
    target = Decimal(1) / 25 - Decimal(7) / (25 * dL)
    print(f"interval=[{L},{U}]")
    print(f"Y_range=[{ylo},{yhi}] prime_root_witness=N{prN},Y{prY},pi{prPi}")
    print(f"prime_root_bound={pr_bound:.18f}")
    rrN, rrR, rrS = best_ratio[1]
    print(f"diagonal_ratio_witness=N{rrN},R{rrR},S{rrS}")
    print(f"diagonal_ratio_bound={Decimal(rrS)/Decimal(rrN):.18f}")
    print(f"delta_witness=N{dN},R{dR},S{dS}")
    print(f"delta_bound={delta_bound:.18f}")
    print(f"pair_bound={pair_bound:.18f}")
    print(f"envelope={total:.18f} target={target:.18f} slack={target-total:.18f}")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("L", type=int)
    parser.add_argument("U", type=int)
    args = parser.parse_args()
    scan(args.L, args.U)


if __name__ == "__main__":
    main()
