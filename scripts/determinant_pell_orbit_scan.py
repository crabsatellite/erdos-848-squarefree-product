#!/usr/bin/env python3
r"""Audit the determinant-uniform Pell orbit lemma.

For positive A,B,d, consider

    A p^2 - B q^2 = d,    gcd(q,d)=1.

The solution determines z=p/q (mod d), hence a root of

    A z^2 = B (mod d).

If two solutions have the same z, put

    u=(A*p1*p2-B*q1*q2)/d,
    v=(p1*q2-p2*q1)/d.

Then u and v are integers and u^2-A*B*v^2=1.  Thus one root class is one
Pell orbit, and consecutive positive solutions in that orbit grow by at
least 2+sqrt(3).  Crucially, the number of orbits is controlled modulo the
small determinant d, not by the growing coefficient A*B.

This script exhaustively checks the algebra and orbit-count inequality on a
finite parameter box.  It is an audit of a paper proof, not a replacement for
that proof.
"""

from __future__ import annotations

import argparse
from collections import defaultdict
from dataclasses import asdict, dataclass
import json
import math


PELL_GROWTH = 2.0 + math.sqrt(3.0)


@dataclass(frozen=True)
class OrbitAudit:
    parameter_cases: int
    solution_pairs: int
    same_class_pairs: int
    identity_failures: int
    orbit_bound_failures: int
    worst_orbit_occupancy: int
    worst_witness: tuple[int, int, int, int, int] | None


@dataclass(frozen=True)
class SquareSieveAudit:
    parameter_cases: int
    exact_root_sums: int
    bound_failures: int
    worst_ratio: float
    worst_witness: tuple[int, int, int, int, int, int] | None


def root_class(A: int, B: int, d: int, p: int, q: int) -> int:
    if d == 1:
        return 0
    return (p * pow(q, -1, d)) % d


def root_class_count(A: int, B: int, d: int) -> int:
    if d == 1:
        return 1
    return sum((A * z * z - B) % d == 0 for z in range(d))


def unit_root_class_count(A: int, B: int, d: int) -> int:
    if d == 1:
        return 1
    return sum(
        math.gcd(z, d) == 1 and (A * z * z - B) % d == 0
        for z in range(d)
    )


def determinant_root_sum(
    A0: int, B0: int, d: int, left: tuple[int, ...], right: tuple[int, ...]
) -> int:
    return sum(
        unit_root_class_count(A0 * r, B0 * s, d)
        for r in left for s in right
    )


def determinant_root_sum_bound(
    A0: int,
    B0: int,
    d: int,
    left: tuple[int, ...],
    right: tuple[int, ...],
) -> int:
    if not left or not right:
        return 0
    g_left = math.gcd(A0, d)
    g_right = math.gcd(B0, d)
    k_left = max(left)
    k_right = max(right)
    return min(
        d * len(left) * len(right),
        len(left) * (g_right * k_right + d),
        len(right) * (g_left * k_left + d),
    )


def square_sieve_audit_box(
    coefficient_max: int, d_max: int, quotient_max: int
) -> SquareSieveAudit:
    parameter_cases = 0
    exact_root_sums = 0
    bound_failures = 0
    worst_ratio = 0.0
    worst_witness = None
    base = tuple(range(1, quotient_max + 1))
    square5 = tuple(r for r in base if r % 5 in (1, 4))
    nonsquare5 = tuple(r for r in base if r % 5 in (2, 3))
    families = (base, square5, nonsquare5)
    for A0 in range(1, coefficient_max + 1):
        for B0 in range(1, coefficient_max + 1):
            for d in range(1, d_max + 1):
                for left in families:
                    for right in families:
                        parameter_cases += 1
                        exact = determinant_root_sum(A0, B0, d, left, right)
                        bound = determinant_root_sum_bound(
                            A0, B0, d, left, right
                        )
                        exact_root_sums += exact
                        if exact > bound:
                            bound_failures += 1
                        ratio = exact / bound if bound else 0.0
                        if ratio > worst_ratio:
                            worst_ratio = ratio
                            worst_witness = (
                                A0, B0, d, len(left), len(right), exact
                            )
    return SquareSieveAudit(
        parameter_cases=parameter_cases,
        exact_root_sums=exact_root_sums,
        bound_failures=bound_failures,
        worst_ratio=worst_ratio,
        worst_witness=worst_witness,
    )


