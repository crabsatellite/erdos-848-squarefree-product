#!/usr/bin/env python3
"""Terminal one-form/parity close on 3e6 <= N < 5e6.

This keeps the original Hall cut.  The support calculation first proves that
every mixed defect has far more than the 22 non-base residual pivots needed by
the exhaustive parity trichotomy.  It uses a deliberately relaxed envelope:
for each divisor count and 2-adic type, the smallest finite Bonferroni density,
largest endpoint error, and largest quadratic-residue survivor count are taken
independently.  Thus the resulting residual is a lower bound for every actual
support row.

The common-base neighbourhood is then paid by averaging eight required
one-form events.  The external exact producers give degrees 278 and 383 on
300 < p <= 28540, degree 49 on the complete p > 28540 tail, and the three
eventwise diagonal ceilings used below.  Low-prime AP ceilings are checked at
every jump, so no collision or distinct-product pair surface remains.
"""

from __future__ import annotations

from fractions import Fraction
import math

from modulus_correlated_eight_prime_scan import primes_through
from q503_endpoint import SMALL_PI
from quadratic_residue_support_scan import qr_mask
from systematic_mixed_cell_10m_close import tail_after
from systematic_mixed_full_close import alternating, endpoint_terms
from systematic_mod5_actual_support import mod5_cosets
from systematic_one_form_bonferroni import support_prefix_cases


LOWER = 3_000_000
UPPER = 5_000_000
SUPPORT_MODULUS = 4_902
SUPPORT_SPLIT = 70
CUTOFF = 17

LOW_PRIME_CUTOFF = 300
HIGH_EVEN_DEGREE = 278
HIGH_ALL_DEGREE = 383
COMPLETE_TAIL_DEGREE = 49
LOW_PRIMES = tuple(
    p for p in primes_through(LOW_PRIME_CUTOFF) if p >= 3 and p != 5
)

# Safe upward decimals from systematic_concentrated_diagonal_blocks.cpp on
# the complete interval.  The exact maxima are 0.0252947507622325588,
# 0.0126547336590459378, and 0.006332568165889201.
DIAGONAL_UNRESTRICTED = Fraction(25_295, 1_000_000)
DIAGONAL_ODD_UNION = Fraction(12_655, 1_000_000)
DIAGONAL_ONE_ODD = Fraction(6_333, 1_000_000)


def ceil_div(a: int, b: int) -> int:
    return (a + b - 1) // b


def residual_certificate(
    required_density: Fraction | None = Fraction(157_645, 100_000_000),
    required_pivots: int | None = 22,
) -> tuple[Fraction, tuple]:
    """Return an exact uniform relaxed residual and its endpoint witness."""
    primes = primes_through(math.isqrt(UPPER) + 1)
    masks = [qr_mask(p, SUPPORT_MODULUS) for p in primes]
    cosets = mod5_cosets(SUPPORT_MODULUS)
    small_primes = primes_through(CUTOFF)
    tail = tail_after(CUTOFF)

    feasible_max = 0
    product = 1
    for k, p in enumerate(primes[:12], 1):
        product *= p
        if product <= UPPER:
            feasible_max = k

    rows = []
    for k in range(feasible_max + 1):
        supports = support_prefix_cases(
            UPPER, k, SUPPORT_MODULUS, primes, masks, cosets
        )
        largest_survivor = max(row[0] for row in supports)
        for label, c_nu, even in (
            ("odd", 1, False),
            ("v2=1", 1, True),
            ("v2=2", 2, True),
            ("v2>=3", 4, True),
        ):
            densities = []
            errors = []
            for _, witness, _, _ in supports:
                active = [p for p in small_primes if p not in set(witness)]
                finite = active if even else [2] + active
                densities.append(
                    alternating([Fraction(1, p * p) for p in finite], 3)
                )
                errors.append(endpoint_terms([1] * len(finite), 3))
            rows.append(
                (
                    label,
                    k,
                    c_nu * 2 ** (k + 1),
                    largest_survivor,
                    min(densities),
                    max(errors),
                )
            )

    best = None
    first_y = LOWER // SUPPORT_SPLIT
    last_y = (UPPER - 1) // SUPPORT_SPLIT
    for Y in range(first_y, last_y + 1):
        left = max(LOWER, SUPPORT_SPLIT * Y)
        right = min(UPPER - 1, SUPPORT_SPLIT * Y + SUPPORT_SPLIT - 1)
        prime_count = int(SMALL_PI[Y]) - int(SMALL_PI[CUTOFF])
        for label, k, H, survivors, small, error in rows:
            # On a fixed floor cell Y=floor(N/70), margin=A*N+B and the
            # normalized residual is 2*A+(2*B-1)/N.  Its minimum is therefore
            # at one of the two cell endpoints, selected here exactly.
            A = (
                small / 25
                - tail / 25
                - Fraction(2 * H, 25 * Y)
                - Fraction(1, 50)
            )
            B = (
                -Fraction(43, 25) * small
                - error
                - tail
                - prime_count
                - H * survivors
                - Fraction(2 * H, Y)
            )
            N = right if 2 * B - 1 > 0 else left
            residual = 2 * A + Fraction(2 * B - 1, N)
            item = (residual, N, label, k, H, survivors)
            if best is None or item < best:
                best = item

    assert best is not None
    residual, N, _, _, _, _ = best
    if required_density is not None:
        assert residual > required_density
    if required_pivots is not None:
        assert residual * LOWER > required_pivots
    return residual, best


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
    residual, residual_witness = residual_certificate()
    print(
        "residual_minimum="
        f"{float(residual):.18f} witness={residual_witness[1:]} "
        f"raw_at_lower={float(residual * LOWER):.12f} "
        f"residual_exact={residual}"
    )

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
    print("PASS exhaustive parity allocation closes the second low block")


if __name__ == "__main__":
    main()
