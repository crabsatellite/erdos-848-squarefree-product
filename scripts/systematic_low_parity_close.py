#!/usr/bin/env python3
"""Terminal parity allocation on 1.5e6 <= N < 3e6.

The residual-pivot certificate supplies more than 374 non-base pivots at the
lower endpoint.  The three exhaustive branches are:

* at least eight even pivots;
* fewer than eight even pivots and both odd classes modulo 4 contain eight;
* fewer than eight even pivots and one odd class modulo 4 contains at most
  seven pivots.

In the first branch choose eight even pivots.  Prime 2 is inactive.  Averaging
the eight required nonsquarefree events pays the common base non-neighbourhood
by one uniform odd-prime incidence degree.

In the second branch charge at most seven even pivots and choose four pivots
from each odd class.  On each of the four a-classes modulo 4, prime 2 covers
at most four of the chosen pivots; averaging the remaining four or eight
events again pays one fixed-class odd-prime incidence degree.

In the last branch charge at most fourteen pivots and choose eight from the
sole large odd class.  Prime 2 covers all eight pivots in one odd a-class;
that class is paid raw.  The other three a-classes use the same averaged
odd-prime degree.

The diagonal constants are safe decimal ceilings of the exact eventwise
certificate produced by ``systematic_concentrated_diagonal_blocks.cpp`` on
this full interval.  Low-prime AP ceilings are checked at every jump.  The
exhaustive upper-box degrees are 182 for even non-base pivots and 268 without
parity restriction on 300<p<=28540; the complete tail degree is 40.
"""

from __future__ import annotations

from fractions import Fraction

from modulus_correlated_eight_prime_scan import primes_through


LOWER = 1_500_000
UPPER = 3_000_000
LOW_PRIME_CUTOFF = 300
HIGH_EVEN_DEGREE = 182
HIGH_ALL_DEGREE = 268
COMPLETE_TAIL_DEGREE = 40
LOW_PRIMES = tuple(
    p for p in primes_through(LOW_PRIME_CUTOFF) if p >= 3 and p != 5
)

# Exact-producer maxima are respectively
# 0.025296864088652206, 0.012656224589384308, and
# 0.0063363131826390477.  These upward decimal ceilings are paper constants.
DIAGONAL_UNRESTRICTED = Fraction(25_297, 1_000_000)
DIAGONAL_ODD_UNION = Fraction(12_657, 1_000_000)
DIAGONAL_ONE_ODD = Fraction(6_337, 1_000_000)


def ceil_div(a: int, b: int) -> int:
    return (a + b - 1) // b


def even_prime_degree(N: int) -> int:
    low = sum(2 * ceil_div(N, 25 * p * p) for p in LOW_PRIMES)
    return low + HIGH_EVEN_DEGREE + COMPLETE_TAIL_DEGREE


def fixed_mod4_odd_prime_degree(N: int) -> int:
    low = sum(2 * ceil_div(N, 100 * p * p) for p in LOW_PRIMES)
    return low + HIGH_ALL_DEGREE + COMPLETE_TAIL_DEGREE


def target(N: int) -> Fraction:
    return Fraction(N, 25) - Fraction(7, 25)


def margins(N: int) -> dict[str, Fraction]:
    odd_degree = fixed_mod4_odd_prime_degree(N)
    return {
        "eight_even": (
            target(N)
            - DIAGONAL_UNRESTRICTED * N
            - even_prime_degree(N)
        ),
        "two_odd_classes": (
            target(N)
            - DIAGONAL_ODD_UNION * N
            - 7
            - 4 * odd_degree
        ),
        "one_odd_class": (
            target(N)
            - DIAGONAL_ONE_ODD * N
            - 14
            - 2 * ceil_div(N, 100)
            - 3 * odd_degree
        ),
    }


def change_points() -> list[int]:
    points = {LOWER}
    moduli = {100}
    moduli.update(25 * p * p for p in LOW_PRIMES)
    moduli.update(100 * p * p for p in LOW_PRIMES)
    for modulus in moduli:
        first_k = max(0, (LOWER - 1) // modulus)
        last_k = (UPPER - 2) // modulus
        for k in range(first_k, last_k + 1):
            point = k * modulus + 1
            if LOWER <= point < UPPER:
                points.add(point)
    return sorted(points)


def main() -> None:
    points = change_points()
    worst: dict[str, tuple[Fraction, int]] = {}
    for N in points:
        for name, margin in margins(N).items():
            if name not in worst or margin < worst[name][0]:
                worst[name] = (margin, N)

    for name in ("eight_even", "two_odd_classes", "one_odd_class"):
        margin, N = worst[name]
        assert margin > 0
        print(
            f"branch={name} worst_N={N} "
            f"worst_margin={float(margin):.12f} "
            f"worst_margin_exact={margin}"
        )
    print(
        f"change_points={len(points)} "
        f"lower_even_degree={even_prime_degree(LOWER)} "
        f"lower_fixed_mod4_odd_degree="
        f"{fixed_mod4_odd_prime_degree(LOWER)}"
    )
    print("PASS exhaustive parity allocation closes the first low block")


if __name__ == "__main__":
    main()
