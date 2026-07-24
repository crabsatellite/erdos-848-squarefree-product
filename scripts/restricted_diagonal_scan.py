#!/usr/bin/env python3
"""Exact restricted small-modulus sum in the aggregate diagonal estimate.

The Mobius expansion only uses squarefree moduli whose prime factors are
1 modulo 4 and at least 13.  This script enumerates those moduli in increasing
prime order and records their exact weight 2^omega(s).
"""

from __future__ import annotations

import argparse
import bisect
import math
from decimal import Decimal, getcontext

from q503_block_scan import first_N_for_R, prime_segment
from q503_endpoint import C_QUAD, prime_pi, r_floor


Q = 463
K = 135
ROOT_SUM = 512
TAU = Decimal("0.000294557")
PAIR_I = Decimal("0.113397119")
PAIR_EPS = 242617


def primes_one_mod_four(n: int) -> list[int]:
    sieve = bytearray(b"\x01") * (n + 1)
    sieve[:2] = b"\x00\x00"
    for p in range(2, math.isqrt(n) + 1):
        if sieve[p]:
            sieve[p * p : n + 1 : p] = b"\x00" * (((n - p * p) // p) + 1)
    return [p for p in range(13, n + 1, 4) if sieve[p]]


def restricted_weights(limit: int) -> bytearray:
    """Return w[s]=2^omega(s) on the permitted squarefree semigroup."""
    primes = primes_one_mod_four(limit)
    weights = bytearray(limit + 1)
    weights[1] = 1

    def extend(start: int, product: int, weight: int) -> None:
        stop = bisect.bisect_right(primes, limit // product)
        for i in range(start, stop):
            new_product = product * primes[i]
            new_weight = weight * 2
            weights[new_product] = new_weight
            extend(i + 1, new_product, new_weight)

    extend(0, 1, 1)
    return weights


def prime_root(N: int, Y: int | None = None, pi_y: int | None = None) -> Decimal:
    if Y is None:
        Y = N // K
    if pi_y is None:
        pi_y = prime_pi(Y)
    bracket = (
        Decimal(2) * (Decimal(N) / 25 + 2) / Decimal(Y)
        + Decimal(N * N + 25 * N + 1) / Decimal(Y * Y)
    )
    return (
        Decimal(4 * (pi_y - prime_pi(Q))) / Decimal(N)
        + Decimal(2 * ROOT_SUM) * bracket / Decimal(N)
    )


def delta25(N: int, R: int, F: int) -> Decimal:
    dN = Decimal(N)
    dR = Decimal(R)
    return (
        Decimal(23) / dN
        + Decimal(3 * F) / dN
        + Decimal(46) * Decimal(str(math.log(R) + 2)) / (25 * dR)
        + Decimal(N * N + 1) * 19 / (dN * dR * dR)
    )


def envelope(
    N: int, weights: bytearray, prefix: int | None = None,
    fixed_y: int | None = None,
):
    R = r_floor(N)
    F = sum(weights[: R + 1]) if prefix is None else prefix
    pair = Decimal(2) * PAIR_I / 25 + Decimal(2 * PAIR_EPS) / Decimal(N)
    total = (
        Decimal(23) * C_QUAD / 25
        + delta25(N, R, F)
        + pair
        + Decimal(4) * TAU / 25
    )
    total += (
        prime_root(N, fixed_y, prime_pi(fixed_y))
        if fixed_y is not None else prime_root(N)
    )
    target = Decimal(1) / 25 - Decimal(7) / (25 * Decimal(N))
    return R, F, total, target


def scan_block(L: int, U: int, fixed_y: int | None = None) -> None:
    rlo, rhi = r_floor(L), r_floor(U)
    weights = restricted_weights(rhi)

    if fixed_y is None:
        ylo, yhi = L // K, U // K
        primality = prime_segment(ylo, yhi)
        pi_y = prime_pi(ylo - 1)
        best_prime = (Decimal(-1), None)
        for offset, is_prime in enumerate(primality):
            Y = ylo + offset
            if is_prime:
                pi_y += 1
            nlo = max(L, K * Y)
            nhi = min(U, K * Y + K - 1)
            if nlo > nhi:
                continue
            for N in (nlo, nhi):
                value = prime_root(N, Y, pi_y)
                if value > best_prime[0]:
                    best_prime = (value, (N, Y, pi_y))
    else:
        ylo = yhi = fixed_y
        pi_y = prime_pi(fixed_y)
        candidates = [
            (prime_root(N, fixed_y, pi_y), (N, fixed_y, pi_y))
            for N in (L, U)
        ]
        best_prime = max(candidates)

    F = sum(weights[:rlo])
    best_ratio = (Decimal(-1), None)
    best_delta = (Decimal(-1), None)
    for R in range(rlo, rhi + 1):
        F += weights[R]
        nlo = max(L, first_N_for_R(R))
        nhi = min(U, first_N_for_R(R + 1) - 1)
        if nlo > nhi:
            continue
        ratio = Decimal(F) / Decimal(nlo)
        if ratio > best_ratio[0]:
            best_ratio = (ratio, (nlo, R, F))
        for N in (nlo, nhi):
            value = delta25(N, R, F)
            if value > best_delta[0]:
                best_delta = (value, (N, R, F))

    prime_bound, prime_witness = best_prime
    delta_bound, delta_witness = best_delta
    dL = Decimal(L)
    pair = Decimal(2) * PAIR_I / 25 + Decimal(2 * PAIR_EPS) / dL
    total = (
        Decimal(23) * C_QUAD / 25
        + delta_bound
        + pair
        + Decimal(4) * TAU / 25
        + prime_bound
    )
    target = Decimal(1) / 25 - Decimal(7) / (25 * dL)
    print(f"interval=[{L},{U}] R_range=[{rlo},{rhi}] Y_range=[{ylo},{yhi}]")
    print(f"prime_root_witness={prime_witness} bound={prime_bound:.18f}")
    print(f"restricted_ratio_witness={best_ratio[1]} bound={best_ratio[0]:.18f}")
    print(f"delta_witness={delta_witness} bound={delta_bound:.18f}")
    print(f"pair_bound={pair:.18f}")
    print(f"envelope={total:.18f} target={target:.18f} slack={target-total:.18f}")


def scan_joint_block(L: int, U: int, fixed_y: int) -> None:
    """Joint total-minus-target scan at every fixed-R interval endpoint.

    For fixed R, F, and Y, the excess is a sum of affine terms and positive
    multiples of 1/N, hence convex; its maximum is attained at an endpoint.
    """
    rlo, rhi = r_floor(L), r_floor(U)
    weights = restricted_weights(rhi)
    F = sum(weights[:rlo])
    best = (Decimal("-Infinity"), None)
    for R in range(rlo, rhi + 1):
        F += weights[R]
        nlo = max(L, first_N_for_R(R))
        nhi = min(U, first_N_for_R(R + 1) - 1)
        if nlo > nhi:
            continue
        for N in (nlo, nhi):
            _, _, total, target = envelope(
                N, weights, prefix=F, fixed_y=fixed_y
            )
            excess = total - target
            if excess > best[0]:
                best = (excess, (N, R, F, total, target))
    N, R, F, total, target = best[1]
    print(
        f"JOINT interval=[{L},{U}] fixed_y={fixed_y} "
        f"witness={(N, R, F)} total={total:.18f} "
        f"target={target:.18f} slack={-best[0]:.18f}"
    )


def optimize_integer_y(N: int, lower: int, upper: int, chunk: int):
    """Exhaust every prime jump; between jumps the root term decreases."""
    best: tuple[Decimal, tuple[int, int] | None] = (Decimal("Infinity"), None)

    def consider(Y: int, pi_y: int) -> None:
        nonlocal best
        value = prime_root(N, Y, pi_y)
        if value < best[0]:
            best = (value, (Y, pi_y))

    consider(lower, prime_pi(lower))
    pi_before = prime_pi(lower - 1)
    lo = lower
    while lo <= upper:
        hi = min(upper, lo + chunk - 1)
        primality = prime_segment(lo, hi)
        for offset, is_prime in enumerate(primality):
            if not is_prime:
                continue
            p = lo + offset
            Y = p - 1
            if lower <= Y <= upper:
                consider(Y, pi_before)
            pi_before += 1
        lo = hi + 1
    consider(upper, prime_pi(upper))
    return best


def main() -> None:
    global Q, K, ROOT_SUM, TAU, PAIR_I, PAIR_EPS
    parser = argparse.ArgumentParser()
    parser.add_argument("N", type=int)
    parser.add_argument("--upper", type=int)
    parser.add_argument("--k", type=int, default=K)
    parser.add_argument("--q", type=int, default=Q)
    parser.add_argument("--root-sum", type=int, default=ROOT_SUM)
    parser.add_argument("--fixed-y", type=int)
    parser.add_argument("--tau", type=Decimal, default=TAU)
    parser.add_argument("--pair-i", type=Decimal, default=PAIR_I)
    parser.add_argument("--pair-eps", type=int, default=PAIR_EPS)
    parser.add_argument("--optimize-y-min", type=int)
    parser.add_argument("--optimize-y-max", type=int)
    parser.add_argument("--optimize-y-chunk", type=int, default=5_000_000)
    parser.add_argument("--joint-block", action="store_true")
    args = parser.parse_args()
    K = args.k
    Q = args.q
    ROOT_SUM = args.root_sum
    TAU = args.tau
    PAIR_I = args.pair_i
    PAIR_EPS = args.pair_eps
    getcontext().prec = 50
    if args.optimize_y_min is not None or args.optimize_y_max is not None:
        if args.optimize_y_min is None or args.optimize_y_max is None:
            parser.error("both --optimize-y-min and --optimize-y-max are required")
        value, witness = optimize_integer_y(
            args.N, args.optimize_y_min, args.optimize_y_max,
            args.optimize_y_chunk,
        )
        print(
            f"OPTIMAL_INTEGER_Y N={args.N} range="
            f"[{args.optimize_y_min},{args.optimize_y_max}] "
            f"witness={witness} prime_root={value:.18f}"
        )
        return
    if args.upper is not None:
        scan_block(args.N, args.upper, args.fixed_y)
        if args.joint_block:
            if args.fixed_y is None:
                parser.error("--joint-block requires --fixed-y")
            scan_joint_block(args.N, args.upper, args.fixed_y)
    else:
        R = r_floor(args.N)
        weights = restricted_weights(R)
        R, F, total, target = envelope(args.N, weights, fixed_y=args.fixed_y)
        nonzero = sum(1 for value in weights if value)
        print(f"N={args.N} R={R} permitted_moduli={nonzero} F={F}")
        print(f"restricted_ratio={Decimal(F)/Decimal(args.N):.18f}")
        print(f"total={total:.18f} target={target:.18f} slack={target-total:.18f}")


if __name__ == "__main__":
    main()
