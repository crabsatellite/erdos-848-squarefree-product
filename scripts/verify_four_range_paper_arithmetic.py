#!/usr/bin/env python3
"""Exact verification of the four-range paper budgets.

This checker deliberately contains no floating-point arithmetic.  It checks
the rational rows printed in the manuscript and the reciprocal-survivor
terms in the root envelopes.  The large finite support enumerations are
separate certificates; this file checks the arithmetic that consumes their
stated survivor maxima.
"""

from __future__ import annotations

from fractions import Fraction as Q


def target(lower: int) -> Q:
    return Q(1, 25) - Q(7, 25 * lower)


def require_slack(name: str, total: Q, lower: int, ppm: int) -> None:
    slack = target(lower) - total
    assert slack > Q(ppm, 1_000_000), (name, total, target(lower), slack)
    print(f"PASS {name}: slack={float(slack):.12f}")


def root_coefficient(height: int, survivors: int, x_over_y: Q) -> Q:
    """H * (s + X/(2Y) * (4 + s/3026))."""

    return height * (
        survivors + x_over_y * Q(1, 2) * (4 + Q(survivors, 3026))
    )


def check_five_million() -> None:
    square_tail = Q(3887, 1_000_000) + sum(
        (Q(1, p * p) for p in (11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47)),
        Q(),
    )
    total = (
        Q(4928, 1_000_000)
        + Q(2, 25) * Q(55, 196)
        + Q(2, 5_000_000) * (Q(55, 196) + Q(69795, 196))
        + Q(1, 2) * Q(17398287, 1_000_000_000)
        + Q(3, 25) * square_tail
        + Q(128, 5_000_000)
    )
    require_slack("5M <= N < 10M", total, 5_000_000, 67)


SQUARE_TAIL_23 = Q(
    64081802747648035629863,
    7596668444022826249000000,
)


def check_ten_million() -> None:
    density = Q(5355507302216, 165901428816123)
    total = (
        Q(25289862, 1_000_000_000)
        + 4 * density / 25
        + Q(4 * 607, 10_000_000)
        + 4 * SQUARE_TAIL_23 / 25
        + Q(2, 3) * Q(11845571, 1_000_000_000)
    )
    require_slack("10M <= N < 20M", total, 10_000_000, 55)


def check_twenty_million() -> None:
    total = (
        Q(25289550, 1_000_000_000)
        + Q(
            1572362642548502371982744227834515457,
            171081196711186531200844968164610000000,
        )
        + Q(11661, 25000000)
        + Q(10006474, 2_000_000_000)
    )
    require_slack("20M <= N < 40M", total, 20_000_000, 50)


FORTY_BLOCKS = (
    (40_000_000, 25288306, 9973185, 27),
    (50_000_000, 25289177, 9648325, 189),
    (70_000_000, 25289195, 9135839, 445),
    (80_000_000, 25289763, 8959044, 533),
    (100_000_000, 25291155, 8684996, 669),
    (150_000_000, 25292702, 8275070, 872),
)


def check_forty_to_two_hundred_million() -> None:
    for lower, diagonal, root, ppm in FORTY_BLOCKS:
        total = (
            Q(diagonal, 1_000_000_000)
            + Q(8685, 1_000_000)
            + 3 * SQUARE_TAIL_23 / 25
            + Q(root, 2_000_000_000)
        )
        require_slack(f"40M block at {lower}", total, lower, ppm)


def check_degree_rows() -> None:
    kappa5 = Q(12769, 20164)

    n = 2_000_000_000
    x_over_d = Q(501, 25) + Q(501, n)
    systemic_margin = (
        kappa5 * Q(n - 43, 25)
        - Q(n, 500)
        - x_over_d
        - Q(501, 5 * n)
        - root_coefficient(128, 16510, x_over_d)
        - 1
        - Q(n, 50)
    )
    assert systemic_margin > 4_535_153
    residual = (2 * systemic_margin - 1) / n
    assert residual > Q(453515, 100_000_000)
    assert 2 * Q(2267575, 1_000_000_000) < residual

    n = 200_000_000
    d_lower = Q(n - 299, 300)
    x_over_d = (Q(n, 25) + 1) / d_lower

    def actual_margin(height: int, survivors: int) -> Q:
        return (
            kappa5 * Q(n - 43, 25)
            - Q(n, 300)
            - x_over_d
            - Q(1, 5) / d_lower
            - root_coefficient(height, survivors, x_over_d)
            - 1
            - Q(n, 50)
        )

    assert actual_margin(16, 22924) > Q(1574, 10_000_000) * n
    assert actual_margin(32, 4680) > Q(12427, 10_000_000) * n
    assert (2 * actual_margin(32, 4680) - 1) / n > Q(2485, 1_000_000)

    n = 80_000_000
    x_over_d = (Q(n, 25) + 1) / Q(n - 299, 300)
    baseline_margin_lower = Q(125425712308, 10_000_000)
    margin_lower = baseline_margin_lower - (
        16 * x_over_d * Q(1, 2) * Q(9176, 3026)
    )
    assert (2 * margin_lower - 1) / n > Q(30627, 100_000_000)
    print("PASS degree/residual rows")


ROOT_BLOCKS = (
    (200_000_000, 75, 805, Q(8954353732912, 10**15), Q(8955907, 10**9)),
    (300_000_000, 85, 1016, Q(7667014915985, 10**15), Q(7668494, 10**9)),
    (500_000_000, 100, 1391, Q(6334916183438, 10**15), Q(6336343, 10**9)),
    (1_000_000_000, 125, 2124, Q(4880538114951, 10**15), Q(4881897, 10**9)),
)


def check_root_envelopes() -> None:
    for lower, split, survivors, base_ceiling, envelope in ROOT_BLOCKS:
        x_over_y = (Q(lower, 25) + 2) * (split + 1) / lower
        correction = (
            Q(6, lower)
            * 128
            * x_over_y
            * Q(1, 2)
            * Q(survivors, 3026)
        )
        assert base_ceiling + correction < envelope

    n = 2_000_000_000
    x_over_y = (Q(n, 25) + 2) * 78 / n
    baseline = root_coefficient(128, 5929, x_over_y)
    for height, survivors in ((256, 986), (512, 592), (1024, 315), (2048, 146)):
        assert root_coefficient(height, survivors, x_over_y) < baseline

    aggregate_correction = Q(2 * 384, n) * x_over_y * Q(1, 2) * Q(5929, 3026)
    assert Q(7153879, 1_000_000_000) + aggregate_correction < Q(
        7155053, 1_000_000_000
    )
    print("PASS reciprocal/root envelopes")


def check_two_billion_terminal() -> None:
    total = (
        Q(23, 100) * Q(27346508, 1_000_000_000)
        + Q(2980825, 1_000_000_000)
        + 2 * Q(290282102, 1_000_000_000) / 25
        + Q(2 * 48180, 2_000_000_000)
        + Q(301830, 1_000_000_000)
        + Q(7155053, 1_000_000_000)
    )
    require_slack("2B systemic terminal", total, 2_000_000_000, 1)


def main() -> None:
    check_five_million()
    check_ten_million()
    check_twenty_million()
    check_forty_to_two_hundred_million()
    check_degree_rows()
    check_root_envelopes()
    check_two_billion_terminal()
    print("PASS four-range paper arithmetic")


if __name__ == "__main__":
    main()
