#!/usr/bin/env python3
"""Joint finite/tail certificate for the mixed close on [4e7, 2e8).

For one target progression write F_i for a prime-square witness through 47
and H_i for a witness above 47.  The pointwise inequality

  1_{cap_i(F_i union H_i)}
    <= (1/2) 1_{cap_i F_i}
       + (1/2) 1_{at least two F_i}
       + (1/2) sum_i 1_{H_i}

halves the old six-form tail without moving the Hall cut.  The finite
two-of-three term is evaluated with degree-1 pair-survivor lower bounds and
degree-2 triple-survivor upper bounds.  Prime 2 is conditioned exactly
modulo 4 in the odd branches.
"""

from __future__ import annotations

from decimal import Decimal, getcontext
from fractions import Fraction
import math

from modulus_correlated_eight_prime_scan import primes_through
from quadratic_residue_support_scan import qr_mask
from systematic_mixed_full_close import (
    alternating,
    endpoint_terms,
    primes_through as finite_primes_through,
)
from q503_endpoint import prime_pi
from systematic_mixed_interval_support import (
    DEGREE_M,
    safe_degree_margin,
)
from systematic_mod5_actual_support import mod5_cosets, support_coset_maximum
from systematic_one_form_bonferroni import support_prefix_cases
import systematic_mixed_cell_10m_close as cell10


LOWER = 40_000_000
UPPER = 200_000_000
ACTUAL_DEGREE_LOWER = 80_000_000
CUTOFF = 47
ETA = Fraction(3, 20_000)  # 0.00015
TAIL47 = Fraction(3_887, 1_000_000)

# The five diagonal columns are eventwise Mobius--CRT ceilings from
# systematic_concentrated_diagonal_blocks.cpp, run with R=20,000,000.
BLOCKS = (
    (
        40_000_000, 50_000_000, 80, 95,
        Decimal("0.009515492"), Decimal("0.007769131"),
        {
            "unrestricted": Decimal("0.025294"),
            "concentrated": Decimal("0.019681"),
            "odd_union": Decimal("0.012652"),
            "one_odd": Decimal("0.006330"),
            "one_odd_cell": Decimal("0.000711"),
        },
    ),
    (
        50_000_000, 70_000_000, 85, 100,
        Decimal("0.008587502"), Decimal("0.007121641"),
        {
            "unrestricted": Decimal("0.025294"),
            "concentrated": Decimal("0.019681"),
            "odd_union": Decimal("0.012652"),
            "one_odd": Decimal("0.006330"),
            "one_odd_cell": Decimal("0.000711"),
        },
    ),
    (
        70_000_000, 80_000_000, 100, 90,
        Decimal("0.007127391"), Decimal("0.006612128"),
        {
            "unrestricted": Decimal("0.025294"),
            "concentrated": Decimal("0.019681"),
            "odd_union": Decimal("0.012652"),
            "one_odd": Decimal("0.006330"),
            "one_odd_cell": Decimal("0.000711"),
        },
    ),
    (
        80_000_000, 100_000_000, 75, 75,
        Decimal("0.007859384"), Decimal("0.007067385"),
        {
            "unrestricted": Decimal("0.025294"),
            "concentrated": Decimal("0.019681"),
            "odd_union": Decimal("0.012652"),
            "one_odd": Decimal("0.006330"),
            "one_odd_cell": Decimal("0.000711"),
        },
    ),
    (
        100_000_000, 150_000_000, 80, 80,
        Decimal("0.007163605"), Decimal("0.006533856"),
        {
            "unrestricted": Decimal("0.025294"),
            "concentrated": Decimal("0.019681"),
            "odd_union": Decimal("0.012652"),
            "one_odd": Decimal("0.006330"),
            "one_odd_cell": Decimal("0.000711"),
        },
    ),
    (
        150_000_000, 200_000_000, 95, 95,
        Decimal("0.005835331"), Decimal("0.005459037"),
        {
            "unrestricted": Decimal("0.025294"),
            "concentrated": Decimal("0.019681"),
            "odd_union": Decimal("0.012652"),
            "one_odd": Decimal("0.006330"),
            "one_odd_cell": Decimal("0.000711"),
        },
    ),
)


def dec(value: Fraction) -> Decimal:
    return Decimal(value.numerator) / Decimal(value.denominator)