def audit_box(A_max: int, B_max: int, p_max: int, d_max: int) -> OrbitAudit:
    parameter_cases = 0
    solution_pairs = 0
    same_class_pairs = 0
    identity_failures = 0
    orbit_bound_failures = 0
    worst_orbit_occupancy = 0
    worst_witness: tuple[int, int, int, int, int] | None = None

    for A in range(1, A_max + 1):
        for B in range(1, B_max + 1):
            by_d: dict[int, list[tuple[int, int]]] = defaultdict(list)
            for p in range(1, p_max + 1):
                for q in range(1, p_max + 1):
                    d = A * p * p - B * q * q
                    if 1 <= d <= d_max and math.gcd(q, d) == 1:
                        by_d[d].append((p, q))

            for d, solutions in by_d.items():
                parameter_cases += 1
                solution_pairs += len(solutions)
                groups: dict[int, list[tuple[int, int]]] = defaultdict(list)
                for p, q in solutions:
                    groups[root_class(A, B, d, p, q)].append((p, q))

                roots = root_class_count(A, B, d)
                alpha_max = max(
                    p * math.sqrt(A) + q * math.sqrt(B)
                    for p, q in solutions
                )
                per_orbit = 1 + int(
                    math.log(alpha_max / math.sqrt(d)) / math.log(PELL_GROWTH)
                )
                if len(solutions) > roots * per_orbit:
                    orbit_bound_failures += 1

                for group in groups.values():
                    if len(group) > worst_orbit_occupancy:
                        worst_orbit_occupancy = len(group)
                        p, q = group[0]
                        worst_witness = (A, B, d, p, q)
                    for i, (p1, q1) in enumerate(group):
                        for p2, q2 in group[i + 1 :]:
                            same_class_pairs += 1
                            nu = A * p1 * p2 - B * q1 * q2
                            nv = p1 * q2 - p2 * q1
                            if nu % d or nv % d:
                                identity_failures += 1
                                continue
                            u = nu // d
                            v = nv // d
                            if u * u - A * B * v * v != 1:
                                identity_failures += 1

    return OrbitAudit(
        parameter_cases=parameter_cases,
        solution_pairs=solution_pairs,
        same_class_pairs=same_class_pairs,
        identity_failures=identity_failures,
        orbit_bound_failures=orbit_bound_failures,
        worst_orbit_occupancy=worst_orbit_occupancy,
        worst_witness=worst_witness,
    )


def large_large_bound(N: int, Y: int, determinant: int) -> dict[str, int]:
    quotient_max = (N * N + 1) // (Y * Y)
    alpha_numerator = 2.0 * math.sqrt(N * (N * N + 1))
    orbit_length = 1 + max(
        0,
        int(
            math.log(alpha_numerator / math.sqrt(determinant))
            / math.log(PELL_GROWTH)
        ),
    )
    bound = quotient_max * quotient_max * determinant * orbit_length
    return {
        "N": N,
        "Y": Y,
        "determinant": determinant,
        "quotient_max": quotient_max,
        "orbit_length": orbit_length,
        "large_large_bound": bound,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--A-max", type=int, default=24)
    parser.add_argument("--B-max", type=int, default=24)
    parser.add_argument("--p-max", type=int, default=120)
    parser.add_argument("--d-max", type=int, default=200)
    parser.add_argument("--N", type=int)
    parser.add_argument("--Y", type=int)
    parser.add_argument("--determinant", type=int)
    parser.add_argument("--square-sieve-coefficient-max", type=int, default=8)
    parser.add_argument("--square-sieve-d-max", type=int, default=12)
    parser.add_argument("--square-sieve-quotient-max", type=int, default=12)
    args = parser.parse_args()

    print(json.dumps(asdict(audit_box(
        args.A_max, args.B_max, args.p_max, args.d_max
    )), sort_keys=True))
    print(json.dumps(asdict(square_sieve_audit_box(
        args.square_sieve_coefficient_max,
        args.square_sieve_d_max,
        args.square_sieve_quotient_max,
    )), sort_keys=True))
    if args.N is not None or args.Y is not None or args.determinant is not None:
        if args.N is None or args.Y is None or args.determinant is None:
            raise SystemExit("--N, --Y, and --determinant must be supplied together")
        print(json.dumps(large_large_bound(
            args.N, args.Y, args.determinant
        ), sort_keys=True))


if __name__ == "__main__":
    main()
