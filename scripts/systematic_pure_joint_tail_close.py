#!/usr/bin/env python3
"""Joint small/tail three-pivot certificate for the pure 18 parity blocks."""

from __future__ import annotations

import argparse
from fractions import Fraction
import math

from modulus_correlated_eight_prime_scan import primes_through
from q503_endpoint import prime_pi
from systematic_mixed_degree_descent import support_maximum
from systematic_mixed_full_close import alternating, endpoint_terms
from systematic_mod5_actual_support import mod5_cosets
from systematic_pure_determinant_tail import bounded_qr_mask


CUTOFF = 47
TAIL = Fraction(3887, 1_000_000)


def factor_support(t: int, primes: tuple[int, ...]) -> tuple[int, int]:
    valuation = 0
    while t % 2 == 0:
        valuation += 1
        t //= 2
    count = 0
    for p in primes:
        if p in (2, 5):
            continue
        if p * p > t:
            break
        if t % p:
            continue
        count += 1
        while t % p == 0:
            t //= p
    if t > 1 and t != 5:
        count += 1
    return valuation, count


def root_factor(valuation: int, support_size: int) -> int:
    if valuation <= 1:
        c_nu = 1
    elif valuation == 2:
        c_nu = 2
    else:
        c_nu = 4
    return c_nu * 2 ** (support_size + 1)


def finite_constants() -> tuple[Fraction, int, Fraction, int]:
    primes = primes_through(CUTOFF)
    z = [Fraction(1, p * p) for p in primes]
    single_lower = alternating(z, 3)
    degree_error = endpoint_terms([1] * len(primes), 3)
    # If fewer than two forms have a tail witness, a common bad point has
    # at least two finite-witness forms.  In terms of the finite survivor
    # indicators S_i, this event is 1-e_2(S)+2e_3(S).  Bonferroni gives
    # 1-3 L_1(2z)+2 U_2(3z).
    two_bad_upper = (
        1
        - 3 * alternating([2 * value for value in z], 1)
        + 2 * alternating([3 * value for value in z], 2)
    )
    two_bad_error = (
        3 * endpoint_terms([2] * len(primes), 1)
        + 2 * endpoint_terms([3] * len(primes), 2)
    )
    return single_lower, degree_error, two_bad_upper, two_bad_error


def uniform_support_envelope(U: int, K: int = 676, a_bound: float = 1.04004):
    """Exact pure-pivot root envelope for every t<=U, with a fixed quotient box."""
    odd_mask = sum(1 << (m - 1) for m in range(1, K + 1, 2))
    base_mask = mod5_cosets(K)[1] & odd_mask
    primes = tuple(primes_through(math.isqrt(U) + 1))
    masks = {p: bounded_qr_mask(p, K) for p in primes if p not in (2, 5)}
    worst = None
    checked = 0
    for t in range(18, U + 1, 25):
        n = t
        valuation = 0
        while n % 2 == 0:
            valuation += 1
            n //= 2
        mask = base_mask
        support_size = 0
        for p in primes:
            if p in (2, 5):
                continue
            if p * p > n:
                break
            if n % p:
                continue
            support_size += 1
            mask &= masks[p]
            while n % p == 0:
                n //= p
        if n > 1 and n != 5:
            support_size += 1
            mask &= bounded_qr_mask(n, K)
        survivors = mask.bit_count()
        H = root_factor(valuation, support_size)
        payment = H * (survivors + a_bound)
        row = (payment, t, valuation, support_size, H, survivors)
        if worst is None or row > worst:
            worst = row
        checked += 1
    return worst, checked


def relaxed_support_envelope(U: int, K: int = 676, a_bound: float = 1.04004):
    """Uniform upper envelope retaining the smallest k-1 support primes."""
    primes = primes_through(math.isqrt(U) + 1)
    masks = [bounded_qr_mask(p, K) for p in primes]
    odd_mask = sum(1 << (m - 1) for m in range(1, K + 1, 2))
    base_mask = mod5_cosets(K)[1] & odd_mask
    rows = []
    for k in range(8):
        survivors, witness, prefixes = support_maximum(
            U, k, K, primes, masks, initial_mask=base_mask
        )
        H = 4 * 2 ** (k + 1)
        payment = H * (survivors + a_bound)
        rows.append((payment, k, H, survivors, witness, prefixes))
    return rows, max(rows)