def finite_three(common: tuple[int, ...], inactive: tuple[int, ...]) -> tuple[Fraction, int]:
    """Old all-three-finite upper bound, now at cutoff 47."""
    primes = [p for p in finite_primes_through(CUTOFF) if p not in inactive]
    common_set = set(common)
    z = [Fraction(1, p * p) for p in primes]
    single_lower = alternating(z, 3)
    pair_mult_0 = [1 for _ in primes]
    pair_mult_1 = [1 if p in common_set else 2 for p in primes]
    pair_upper = alternating(
        [m * value for m, value in zip(pair_mult_0, z)], 2
    ) + 2 * alternating(
        [m * value for m, value in zip(pair_mult_1, z)], 2
    )
    triple_lower = alternating(
        [m * value for m, value in zip(pair_mult_1, z)], 3
    )
    density = 1 - 3 * single_lower + pair_upper - triple_lower
    epsilon = (
        3 * endpoint_terms([1] * len(primes), 3)
        + endpoint_terms(pair_mult_0, 2)
        + 2 * endpoint_terms(pair_mult_1, 2)
        + endpoint_terms(pair_mult_1, 3)
    )
    return density, epsilon


def odd_two_finite(common: tuple[int, ...]) -> tuple[Fraction, int]:
    """At-least-two finite events after removing the prime-2 classes."""
    primes = [p for p in finite_primes_through(CUTOFF) if p != 2]
    common_set = set(common)
    z = [Fraction(1, p * p) for p in primes]

    # With prime 2 absent, the degree-1/degree-2 upper bound is maximized
    # by declaring every non-common prime pair-coincident.  Indeed adding
    # such a coincidence changes the bound by z_p(1-2S_p)>0, since
    # 3 sum_{3<=p<=47,p!=5} p^-2 < 1/2.
    triple_mult = [1 if p in common_set else 2 for p in primes]
    values = [m * value for m, value in zip(triple_mult, z)]
    density = sum(z) + 2 * sum(
        values[i] * values[j]
        for i in range(len(values)) for j in range(i + 1, len(values))
    )
    epsilon = (
        sum(3 if p in common_set else 5 for p in primes)
        + 2 * endpoint_terms(triple_mult, 2)
    )
    assert 3 * sum(z) < Fraction(1, 2)
    return density, epsilon


def pair_union_finite(common: tuple[int, ...]) -> tuple[Fraction, int]:
    primes = [p for p in finite_primes_through(CUTOFF) if p != 2]
    common_set = set(common)
    multiplicities = [1 if p in common_set else 2 for p in primes]
    return (
        sum(Fraction(m, p * p) for m, p in zip(multiplicities, primes)),
        sum(multiplicities),
    )


def finite_two(common: tuple[int, ...], parity: str) -> tuple[Fraction, int]:
    odd_density, odd_epsilon = odd_two_finite(common)
    if parity == "even":
        return odd_density, odd_epsilon
    if parity == "odd_two":
        pair_density, pair_epsilon = pair_union_finite(common)
        # One mod-4 class makes the close pair automatically bad, the
        # opposite class makes the third form automatically bad, and the
        # two even classes have no 2-square event.  Five endpoint units are
        # a safe payment for the four subprogressions.
        return (
            Fraction(1, 4) + pair_density / 4 + odd_density / 2,
            5 + pair_epsilon + 2 * odd_epsilon,
        )
    if parity == "odd_one":
        # The common prime-2 root makes one class automatically bad in all
        # three forms; the other three classes use the odd-prime bound.
        return Fraction(1, 4) + 3 * odd_density / 4, 5 + 3 * odd_epsilon
    raise ValueError(parity)


def common_sets(gap: Fraction, require_three: bool) -> list[tuple[int, ...]]:
    """All cutoff-prime common supports allowed by 4 Q^2 < gap."""
    candidates = [
        p for p in finite_primes_through(CUTOFF)
        if p != 2 and (p != 3 or require_three)
    ]
    if require_three:
        candidates = [p for p in candidates if p != 3]
        initial = (3,)
        initial_product = 3
    else:
        initial = ()
        initial_product = 1
    rows: list[tuple[int, ...]] = []

    def visit(start: int, support: tuple[int, ...], product: int) -> None:
        if 4 * product * product < gap:
            rows.append(support)
        for i in range(start, len(candidates)):
            next_product = product * candidates[i]
            if not 4 * next_product * next_product < gap:
                continue
            visit(i + 1, support + (candidates[i],), next_product)

    visit(0, initial, initial_product)
    assert rows
    return rows


