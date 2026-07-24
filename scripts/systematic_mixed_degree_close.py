#!/usr/bin/env python3
"""Root/QR-correlated one-pivot degree for the systemic mixed close.

This checks a deliberately relaxed lower bound at the only controlling
endpoint.  The progression split is D=floor(N/500).  All QR masks are
intersected on the larger fixed box m<=251002, and all omitted screens and
Euler gains are discarded.
"""

from __future__ import annotations

from fractions import Fraction
import math

from modulus_correlated_eight_prime_scan import primes_through
from quadratic_residue_support_scan import qr_mask


LOWER_N = 2_000_000_000
UPPER_N = 7_677_690_000
M = 251_002
KAPPA5 = Fraction(12_769, 20_164)

# total non-5 odd prime divisors -> (cutoff, forced count)
SCREENS = {
    0: (0, 0),
    1: (0, 0),
    2: (0, 0),
    3: (2000, 1),
    4: (1400, 2),
    5: (1000, 3),
    6: (360, 4),
    7: (160, 5),
    8: (60, 6),
}


def least_excluded_product(total: int, cutoff: int, allowed_small: int) -> tuple[int, ...]:
    if allowed_small == 0:
        pool = [p for p in primes_through(cutoff + 1000) if p > cutoff]
        return tuple(pool[:total])
    small = primes_through(cutoff)[:allowed_small]
    large = [p for p in primes_through(cutoff + 1000) if p > cutoff]
    return tuple(small + large[: total - allowed_small])


def maximum_intersection(cutoff: int, choose: int) -> tuple[int, tuple[int, ...]]:
    if choose == 0:
        return M, ()
    primes = primes_through(cutoff)
    masks = [qr_mask(p, M) for p in primes]
    full = (1 << M) - 1
    best = (-1, ())

    def extend(start: int, chosen: tuple[int, ...], mask: int) -> None:
        nonlocal best
        need = choose - len(chosen)
        if need == 0:
            candidate = (mask.bit_count(), chosen)
            if candidate[0] > best[0]:
                best = candidate
            return
        for i in range(start, len(primes) - need + 1):
            extend(i + 1, chosen + (primes[i],), mask & masks[i])

    extend(0, (), full)
    return best


def degree_margin(N: int, root_bound: int, survivors: int, even: bool) -> Fraction:
    # D<=N/500, while D=floor(N/500)>=N/501.  Thus
    # X/D <= 501/25+501/N and 2X/D <= 1002/25+1002/N.
    x_over_d = Fraction(501, 25) + Fraction(501, N)
    a_bound = 2 * x_over_d
    main = (Fraction(4, 3) if even else Fraction(1)) * KAPPA5 * Fraction(N - 43, 25)
    degree = (
        main
        - Fraction(N, 500)
        - x_over_d
        - Fraction(501, 5 * N)
        - root_bound * (survivors + a_bound)
        - 1
    )
    return degree - Fraction(N, 50)


def main() -> None:
    # M certificate from D>=N/501.
    m_upper = Fraction(501 * 501 * (LOWER_N * LOWER_N + 25 * LOWER_N + 1), LOWER_N * LOWER_N)
    assert m_upper < M

    least_nine = tuple(primes_through(100)[:9])
    least_nine_product = math.prod(least_nine)
    assert least_nine_product > UPPER_N

    masks: dict[int, tuple[int, tuple[int, ...]]] = {}
    for total, (cutoff, choose) in SCREENS.items():
        if choose:
            excluded = least_excluded_product(total, cutoff, choose - 1)
            assert math.prod(excluded) > UPPER_N, (total, excluded, math.prod(excluded))
        masks[total] = maximum_intersection(cutoff, choose)

    print(
        f"interval=[{LOWER_N},{UPPER_N}) D=floor(N/500) M={M} "
        f"m_upper={float(m_upper):.12f}"
    )
    print(
        f"least_nine_support={list(least_nine)} product={least_nine_product}"
    )

    worst = None
    # c_nu is 1,1,2,4 for nu=0,1,2,>=3.  The odd case has no
    # missing-2 gain; every even case does.
    valuations = (("odd", 1, False), ("v2=1", 1, True), ("v2=2", 2, True), ("v2>=3", 4, True))
    for label, c_nu, even in valuations:
        for total in range(9):
            survivors, witness = masks[total]
            root_bound = c_nu * 2 ** (total + 1)
            margin = degree_margin(LOWER_N, root_bound, survivors, even)
            assert margin > 0, (label, total, root_bound, float(margin))
            row = (margin, label, total, root_bound, survivors, witness)
            if worst is None or row[0] < worst[0]:
                worst = row
            print(
                f"case={label} forced_total={total} H={root_bound} "
                f"max_qr_count={survivors} witness={list(witness)} "
                f"degree_margin={float(margin):.9f}"
            )

    margin, label, total, root_bound, survivors, witness = worst
    residual = 2 * margin - 1
    mod4_mass = residual / 4
    span = Fraction(2 * (LOWER_N - 1), 1) / (mod4_mass - 2)
    assert span < 1764
    print(
        f"worst_case={label} forced_total={total} H={root_bound} "
        f"survivors={survivors} witness={list(witness)}"
    )
    print(
        f"uniform_degree_margin={float(margin):.9f} "
        f"mixed_residual={float(residual):.9f} "
        f"largest_mod4_mass={float(mod4_mass):.9f} "
        f"triple_span_bound={float(span):.9f}"
    )


if __name__ == "__main__":
    main()