def check_prime_envelope() -> float:
    worst_slack = float("inf")
    for y in range(60_000, 60_185):
        upper = y / (math.log(y) - 1.1) + 1.34
        slack = upper - prime_pi(y)
        assert slack >= 0
        worst_slack = min(worst_slack, slack)
    return worst_slack


def certificate(N: int, split: int):
    Y = N // split
    if Y <= CUTOFF:
        raise ValueError("split leaves no intermediate range")
    x_lower = Fraction(N, 50) - 1
    x_upper = Fraction(N, 50) + 1
    K = (N * N + 1) // (Y * Y)
    odd_mask = sum(1 << (m - 1) for m in range(1, K + 1, 2))
    base_mask = mod5_cosets(K)[1] & odd_mask
    primes = tuple(primes_through(math.isqrt(N) + 1))
    masks = {p: bounded_qr_mask(p, K) for p in primes if p not in (2, 5)}

    medium = x_upper * TAIL + prime_pi(Y) - prime_pi(CUTOFF)
    worst = None
    checked = 0
    for t in range(18, N + 1, 25):
        n = t
        valuation = 0
        while n % 2 == 0:
            valuation += 1
            n //= 2
        mask = base_mask
        support_size = 0
        for p in primes:
            if p in (2, 5):
                continue
            if p * p > n:
                break
            if n % p:
                continue
            support_size += 1
            mask &= masks[p]
            while n % p == 0:
                n //= p
        if n > 1 and n != 5:
            support_size += 1
            mask &= bounded_qr_mask(n, K)
        K_t = (t * N + 1) // (Y * Y)
        survivors = (mask & ((1 << K_t) - 1)).bit_count() if K_t else 0
        H = root_factor(valuation, support_size)
        tail = medium + H * (survivors + 2 * x_upper / Y)
        row = (tail, t, valuation, support_size, H, K_t, survivors)
        if worst is None or row > worst:
            worst = row
        checked += 1

    single_lower, degree_error, two_bad_density, two_bad_error = finite_constants()
    degree = single_lower * x_lower - degree_error - worst[0]
    finite_two = two_bad_density * x_upper + two_bad_error
    common_bad = finite_two + Fraction(3, 2) * worst[0]
    span_threshold = Fraction(N, 125) + 2
    return {
        "N": N,
        "split": split,
        "Y": Y,
        "K": K,
        "checked": checked,
        "medium": medium,
        "worst": worst,
        "single_lower": single_lower,
        "degree_error": degree_error,
        "two_bad_density": two_bad_density,
        "two_bad_error": two_bad_error,
        "degree": degree,
        "finite_two": finite_two,
        "common_bad": common_bad,
        "span_threshold": span_threshold,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("N", type=int)
    parser.add_argument("--split", type=int, required=True)
    parser.add_argument("--envelope-upper", type=int)
    parser.add_argument("--global-relaxed-upper", type=int)
    args = parser.parse_args()
    data = certificate(args.N, args.split)
    print(
        f"N={data['N']} split={data['split']} Y={data['Y']} K={data['K']} "
        f"checked={data['checked']} medium={float(data['medium']):.9f}"
    )
    print(f"worst_tail={data['worst']}")
    print(
        f"L3={float(data['single_lower']):.15f}/{data['degree_error']} "
        f"A2={float(data['two_bad_density']):.15f}/{data['two_bad_error']}"
    )
    print(
        f"degree={float(data['degree']):.9f} "
        f"finite_two={float(data['finite_two']):.9f} "
        f"common_bad={float(data['common_bad']):.9f} "
        f"span_threshold={float(data['span_threshold']):.9f} "
        f"margin={float(data['degree']-data['common_bad']):.9f}"
    )
    print(f"prime_envelope_60000_60184_min_slack={check_prime_envelope():.12f}")
    if args.envelope_upper is not None:
        worst, checked = uniform_support_envelope(args.envelope_upper)
        print(
            f"envelope_upper={args.envelope_upper} checked={checked} "
            f"uniform_root_envelope={worst}"
        )
    if args.global_relaxed_upper is not None:
        rows, worst = relaxed_support_envelope(args.global_relaxed_upper)
        print(
            f"global_relaxed_upper={args.global_relaxed_upper} "
            f"relaxed_rows={rows} relaxed_worst={worst}"
        )
        assert worst[0] < 3605


if __name__ == "__main__":
    main()