def finite_rows(residual: Fraction):
    even_gap = Fraction(2, 1) / ETA
    odd_mass = residual - ETA
    assert odd_mass > 0
    odd_two_gap = Fraction(2, 1) / odd_mass
    odd_one_gap = Fraction(1, 1) / odd_mass
    configs = {
        "even-generic": ("even", (2,), even_gap, False),
        "even-concentrated": ("even", (2,), even_gap, True),
        "odd-two": ("odd_two", (), odd_two_gap, False),
        "odd-two-common3": ("odd_two", (), odd_two_gap, True),
        "odd-one": ("odd_one", (), odd_one_gap, False),
        "odd-one-common23": ("odd_one", (), odd_one_gap, True),
    }
    rows = {}
    for name, (parity, inactive, gap, require_three) in configs.items():
        candidates = []
        for odd_common in common_sets(gap, require_three):
            all_common = ((2,) + odd_common) if parity == "odd_one" else odd_common
            i3, e3 = finite_three(all_common, inactive)
            i2, e2 = finite_two(odd_common, parity)
            candidates.append((i3 + i2, e3 + e2, odd_common))
        rows[name] = candidates
    return rows, even_gap, odd_two_gap, odd_one_gap


def actual_support_degree_certificate() -> tuple[Fraction, tuple]:
    primes = primes_through(math.isqrt(UPPER) + 1)
    masks = [qr_mask(p, DEGREE_M) for p in primes]
    cosets = mod5_cosets(DEGREE_M)
    rows = []
    product = 1
    for k in range(12):
        if k:
            product *= primes[k - 1]
        if product > UPPER:
            break
        survivors, witness, prefixes, coset = support_coset_maximum(
            UPPER, k, DEGREE_M, primes, masks, cosets
        )
        for label, c_nu, even in (
            ("odd", 1, False), ("v2=1", 1, True),
            ("v2=2", 2, True), ("v2>=3", 4, True),
        ):
            H = c_nu * 2 ** (k + 1)
            margin = safe_degree_margin(ACTUAL_DEGREE_LOWER, H, survivors, even)
            rows.append((margin, label, k, H, survivors, witness, prefixes, coset))
    worst = min(rows)
    residual = (2 * worst[0] - 1) / ACTUAL_DEGREE_LOWER
    assert residual > 2 * ETA
    return residual, worst


def one_form_degree_certificate() -> tuple[Fraction, tuple]:
    """Uniform Bonferroni degree on [4e7,8e7), using the upper support."""
    L, U, split, M = LOWER, ACTUAL_DEGREE_LOWER, 70, 4902
    Y = L // split
    primes = primes_through(math.isqrt(U) + 1)
    masks = [qr_mask(p, M) for p in primes]
    cosets = mod5_cosets(M)
    feasible_max = 0
    product = 1
    for k, p in enumerate(primes[:12], 1):
        product *= p
        if product <= U:
            feasible_max = k
    small_primes = primes_through(CUTOFF)
    x_lower = Fraction(L - 43, 25)
    x_upper = Fraction(L, 25) + 1
    medium = x_upper * TAIL47 + prime_pi(Y) - prime_pi(CUTOFF)
    rows = []
    for k in range(feasible_max + 1):
        for survivors, witness, count, coset in support_prefix_cases(
            U, k, M, primes, masks, cosets
        ):
            active = [p for p in small_primes if p not in set(witness)]
            for label, c_nu, even in (
                ("odd", 1, False), ("v2=1", 1, True),
                ("v2=2", 2, True), ("v2>=3", 4, True),
            ):
                finite = active if even else [2] + active
                small_lower = alternating(
                    [Fraction(1, p * p) for p in finite], 3
                )
                small_error = endpoint_terms([1] * len(finite), 3)
                H = c_nu * 2 ** (k + 1)
                root = H * (survivors + 2 * x_upper / Y)
                margin = (
                    small_lower * x_lower - small_error - medium - root
                    - Fraction(L, 50)
                )
                rows.append(
                    (margin, label, k, H, survivors, witness, count, coset,
                     root, small_lower, small_error)
                )
    worst = min(rows)
    residual = (2 * worst[0] - 1) / L
    assert residual > 2 * ETA
    return residual, worst


