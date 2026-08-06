#!/usr/bin/env python3
"""Recompute the exact rational budgets printed or used by the final paper.

This is an independent, floating-point-free mirror of the compact arithmetic
definitions in the final Lean route.  It does not check generated witness
tables; their semantic Lean checkers do that.
"""

from __future__ import annotations

from fractions import Fraction as Q


SQUARE_TAIL_7 = Q(
    263529083909042886517376461184337967,
    8573456796637692379906289787841000000,
)
ODD_ROOT_7 = Q(221926420176, 12755647965025)
SQUARE_TAIL_23 = Q(
    64081802747648035629863,
    7596668444022826249000000,
)
SQUARE_ODD = Q(
    124487826292585911291592581,
    100465940172201877143025000000,
)

FINITE = (
    Q(8685, 1_000_000),
    Q(12616, 1_000_000),
    Q(8685, 1_000_000),
    Q(12616, 1_000_000),
    Q(8685, 1_000_000),
    Q(12616, 1_000_000),
    Q(19420, 1_000_000),
    Q(20878, 1_000_000),
    Q(26643, 1_000_000),
    Q(29459, 1_000_000),
)


def target(lower: int) -> Q:
    return Q(1, 25) - Q(7, 25 * lower)


def check_uniform_pure() -> None:
    primes = (3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47)
    small_upper = 100_001 * sum((Q(1, p * p) for p in primes), Q()) + 13
    envelope = (
        small_upper / 5_000_000
        + Q(3887, 25 * 1_000_000)
        + Q(59, 10_000)
        + Q(11_264_064, 3_125 * 5_000_000)
    )
    assert envelope <= Q(1, 100) - Q(1, 5_000_000)
    print("PASS uniform pure envelope")


def check_uniform_mixed() -> None:
    bad = Q(17, 1225) + SQUARE_TAIL_7 / 25 + ODD_ROOT_7 / 6
    assert bad + Q(1, 5_000_000) * (1 + Q(19601, 49)) < (
        Q(1, 50) - Q(1, 525)
    )
    assert Q(2 * 5_000_000, 525) - 1 > 19046
    assert 5 * 3809 < 19046
    print("PASS uniform mixed degree and residual")


def branch_residual(diagonal: tuple[Q, ...], lower: int, branch: int) -> Q:
    unrestricted, concentrated, even_two, low_two, odd_union, odd_cell, one_odd, one_odd_cell = diagonal
    delta = Q(1, 20_001) + Q(1, lower)
    return (
        unrestricted,
        concentrated,
        unrestricted,
        even_two + delta,
        low_two + 2 * delta,
        low_two + 2 * delta,
        odd_union + 3 * delta,
        odd_cell + 3 * delta,
        one_odd + 3 * delta,
        one_odd_cell + 3 * delta,
    )[branch]


def branch_tail(roots: tuple[Q, Q, Q, Q], branch: int) -> Q:
    root = roots[(0, 0, 1, 1, 2, 2, 3, 3, 3, 3)[branch]]
    if branch < 6:
        return 3 * SQUARE_TAIL_23 / 25 + root / 2
    return SQUARE_ODD + root / 2


def check_budget(
    name: str,
    lower: int,
    diagonal_numerators: tuple[int, ...],
    root_numerators: tuple[int, int, int, int],
) -> None:
    diagonal = tuple(Q(value, 1_000_000_000) for value in diagonal_numerators)
    roots = tuple(Q(value, 1_000_000_000) for value in root_numerators)
    for branch in range(10):
        total = (
            branch_residual(diagonal, lower, branch)
            + FINITE[branch]
            + branch_tail(roots, branch)
        )
        assert total < target(lower), (name, branch, total, target(lower))
    print(f"PASS {name}: ten exact branches")


