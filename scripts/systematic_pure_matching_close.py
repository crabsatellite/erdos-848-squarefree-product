#!/usr/bin/env python3
r"""Exact certificate for the systemic pure-18 parity-block matching.

The finite three-form calculation is performed with exact rational
arithmetic in the zero-coincidence case.  The endpoint calculation uses the
paper's deliberately rounded constants for the medium/large-prime tail.
"""

from __future__ import annotations

from dataclasses import asdict, dataclass
from decimal import Decimal, getcontext
from fractions import Fraction
import json
import math


CUTOFF = 353
SQUARE_TAIL = Decimal("0.000407315")
ROOT_BRACKET = Decimal("400.801")
ROOT_JUMP = 2_587_877_292


@dataclass(frozen=True)
class EndpointCertificate:
    N: int
    root_bound: int
    degree_lower: str
    triple_upper: str
    margin: str
    degree_over_N: str
    triple_over_N: str


def primes_through(n: int) -> list[int]:
    result = []
    for value in range(3, n + 1):
        if value == 5:
            continue
        if all(value % p for p in range(2, math.isqrt(value) + 1)):
            result.append(value)
    return result


def alternating(values: list[Fraction], degree: int) -> Fraction:
    elementary = [Fraction(1)] + [Fraction(0)] * degree
    for value in values:
        for j in range(degree, 0, -1):
            elementary[j] += value * elementary[j - 1]
    return sum(
        ((-1) ** j) * elementary[j] for j in range(degree + 1)
    )


def endpoint_terms(values: list[int], degree: int) -> int:
    elementary = [1] + [0] * degree
    for value in values:
        for j in range(degree, 0, -1):
            elementary[j] += value * elementary[j - 1]
    return sum(elementary[1:])


def finite_certificate() -> tuple[Fraction, Fraction, int]:
    primes = primes_through(CUTOFF)
    reciprocals = [Fraction(1, p * p) for p in primes]
    single_lower = alternating(reciprocals, 3)
    pair_upper = alternating([2 * x for x in reciprocals], 2)
    triple_lower = alternating([3 * x for x in reciprocals], 3)
    density = 1 - 3 * single_lower + 3 * pair_upper - triple_lower
    epsilon = (
        3 * endpoint_terms([1] * len(primes), 3)
        + 3 * endpoint_terms([2] * len(primes), 2)
        + endpoint_terms([3] * len(primes), 3)
    )
    return sum(reciprocals), density, epsilon


def endpoint(N: int, H: int, density: Fraction, epsilon: int) -> EndpointCertificate:
    dN = Decimal(N)
    prime_payment = dN / (
        Decimal(19) * ((dN / Decimal(20)).ln() - Decimal("1.1"))
    )
    tail = (
        (dN / 50 + 1) * SQUARE_TAIL
        + prime_payment
        + Decimal(H) * ROOT_BRACKET
    )
    small_sum = Decimal("0.161841")
    degree = (
        dN / 50 - 1
        - (dN / 50 + 1) * small_sum
        - 69
        - tail
    )
    triple = (
        (dN / 50 + 1)
        * (Decimal(density.numerator) / Decimal(density.denominator))
        + Decimal(epsilon)
        + 3 * tail
    )
    return EndpointCertificate(
        N=N,
        root_bound=H,
        degree_lower=str(degree),
        triple_upper=str(triple),
        margin=str(degree - triple),
        degree_over_N=str(degree / dN),
        triple_over_N=str(triple / dN),
    )


def main() -> None:
    getcontext().prec = 60
    reciprocal_sum, density, epsilon = finite_certificate()
    if not reciprocal_sum < Fraction(161_841, 1_000_000):
        raise SystemExit("finite reciprocal-square bound failed")
    if not density < Fraction(3_707, 1_000_000):
        raise SystemExit("finite triple-density bound failed")
    if epsilon != 1_628_952:
        raise SystemExit("finite endpoint count changed")

    endpoints = (
        endpoint(2_000_000_000, 1024, density, epsilon),
        endpoint(ROOT_JUMP, 2048, density, epsilon),
    )
    if any(Decimal(item.margin) <= 0 for item in endpoints):
        raise SystemExit("systemic matching margin is not positive")

    print(json.dumps({
        "cutoff": CUTOFF,
        "prime_count": len(primes_through(CUTOFF)),
        "reciprocal_sum": str(
            Decimal(reciprocal_sum.numerator)
            / Decimal(reciprocal_sum.denominator)
        ),
        "triple_density": str(
            Decimal(density.numerator) / Decimal(density.denominator)
        ),
        "endpoint_epsilon": epsilon,
        "endpoints": [asdict(item) for item in endpoints],
    }, sort_keys=True))


if __name__ == "__main__":
    main()