def main() -> None:
    getcontext().prec = 60
    residual_low, degree_worst_low = one_form_degree_certificate()
    residual_high, degree_worst_high = actual_support_degree_certificate()
    residual = min(residual_low, residual_high)
    finite, even_gap, odd_two_gap, odd_one_gap = finite_rows(residual)
    print(
        f"degree_low_worst={degree_worst_low[1:]} "
        f"residual_low={float(residual_low):.15f}"
    )
    print(
        f"degree_high_worst={degree_worst_high[1:]} "
        f"residual_high={float(residual_high):.15f} "
        f"eta={float(ETA):.15f}"
    )
    print(
        f"gap_bounds even<{float(even_gap):.9f} "
        f"odd_two<{float(odd_two_gap):.9f} odd_one<{float(odd_one_gap):.9f}"
    )

    diagonal_key = {
        "even-generic": "unrestricted",
        "even-concentrated": "concentrated",
        "odd-two": "odd_union",
        "odd-two-common3": "odd_union",
        "odd-one": "one_odd",
        "odd-one-common23": "one_odd_cell",
    }
    charged = {
        "even-generic": False, "even-concentrated": False,
        "odd-two": True, "odd-two-common3": True,
        "odd-one": True, "odd-one-common23": True,
    }
    square_tail = Decimal(3) * dec(TAIL47) / 25
    overall = None
    for (L, U, even_split, odd_split, even_root_ceiling,
         odd_root_ceiling, diagonals) in BLOCKS:
        cell10.LOWER = L
        cell10.UPPER = U
        even_root_rows = tuple(
            cell10.exact_root_profile(47, even_split, label)
            for label in ("v2=1", "v2=2", "v2>=3")
        )
        even_root_row = max(even_root_rows, key=lambda row: row[0])
        odd_root_row = cell10.exact_root_profile(47, odd_split, "odd")
        even_root_value = dec(even_root_row[0])
        odd_root_value = dec(odd_root_row[0])
        assert even_root_value < even_root_ceiling, (
            L, U, even_root_value, even_root_ceiling
        )
        assert odd_root_value < odd_root_ceiling, (
            L, U, odd_root_value, odd_root_ceiling
        )
        target = Decimal(1) / 25 - Decimal(7) / (25 * Decimal(L))
        print(
            f"root_block=[{L},{U}) even_split={even_split} "
            f"even_value={even_root_value:.18f} "
            f"even_ceiling={even_root_ceiling:.18f} "
            f"even_witness_N={even_root_row[1]} "
            f"even_worst={even_root_row[2][1:4]} odd_split={odd_split} "
            f"odd_value={odd_root_value:.18f} "
            f"odd_ceiling={odd_root_ceiling:.18f} "
            f"odd_witness_N={odd_root_row[1]} "
            f"odd_worst={odd_root_row[2][1:4]}"
        )
        for name, candidates in finite.items():
            finite_best = max(
                (dec(density) / 25 + Decimal(epsilon) / Decimal(L),
                 density, epsilon, support)
                for density, epsilon, support in candidates
            )
            finite_payment, density, epsilon, support = finite_best
            root_ceiling = (
                even_root_ceiling if name.startswith("even-")
                else odd_root_ceiling
            )
            total = (
                diagonals[diagonal_key[name]]
                + (dec(ETA) if charged[name] else Decimal(0))
                + finite_payment + square_tail + root_ceiling / 2
            )
            slack = target - total
            assert slack > 0, (L, U, name, total, target)
            print(
                f"branch={name} common={list(support)} "
                f"finite_sum={float(density):.15f}/{epsilon} "
                f"total={total:.18f} slack={slack:.18f}"
            )
            row = (slack, L, U, name, total)
            if overall is None or row < overall:
                overall = row

    # Decimal-free audit of the controlling first-block even-generic row.
    density, epsilon, support = max(
        finite["even-generic"],
        key=lambda row: row[0] / 25 + Fraction(row[1], 40_000_000),
    )
    exact_total = (
        Fraction(25_294, 10**6)
        + density / 25 + Fraction(epsilon, 40_000_000)
        + 3 * TAIL47 / 25
        + Fraction(9_515_492, 2 * 10**9)
    )
    exact_slack = (
        Fraction(1, 25) - Fraction(7, 25 * 40_000_000) - exact_total
    )
    assert overall[1:4] == (40_000_000, 50_000_000, "even-generic")
    assert support == (7,)
    assert exact_slack > Fraction(412, 10**6)
    print(
        f"PASS controlling={overall} "
        f"exact_total={dec(exact_total):.18f} "
        f"exact_slack={dec(exact_slack):.18f}"
    )


if __name__ == "__main__":
    main()
