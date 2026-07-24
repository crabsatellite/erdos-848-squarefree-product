#!/usr/bin/env python3
"""Endpoint certificate for the systemic mixed three-pivot close.

The finite sieve is intentionally pessimistic: every non-common prime is
allowed to be pair-coincident when each pair-survivor term is bounded.  The
large-prime block uses Dusart rather than a prime table, and the aggregate
diagonal rounding ratio is scanned at every exact r_N jump.
"""

from __future__ import annotations

from decimal import Decimal, getcontext
from fractions import Fraction
import math

from q503_block_scan import first_N_for_R
from q503_endpoint import C_QUAD, r_floor
from restricted_diagonal_scan import restricted_weights


LOWER_N = 2_000_000_000
UPPER_N = 7_677_690_000
CUTOFF = 131
TAU = Decimal("0.001257623")
ROOT_SUM = 384
PELL = 13


def primes_through(n: int) -> list[int]:
    sieve = bytearray(b"\x01") * (n + 1)
    sieve[:2] = b"\x00\x00"
    for p in range(2, math.isqrt(n) + 1):
        if sieve[p]:
            sieve[p * p : n + 1 : p] = b"\x00" * (((n - p * p) // p) + 1)
    return [p for p in range(2, n + 1) if sieve[p] and p != 5]


def alternating(values: list[Fraction], degree: int) -> Fraction:
    e = [Fraction(1)] + [Fraction(0)] * degree
    for value in values:
        for j in range(degree, 0, -1):
            e[j] += value * e[j - 1]
    return sum((-1) ** j * e[j] for j in range(degree + 1))


def endpoint_terms(values: list[int], degree: int) -> int:
    e = [1] + [0] * degree
    for value in values:
        for j in range(degree, 0, -1):
            e[j] += value * e[j - 1]
    return sum(e[1:])


def relaxed_finite(common: tuple[int, ...], inactive: tuple[int, ...] = ()) -> tuple[Fraction, int]:
    primes = [p for p in primes_through(CUTOFF) if p not in inactive]
    common_set = set(common)
    x = [Fraction(1, p * p) for p in primes]
    single_lower = alternating(x, 3)

    # Concentrating all permitted pair coincidences on one edge maximizes the
    # sum of the three quadratic Bonferroni pair-survivor bounds.  Thus one
    # edge has multiplicity 1 at every prime, while the other two have
    # multiplicity 1 on common primes and 2 elsewhere.
    pair_mult_0 = [1 for _ in primes]
    pair_mult_1 = [1 if p in common_set else 2 for p in primes]
    pair_upper = alternating(
        [m * value for m, value in zip(pair_mult_0, x)], 2
    ) + 2 * alternating(
        [m * value for m, value in zip(pair_mult_1, x)], 2
    )
    triple_mult = [1 if p in common_set else 2 for p in primes]
    triple_lower = alternating(
        [m * value for m, value in zip(triple_mult, x)], 3
    )
    density = 1 - 3 * single_lower + pair_upper - triple_lower
    epsilon = (
        3 * endpoint_terms([1] * len(primes), 3)
        + endpoint_terms(pair_mult_0, 2)
        + 2 * endpoint_terms(pair_mult_1, 2)
        + endpoint_terms(triple_mult, 3)
    )
    return density, epsilon


def mixed_parity_finite(common: tuple[int, ...]) -> tuple[Fraction, int]:
    """At most two forms have an active 2-square event; one is even."""
    odd_primes = [p for p in primes_through(CUTOFF) if p != 2]
    common_set = set(common)
    active2 = (True, True, False)
    single_lower = []
    single_eps = []
    for active in active2:
        values = [Fraction(1, p * p) for p in odd_primes]
        if active:
            values.append(Fraction(1, 4))
        single_lower.append(alternating(values, 3))
        single_eps.append(endpoint_terms([1] * len(values), 3))

    best_pair_density = None
    best_pair_eps = None
    for coincident_edge in ((0, 1), (0, 2), (1, 2)):
        pair_sum = Fraction(0)
        pair_eps = 0
        for i, j in ((0, 1), (0, 2), (1, 2)):
            multiplicities = [
                1 if p in common_set or (i, j) == coincident_edge else 2
                for p in odd_primes
            ]
            values = [
                m * Fraction(1, p * p)
                for m, p in zip(multiplicities, odd_primes)
            ]
            if active2[i] or active2[j]:
                values.append(Fraction(1, 4))
                multiplicities.append(1)
            pair_sum += alternating(values, 2)
            pair_eps += endpoint_terms(multiplicities, 2)
        if best_pair_density is None or pair_sum > best_pair_density:
            best_pair_density = pair_sum
        if best_pair_eps is None or pair_eps > best_pair_eps:
            best_pair_eps = pair_eps

    triple_mult = [1 if p in common_set else 2 for p in odd_primes]
    triple_values = [
        m * Fraction(1, p * p) for m, p in zip(triple_mult, odd_primes)
    ]
    triple_values.append(Fraction(2, 4))
    triple_mult.append(2)
    triple_lower = alternating(triple_values, 3)
    density = 1 - sum(single_lower) + best_pair_density - triple_lower
    epsilon = (
        sum(single_eps) + best_pair_eps + endpoint_terms(triple_mult, 3)
    )
    return density, epsilon


def diagonal_delta_bound() -> tuple[Decimal, tuple[int, int, int]]:
    rlo, rhi = r_floor(LOWER_N), r_floor(UPPER_N - 1)
    weights = restricted_weights(rhi)
    prefix = sum(weights[:rlo])
    best = (Decimal(-1), (0, 0, 0))
    for R in range(rlo, rhi + 1):
        prefix += weights[R]
        N = max(LOWER_N, first_N_for_R(R))
        if N >= UPPER_N:
            break
        ratio = Decimal(prefix) / Decimal(N)
        if ratio > best[0]:
            best = (ratio, (N, R, prefix))

    ratio, witness = best
    dN = Decimal(LOWER_N)
    dR = Decimal(rlo)
    # The remaining three summands decrease with N (and hence with r_N).
    delta = (
        Decimal(23) / dN
        + Decimal(3) * ratio
        + Decimal(46) * Decimal(str(math.log(rlo) + 2)) / (25 * dR)
        + Decimal(LOWER_N * LOWER_N + 1) * PELL / (dN * dR * dR)
    )
    return delta, witness


def prime_root_bound() -> Decimal:
    dN = Decimal(LOWER_N)
    # Y=floor(N/77), so N/78 <= Y <= N/77.  Dusart's explicit
    # three-term estimate is sharper here than y/(log y-1.1).
    logarithm = (dN / 78).ln()
    intermediate = Decimal(6) / 77 * (
        Decimal(1) / logarithm
        + Decimal(1) / (logarithm * logarithm)
        + Decimal("2.51") / (logarithm * logarithm * logarithm)
    )
    a_bound = Decimal(156) / 25 + Decimal(312) / dN
    root = Decimal(2 * ROOT_SUM) * (Decimal(5929) + a_bound) / dN
    return intermediate + root


def scenario_total(
    name: str,
    theta: Fraction,
    common: tuple[int, ...],
    extra_common: tuple[int, ...],
    inactive: tuple[int, ...],
    delta: Decimal,
    prime_root: Decimal,
) -> tuple[Decimal, str]:
    all_common = common + extra_common
    density, epsilon = relaxed_finite(all_common, inactive)
    finite = (
        Decimal(2) * Decimal(density.numerator) / Decimal(density.denominator) / 25
        + Decimal(2 * epsilon) / Decimal(LOWER_N)
    )
    total = (
        Decimal(theta.numerator) / Decimal(theta.denominator) * C_QUAD
        + delta
        + finite
        + Decimal(6) * TAU / 25
        + prime_root
    )
    return total, (
        f"{name} theta={theta} common={list(all_common)} inactive={list(inactive)} "
        f"density={float(density):.18f} epsilon={epsilon} finite={finite:.18f}"
    )


def mixed_parity_total(
    theta: Fraction,
    common: tuple[int, ...],
    charge: Decimal,
    delta: Decimal,
    prime_root: Decimal,
) -> tuple[Decimal, str]:
    density, epsilon = mixed_parity_finite(common)
    finite = (
        Decimal(2) * Decimal(density.numerator) / Decimal(density.denominator) / 25
        + Decimal(2 * epsilon) / Decimal(LOWER_N)
    )
    total = (
        Decimal(theta.numerator) / Decimal(theta.denominator) * C_QUAD
        + charge + delta + finite + Decimal(6) * TAU / 25 + prime_root
    )
    return total, (
        f"mixed-parity theta={theta} common={list(common)} charge={charge} "
        f"density={float(density):.18f} epsilon={epsilon} finite={finite:.18f}"
    )


def concentrated_delta_bound() -> Decimal:
    R = r_floor(LOWER_N)
    F = sum(restricted_weights(R)[: R + 1])
    dN = Decimal(LOWER_N)
    dR = Decimal(R)
    theta = Decimal(161) / 225
    return (
        Decimal(900) / dN
        + Decimal(5 * F) / dN
        + Decimal(2) * theta * Decimal(str(math.log(R) + 2)) / dR
        + Decimal(LOWER_N * LOWER_N + 1) * PELL / (dN * dR * dR)
    )


def main() -> None:
    getcontext().prec = 60
    delta, diagonal_witness = diagonal_delta_bound()
    prime_root = prime_root_bound()
    target = Decimal(1) / 25 - Decimal(7) / (25 * Decimal(LOWER_N))

    # The QR degree certificate gives |A*|>rN and we split the even mass at
    # eta=r/2.  The lower endpoint controls both r and every analytic term.
    degree_margin = Decimal("4542150.848348585")
    residual_ratio = (Decimal(2) * degree_margin - 1) / Decimal(LOWER_N)
    eta = residual_ratio / 2

    scenarios = (
        # Large even mass: use an even mod-4 cell.  If it is not concentrated
        # mod 9, exclude common 3; otherwise use the close common-3 triple.
        ("even-generic", Fraction(23, 25), (), (7, 11, 13, 17), (2,)),
        # Small even mass and two occupied odd mod-4 cells.  Charge the even
        # part, restrict the diagonal to odd values, and vary mod 4.
        ("odd-two-cells", Fraction(23, 50), (), (7, 11, 13, 17), ()),
        ("odd-two-cells-common3", Fraction(23, 50), (3,), (7, 11, 13, 17), ()),
        # No even mass and one odd mod-4 cell.
        ("odd-one-cell", Fraction(23, 100), (2,), (7, 11, 13, 17), ()),
        ("odd-one-cell-common3", Fraction(23, 900), (2, 3), (), ()),
        ("global-mod9-even-triple", Fraction(23, 225), (3,), (7, 11, 13, 17), (2,)),
    )

    print(
        f"interval=[{LOWER_N},{UPPER_N}) cutoff={CUTOFF} pell={PELL} "
        f"diagonal_delta={delta:.18f} diagonal_witness={diagonal_witness}"
    )
    print(
        f"prime_root={prime_root:.18f} tail={Decimal(6)*TAU/25:.18f} "
        f"target={target:.18f}"
    )
    print(f"mixed_residual_ratio={residual_ratio:.18f} eta={eta:.18f}")
    worst = None
    for args in scenarios:
        total, detail = scenario_total(*args, delta, prime_root)
        if args[0].startswith("odd-two-cells"):
            total += eta
            detail += f" charge={eta:.18f}"
        if args[0] == "odd-one-cell-common3":
            total += Decimal("0.0012")
            detail += " charge=0.0012"
        slack = target - total
        print(f"{detail} total={total:.18f} slack={slack:.18f}")
        if worst is None or slack < worst[0]:
            worst = (slack, args[0], total)

    concentrated_delta = concentrated_delta_bound()
    total, detail = scenario_total(
        "even-common3-concentrated",
        Fraction(161, 225),
        (3,),
        (),
        (2,),
        concentrated_delta,
        prime_root,
    )
    slack = target - total
    print(
        f"{detail} concentrated_delta={concentrated_delta:.18f} "
        f"total={total:.18f} slack={slack:.18f}"
    )
    if slack < worst[0]:
        worst = (slack, "even-common3-concentrated", total)

    for name, theta, common in (
        ("odd-one-cell-mixed-parity", Fraction(23, 100), (7, 11, 13, 17)),
    ):
        total, detail = mixed_parity_total(theta, common, eta, delta, prime_root)
        slack = target - total
        print(f"{name} {detail} total={total:.18f} slack={slack:.18f}")
        if slack < worst[0]:
            worst = (slack, name, total)

    slack, name, total = worst
    assert slack > 0, (name, total, target)
    print(f"worst={name} total={total:.18f} uniform_slack={slack:.18f}")


if __name__ == "__main__":
    main()