def check_twenty_million() -> None:
    check_budget(
        "20M <= N < 40M",
        20_000_000,
        (
            25_289_550,
            19_671_796,
            16_158_563,
            15_806_240,
            12_646_194,
            7_027_715,
            6_323_839,
            705_249,
        ),
        (8_622_089, 10_006_474, 12_915_119, 10_177_869),
    )
    representative = (
        Q(25_289_550, 1_000_000_000)
        + Q(8_685, 1_000_000)
        + 3 * SQUARE_TAIL_23 / 25
        + Q(10_006_474, 2_000_000_000)
    )
    expected = Q(
        303791140850460908947114523,
        7596668444022826249000000000,
    )
    margin = target(20_000_000) - representative
    expected_margin = Q(
        75490557093924693317991,
        7596668444022826249000000000,
    )
    assert representative == expected
    assert margin == expected_margin
    assert margin > 0
    print("PASS displayed 20M even-two-generic total and exact margin")


def check_forty_to_two_hundred() -> None:
    rows = (
        (
            40_000_000,
            (25_288_306, 19_669_629, 16_128_739, 15_777_662,
             12_644_928, 7_012_150, 6_323_387, 704_922),
            (9_677_836, 9_973_185, 10_991_872, 10_396_089),
        ),
        (
            50_000_000,
            (25_289_177, 19_670_398, 16_131_931, 15_780_966,
             12_645_934, 7_011_784, 6_324_212, 705_254),
            (9_350_108, 9_648_325, 10_405_463, 9_926_965),
        ),
        (
            70_000_000,
            (25_289_195, 19_670_557, 16_133_338, 15_782_486,
             12_646_195, 7_011_939, 6_324_677, 705_450),
            (8_921_868, 9_135_839, 9_679_089, 9_335_765),
        ),
        (
            80_000_000,
            (25_289_763, 19_670_912, 16_135_253, 15_784_499,
             12_646_399, 7_011_866, 6_324_905, 706_127),
            (8_771_555, 8_959_044, 9_511_773, 9_134_226),
        ),
        (
            100_000_000,
            (25_291_155, 19_672_482, 16_141_797, 15_791_002,
             12_648_139, 7_012_439, 6_326_632, 707_564),
            (8_534_837, 8_684_996, 9_127_671, 8_825_297),
        ),
        (
            150_000_000,
            (25_292_702, 19_673_898, 16_148_259, 15_797_585,
             12_649_812, 7_013_162, 6_328_282, 709_139),
            (8_175_215, 8_275_070, 8_569_448, 8_368_371),
        ),
    )
    for lower, diagonal, roots in rows:
        check_budget(f"40M block at {lower}", lower, diagonal, roots)


def check_hybrid() -> None:
    rows = (
        (
            200_000_000,
            (25_590_324, 20_168_539, 16_872_533, 16_041_224,
             12_795_680, 7_197_027, 6_399_705, 722_825),
            9_000_000,
        ),
        (
            300_000_000,
            (25_613_263, 20_082_644, 16_697_367, 16_048_295,
             12_790_938, 7_163_320, 6_398_197, 721_318),
            7_700_000,
        ),
        (
            500_000_000,
            (25_676_337, 20_053_210, 16_548_570, 16_104_173,
             12_792_225, 7_137_947, 6_404_223, 727_777),
            6_400_000,
        ),
        (
            1_000_000_000,
            (25_805_423, 20_154_575, 16_623_300, 16_229_817,
             12_806_593, 7_137_733, 6_419_567, 743_132),
            5_000_000,
        ),
    )
    for lower, diagonal, root in rows:
        check_budget(
            f"hybrid block at {lower}",
            lower,
            diagonal,
            (root, root, root, root),
        )


def check_unbounded() -> None:
    check_budget(
        "N >= 500B",
        500_000_000_000,
        (
            26_005_710,
            20_944_421,
            17_208_292,
            16_649_746,
            13_003_280,
            7_437_057,
            6_604_680,
            917_036,
        ),
        (8_062_340, 8_062_340, 8_062_340, 8_062_340),
    )


def main() -> None:
    check_uniform_pure()
    check_uniform_mixed()
    check_twenty_million()
    check_forty_to_two_hundred()
    check_hybrid()
    check_unbounded()
    print("PASS final paper arithmetic")


if __name__ == "__main__":
    main()
