#!/usr/bin/env python3
"""Recompute the formerly missing 26.206--26.211 billion paper bridge.

The original four-range draft stopped the nested six-event block at
26,206,000,000 while the next block started at 26,211,000,000.  This
standalone checker extends the support enumeration and the unit-block
prime/root and diagonal scans to the latter endpoint.
"""

from __future__ import annotations

import functools
import math
from array import array
from decimal import Decimal, getcontext
from fractions import Fraction as Q


LOWER = 26_153_000_000
OLD_UPPER = 26_206_000_000
UPPER = 26_211_000_000
CUTOFF = 503
NEXT_PRIME = 509
K = 121
MODULUS = 43_890
C_QUAD = Decimal("0.027346508")
SQUARE_TAIL = Decimal("0.000269280")


def primes_through(limit: int) -> list[int]:
    sieve = bytearray(b"\x01") * (limit + 1)
    sieve[:2] = b"\x00\x00"
    for p in range(2, math.isqrt(limit) + 1):
        if sieve[p]:
            sieve[p * p : limit + 1 : p] = b"\x00" * (
                ((limit - p * p) // p) + 1
            )
    return [p for p in range(2, limit + 1) if sieve[p]]


def odd_support_primes() -> list[int]:
    return [p for p in primes_through(CUTOFF) if p not in (2, 5)]


def bounded_subsets(
    primes: list[int], size: int, product_limit: int
):
    chosen: list[int] = []

    def visit(start: int, need: int, product: int):
        if need == 0:
            yield tuple(chosen)
            return
        stop = len(primes) - need
        for i in range(start, stop + 1):
            new_product = product * primes[i]
            if new_product > product_limit:
                break
            minimum = new_product
            for j in range(1, need):
                minimum *= primes[i + j]
                if minimum > product_limit:
                    break
            if minimum > product_limit:
                break
            chosen.append(i)
            yield from visit(i + 1, need - 1, new_product)
            chosen.pop()

    yield from visit(0, size, 1)


def support_patterns(primes: list[int], upper: int) -> list[tuple[int, ...]]:
    full = bounded_subsets(primes, 8, upper // 2)
    one_large = bounded_subsets(
        primes, 7, upper // (2 * NEXT_PRIME)
    )
    return list(full) + list(one_large)


def elementary3(values: list[Q]) -> tuple[Q, Q, Q]:
    e1 = e2 = e3 = Q()
    for value in values:
        e3 += value * e2
        e2 += value * e1
        e1 += value
    return e1, e2, e3


def best_pair_value(
    primes: list[int],
    patterns: list[tuple[int, ...]],
    low_inactive: tuple[int, ...],
    score_n: int,
) -> tuple[Q, Q, int, int, tuple[int, ...]]:
    x = [Q(1, p * p) for p in primes]
    total_e1, total_e2, total_e3 = elementary3(x)
    total_square = sum((value * value for value in x), Q())
    low_set = set(low_inactive)
    low_e1, low_e2, low_e3 = elementary3(
        [x[i] for i in low_inactive]
    )
    sl = total_e1 - low_e1
    active_low_e2 = total_e2 - low_e2 - low_e1 * sl
    e3l = (
        total_e3
        - low_e3
        - low_e2 * sl
        - low_e1 * active_low_e2
    )
    nl = len(primes) - len(low_inactive)
    best: tuple[Q, Q, int, int, tuple[int, ...]] | None = None
    for high_inactive in patterns:
        high_set = set(high_inactive)
        high_e1, high_e2, high_e3 = elementary3(
            [x[i] for i in high_inactive]
        )
        sh = total_e1 - high_e1
        active_high_e2 = total_e2 - high_e2 - high_e1 * sh
        e3h = (
            total_e3
            - high_e3
            - high_e2 * sh
            - high_e1 * active_high_e2
        )
        inactive_union = high_set.union(low_set)
        common_square = total_square - sum(
            (x[i] * x[i] for i in inactive_union), Q()
        )
        density0 = e3h + e3l + sh * sl - common_square
        nh = len(primes) - len(high_inactive)
        common_count = len(primes) - len(inactive_union)
        zsum = nh + nl
        zsq = nh + nl + 2 * common_count
        joint0 = zsum + (zsum * zsum - zsq) // 2
        endpoint0 = (
            nh
            + math.comb(nh, 2)
            + math.comb(nh, 3)
            + nl
            + math.comb(nl, 2)
            + math.comb(nl, 3)
            + joint0
        )
        objective = Q(2, 25) * density0 + Q(
            2 * endpoint0, score_n
        )
        candidate = (
            objective, density0, endpoint0, 0, high_inactive
        )

        # The coincidence bonus is x(C+2x), where
        # C=1-sh-sl>0 here.  It is therefore largest at the least
        # common active prime; no later active prime can improve it.
        common_index = next(
            i for i in range(len(primes))
            if i not in inactive_union
        )
        xc = x[common_index]
        assert 1 - sh - sl > 0
        density = density0 + xc * (1 - sh - sl + 2 * xc)
        endpoint = endpoint0 + 1 - zsum
        coincidence_objective = (
            Q(2, 25) * density + Q(2 * endpoint, score_n)
        )
        if coincidence_objective > objective:
            candidate = (
                coincidence_objective,
                density,
                endpoint,
                primes[common_index],
                high_inactive,
            )
        if best is None or candidate[0] > best[0]:
            best = candidate
    assert best is not None
    return best


def check_support_enumeration() -> tuple[Q, int, Q, int]:
    primes = odd_support_primes()
    old_patterns = support_patterns(primes, OLD_UPPER)
    patterns = support_patterns(primes, UPPER)
    assert len(old_patterns) == 6119
    assert len(patterns) == 6123

    contrary_products = (
        51_253_692_706,
        30_223_218_306,
        38_110_106_118,
        33_435_142_818,
        28_283_653_398,
        27_076_327_278,
    )
    assert min(contrary_products) > UPPER

    index = {p: i for i, p in enumerate(primes)}
    relaxed_low = tuple(
        index[p] for p in (17, 29, 47, 79, 157, 503)
    )
    empty_low: tuple[int, ...] = ()
    best_256 = best_pair_value(
        primes, patterns, relaxed_low, LOWER
    )
    best_128 = best_pair_value(
        primes, patterns, empty_low, LOWER
    )
    expected = (7, 11, 13, 17, 23, 29, 31, 37)
    assert tuple(primes[i] for i in best_256[4]) == expected
    assert tuple(primes[i] for i in best_128[4]) == expected

    _, density_256, endpoint_256, prime_256, _ = best_256
    _, density_128, endpoint_128, prime_128, _ = best_128
    assert density_256 < Q(111_560_667, 1_000_000_000)
    assert density_128 < Q(111_634_809, 1_000_000_000)
    assert (endpoint_256, prime_256) == (234_703, 3)
    assert (endpoint_128, prime_128) == (260_615, 3)
    print(
        "PASS support bridge: "
        f"patterns 6119 -> 6123; maxima unchanged; "
        f"I256={float(density_256):.15f}; "
        f"I128={float(density_128):.15f}"
    )
    return density_256, endpoint_256, density_128, endpoint_128


def prime_table(limit: int = 5_000_000):
    sieve = bytearray(b"\x01") * (limit + 1)
    sieve[:2] = b"\x00\x00"
    for p in range(2, math.isqrt(limit) + 1):
        if sieve[p]:
            sieve[p * p : limit + 1 : p] = b"\x00" * (
                ((limit - p * p) // p) + 1
            )
    primes = [i for i in range(2, limit + 1) if sieve[i]]
    pi = array("I", [0]) * (limit + 1)
    count = 0
    for i in range(limit + 1):
        if sieve[i]:
            count += 1
        pi[i] = count
    return primes, pi


PRIMES, SMALL_PI = prime_table()


@functools.lru_cache(maxsize=None)
def phi(x: int, count: int) -> int:
    if count == 0:
        return x
    if count == 1:
        return x - x // 2
    return phi(x, count - 1) - phi(
        x // PRIMES[count - 1], count - 1
    )


def integer_root(value: int, degree: int) -> int:
    root = int(value ** (1.0 / degree))
    while (root + 1) ** degree <= value:
        root += 1
    while root**degree > value:
        root -= 1
    return root


@functools.lru_cache(maxsize=None)
def prime_pi(value: int) -> int:
    if value < len(SMALL_PI):
        return int(SMALL_PI[value])
    a = prime_pi(integer_root(value, 4))
    b = prime_pi(math.isqrt(value))
    c = prime_pi(integer_root(value, 3))
    result = phi(value, a) + ((b + a - 2) * (b - a + 1)) // 2
    for i in range(a, b):
        w = value // PRIMES[i]
        result -= prime_pi(w)
        if i < c:
            limit = prime_pi(math.isqrt(w))
            for j in range(i, limit):
                result -= prime_pi(w // PRIMES[j]) - j
    return result


PHI_M = sum(
    1 for value in range(1, MODULUS + 1)
    if math.gcd(value, MODULUS) == 1
)
COPRIME_PREFIX = array("I", [0]) * (MODULUS + 1)
_coprime_count = 0
for _value in range(1, MODULUS + 1):
    if math.gcd(_value, MODULUS) == 1:
        _coprime_count += 1
    COPRIME_PREFIX[_value] = _coprime_count


def coprime_count(value: int) -> int:
    blocks, remainder = divmod(value, MODULUS)
    return blocks * PHI_M + int(COPRIME_PREFIX[remainder])


@functools.lru_cache(maxsize=None)
def divisor_sum(bound: int) -> int:
    root = math.isqrt(bound)
    half = 0
    for value in range(1, root + 1):
        if math.gcd(value, MODULUS) == 1:
            half += coprime_count(bound // value)
    return 2 * half - coprime_count(root) ** 2


def r_floor(n: int) -> int:
    getcontext().prec = 60
    value = (
        Decimal(12)
        / Decimal(5)
        * (Decimal(n) * Decimal(n)) ** (Decimal(1) / Decimal(3))
    )
    return int(value + 1)


def first_n_for_r(r: int) -> int:
    numerator = 125 * (r - 1) ** 3
    quotient = (numerator + 1727) // 1728
    root = math.isqrt(quotient)
    return root if root * root == quotient else root + 1


def prime_segment(lower: int, upper: int) -> bytearray:
    sieve = bytearray(b"\x01") * (upper - lower + 1)
    for p in PRIMES:
        if p * p > upper:
            break
        start = max(p * p, ((lower + p - 1) // p) * p)
        if start <= upper:
            sieve[start - lower : upper - lower + 1 : p] = b"\x00" * (
                ((upper - start) // p) + 1
            )
    return sieve


def segmented_divisors(lower: int, upper: int) -> list[int]:
    remainder = list(range(lower, upper + 1))
    tau = [1] * len(remainder)
    for p in PRIMES:
        if p * p > upper:
            break
        start = ((lower + p - 1) // p) * p
        for value in range(start, upper + 1, p):
            index = value - lower
            exponent = 0
            while remainder[index] % p == 0:
                remainder[index] //= p
                exponent += 1
            tau[index] *= exponent + 1
    for index, value in enumerate(remainder):
        if value > 1:
            tau[index] *= 2
    return tau


def prime_root(
    n: int, y: int, pi_y: int, root_sum: int
) -> Decimal:
    getcontext().prec = 50
    dn = Decimal(n)
    dy = Decimal(y)
    bracket = (
        2 * (dn / 25 + 2) / dy
        + (dn * dn + 25 * dn + 1) / (dy * dy)
    )
    return (
        Decimal(4 * (pi_y - prime_pi(CUTOFF))) / dn
        + Decimal(2 * root_sum) / dn * bracket
    )


def delta(n: int, r: int, divisor_total: int) -> Decimal:
    getcontext().prec = 50
    dn = Decimal(n)
    dr = Decimal(r)
    return (
        Decimal(23) / dn
        + Decimal(3 * divisor_total) / dn
        + Decimal(46)
        * Decimal(str(math.log(r) + 2.0))
        / (25 * dr)
        + (dn * dn + 1)
        / (dn * dr * dr)
        * (
            1
            + Decimal(
                str(
                    math.log(n)
                    / math.log(2.0 + math.sqrt(3.0))
                )
            )
        )
    )


def check_unit_blocks(
    density_256: Q,
    endpoint_256: int,
    density_128: Q,
    endpoint_128: int,
) -> None:
    y_lower, y_upper = LOWER // K, UPPER // K
    primality = prime_segment(y_lower, y_upper)
    pi_y = prime_pi(y_lower - 1)
    best_root = {
        640: (Decimal(-1), None),
        768: (Decimal(-1), None),
    }
    for offset, is_prime in enumerate(primality):
        y = y_lower + offset
        if is_prime:
            pi_y += 1
        n_lower = max(LOWER, K * y)
        n_upper = min(UPPER, K * y + K - 1)
        if n_lower > n_upper:
            continue
        for n in (n_lower, n_upper):
            for root_sum in best_root:
                value = prime_root(n, y, pi_y, root_sum)
                if value > best_root[root_sum][0]:
                    best_root[root_sum] = (
                        value, (n, y, pi_y)
                    )

    r_lower, r_upper = r_floor(LOWER), r_floor(UPPER)
    tau = segmented_divisors(r_lower, r_upper)
    divisor_total = divisor_sum(r_lower - 1)
    best_ratio = (Q(-1), None)
    best_delta = (Decimal(-1), None)
    for r in range(r_lower, r_upper + 1):
        if math.gcd(r, MODULUS) == 1:
            divisor_total += tau[r - r_lower]
        n_lower = max(LOWER, first_n_for_r(r))
        n_upper = min(UPPER, first_n_for_r(r + 1) - 1)
        if n_lower > n_upper:
            continue
        ratio = Q(divisor_total, n_lower)
        if ratio > best_ratio[0]:
            best_ratio = (ratio, (n_lower, r, divisor_total))
        for n in (n_lower, n_upper):
            value = delta(n, r, divisor_total)
            if value > best_delta[0]:
                best_delta = (value, (n, r, divisor_total))

    assert best_root[640][0] < Decimal("0.002540414524")
    assert best_root[768][0] < Decimal("0.002683823447")
    assert best_root[640][1] == (
        26_153_003_767, 216_140_527, 11_921_746
    )
    assert best_root[768][1] == best_root[640][1]
    assert best_ratio[0] < Q(682_004_015, 10**12)
    assert best_ratio[1] == (
        26_153_000_000, 21_145_872, 17_836_451
    )
    assert best_delta[0] < Decimal("0.003171459351")

    def decimal_fraction(value: Q) -> Decimal:
        return Decimal(value.numerator) / Decimal(value.denominator)

    common = (
        Decimal(23) * C_QUAD / 25
        + best_delta[0]
        + Decimal(4) * SQUARE_TAIL / 25
    )
    total_256 = (
        common
        + best_root[768][0]
        + Decimal(2) * decimal_fraction(density_256) / 25
        + Decimal(2 * endpoint_256) / Decimal(LOWER)
    )
    total_128 = (
        common
        + best_root[640][0]
        + Decimal(2) * decimal_fraction(density_128) / 25
        + Decimal(2 * endpoint_128) / Decimal(LOWER)
    )
    assert total_128 < Decimal("0.039864461"), total_128
    assert total_256 < Decimal("0.039999957"), total_256
    print(
        "PASS unit-block bridge: "
        f"root640={best_root[640][0]:.15f}; "
        f"root768={best_root[768][0]:.15f}; "
        f"diagonal={float(best_ratio[0]):.15f}; "
        f"totals(root128,root256)=({total_128:.12f},"
        f"{total_256:.12f})"
    )


def main() -> None:
    support = check_support_enumeration()
    check_unit_blocks(*support)
    print("PASS nested six-event bridge through 26,211,000,000")


if __name__ == "__main__":
    main()
