#!/usr/bin/env python3
"""Audit the cutoff-359 root/inactive-event correlation in dense E1.

A valuation-one pivot with 256 transformed roots has at least seven
non-5 odd prime divisors.  Below the live endpoint at most one can exceed
359.  We enumerate the resulting forced inactive-event subsets and evaluate
the degree-3 individual / degree-2 joint Bonferroni certificate exactly in
floating arithmetic (the printed decimals are rounded outwards in the paper).
"""

from __future__ import annotations

import argparse
import itertools
import math
from dataclasses import dataclass

import numpy as np

from q503_endpoint import C_QUAD, prime_pi, r_floor
from restricted_diagonal_scan import delta25, restricted_weights


def primes_through(n: int) -> list[int]:
    sieve = bytearray(b"\x01") * (n + 1)
    sieve[:2] = b"\x00\x00"
    for p in range(2, math.isqrt(n) + 1):
        if sieve[p]:
            sieve[p * p : n + 1 : p] = b"\x00" * (((n - p * p) // p) + 1)
    return [p for p in range(3, n + 1) if sieve[p] and p != 5]


def forced_subsets(primes: list[int], size: int, limit: int):
    chosen: list[int] = []

    def visit(start: int, left: int, product: int):
        if left == 0:
            yield tuple(chosen)
            return
        for i in range(start, len(primes) - left + 1):
            p = primes[i]
            if product * p > limit:
                break
            chosen.append(i)
            yield from visit(i + 1, left - 1, product * p)
            chosen.pop()

    yield from visit(0, size, 1)


def elementary3(values: list[float]) -> tuple[float, float, float]:
    e1 = e2 = e3 = 0.0
    for x in values:
        e3 += x * e2
        e2 += x * e1
        e1 += x
    return e1, e2, e3


def individual_lower(active_x: list[float]) -> float:
    e1, e2, e3 = elementary3(active_x)
    return 1.0 - e1 + e2 - e3


def count_individual_terms(n: int) -> int:
    return math.comb(n, 1) + math.comb(n, 2) + math.comb(n, 3)


@dataclass(frozen=True)
class Certificate:
    inactive: tuple[int, ...]
    density: float
    endpoint: int
    coincidence_prime: int


def high_low_certificates(primes: list[int], patterns, N: int):
    x = [1.0 / (p * p) for p in primes]
    low_L = individual_lower(x)
    low_endpoint = count_individual_terms(len(primes))
    best_density = Certificate((), -1.0, -1, -1)
    best_endpoint = Certificate((), -1.0, -1, -1)
    best_combined = Certificate((), -1.0, -1, -1)

    for inactive in patterns:
        inactive_set = set(inactive)
        active = [i for i in range(len(primes)) if i not in inactive_set]
        high_L = individual_lower([x[i] for i in active])
        high_endpoint = count_individual_terms(len(active))

        # Start from the noncoincident union.  At most one active common prime
        # can be coincident; include the zero-coincidence case as -1.
        base_c = [1 if i in inactive_set else 2 for i in range(len(primes))]
        choices = [-1] + active
        for coincidence in choices:
            c = base_c.copy()
            if coincidence >= 0:
                c[coincidence] = 1
            weighted = [c[i] * x[i] for i in range(len(primes))]
            s1 = sum(weighted)
            s2 = sum(v * v for v in weighted)
            joint_U = 1.0 - s1 + (s1 * s1 - s2) / 2.0
            I = 1.0 - high_L - low_L + joint_U
            c1 = sum(c)
            c2 = (c1 * c1 - sum(v * v for v in c)) // 2
            eps = high_endpoint + low_endpoint + c1 + c2
            cert = Certificate(
                tuple(primes[i] for i in inactive), I, eps,
                -1 if coincidence < 0 else primes[coincidence],
            )
            if I > best_density.density:
                best_density = cert
            if eps > best_endpoint.endpoint:
                best_endpoint = cert
            score = 2.0 * I / 25.0 + 2.0 * eps / N
            old_score = 2.0 * best_combined.density / 25.0 + 2.0 * best_combined.endpoint / N
            if score > old_score:
                best_combined = cert

    return best_density, best_endpoint, best_combined


def high_high_relaxed_certificates(
    primes: list[int], patterns, N: int, batch_size: int = 2048
):
    """Force only three <=47 inactive events on the second high pivot."""
    n = len(primes)
    x = np.array([1.0 / (p * p) for p in primes], dtype=np.float64)
    x2 = x * x
    small = [i for i, p in enumerate(primes) if p <= 47]
    relaxed = list(itertools.combinations(small, 3))
    B = np.ones((len(relaxed), n), dtype=np.int8)
    for row, inactive in enumerate(relaxed):
        B[row, list(inactive)] = 0

    def lower_rows(active: np.ndarray):
        s1 = active @ x
        q2 = active @ x2
        q3 = active @ (x2 * x)
        e2 = (s1 * s1 - q2) / 2.0
        e3 = (s1 * s1 * s1 - 3 * s1 * q2 + 2 * q3) / 6.0
        return 1.0 - s1 + e2 - e3

    LB = lower_rows(B)
    nB = B.sum(axis=1, dtype=np.int64)
    endB = np.array([count_individual_terms(int(v)) for v in nB])
    sumBx = B @ x
    sumBx2 = B @ x2

    best_I = (-1.0, None)
    best_eps = (-1, None)
    best_score = (-1.0, None)
    patterns = list(patterns)
    for start in range(0, len(patterns), batch_size):
        chunk = patterns[start : start + batch_size]
        A = np.ones((len(chunk), n), dtype=np.int8)
        for row, inactive in enumerate(chunk):
            A[row, list(inactive)] = 0
        LA = lower_rows(A)
        nA = A.sum(axis=1, dtype=np.int64)
        endA = np.array([count_individual_terms(int(v)) for v in nA])
        sumAx = A @ x
        sumAx2 = A @ x2

        overlap = A @ B.T
        overlap_x2 = (A * x2) @ B.T
        common = (A[:, None, :] & B[None, :, :]).argmax(axis=2)
        coin_x = x[common]
        coin_x2 = x2[common]

        s1 = sumAx[:, None] + sumBx[None, :] - coin_x
        s2 = (
            sumAx2[:, None] + sumBx2[None, :]
            + 2.0 * overlap_x2 - 3.0 * coin_x2
        )
        U = 1.0 - s1 + (s1 * s1 - s2) / 2.0
        I = 1.0 - LA[:, None] - LB[None, :] + U

        c1 = nA[:, None] + nB[None, :] - 1
        c2sum = nA[:, None] + nB[None, :] + 2 * overlap - 3
        joint = c1 + (c1 * c1 - c2sum) // 2
        eps = endA[:, None] + endB[None, :] + joint
        score = 2.0 * I / 25.0 + 2.0 * eps / N

        for matrix, best, kind in (
            (I, best_I, "I"), (eps, best_eps, "eps"), (score, best_score, "score")
        ):
            flat = int(np.argmax(matrix))
            value = matrix.flat[flat].item()
            if value > best[0]:
                row, col = np.unravel_index(flat, matrix.shape)
                witness = (
                    tuple(primes[i] for i in chunk[row]),
                    tuple(primes[i] for i in relaxed[col]),
                    primes[int(common[row, col])],
                    float(I[row, col]), int(eps[row, col]), float(score[row, col]),
                )
                if kind == "I":
                    best_I = (float(value), witness)
                elif kind == "eps":
                    best_eps = (int(value), witness)
                else:
                    best_score = (float(value), witness)
    return best_I, best_eps, best_score, len(relaxed)


def high_high_gap_density(
    primes: list[int], patterns, N: int, pattern_limit: int,
    batch_size: int = 256,
):
    """Exact high-high density using the product-at-most-417 gap constraint.

    A pair density is at most the high-low density obtained by reactivating
    all events of either form.  One explicit compatible pair supplies a
    starting value, so only patterns whose high-low bound exceeds that value
    can participate in the maximum.  The remaining Cartesian square is then
    exhausted exactly.
    """
    patterns = list(patterns)
    n = len(primes)
    x = np.array([1.0 / (p * p) for p in primes], dtype=np.float64)
    x2 = x * x
    x3 = x2 * x
    A = np.ones((len(patterns), n), dtype=np.int8)
    for row, inactive in enumerate(patterns):
        A[row, list(inactive)] = 0

    s1 = A @ x
    q2 = A @ x2
    q3 = A @ x3
    e2 = (s1 * s1 - q2) / 2.0
    e3 = (s1 * s1 * s1 - 3.0 * s1 * q2 + 2.0 * q3) / 6.0
    L = 1.0 - s1 + e2 - e3

    low_L = individual_lower(list(x))
    coin = A.argmax(axis=1)
    union_s1 = s1 + x.sum() - x[coin]
    union_s2 = 3.0 * q2 + x2.sum() - 3.0 * x2[coin]
    U = 1.0 - union_s1 + (union_s1 * union_s1 - union_s2) / 2.0
    high_low_I = 1.0 - L - low_L + U

    # A seven-event pattern is an actual divisor of its pivot.  If its base
    # 2*prod(D) exceeds half the pattern endpoint, the pivot equals that base;
    # against any other exact seven-event base we can therefore test whether
    # an admissible multiple lies within the selected gap 834.  Six-event
    # patterns omit an unknown further prime and are deliberately left
    # relaxed here.
    bases = np.array(
        [
            2 * math.prod(primes[i] for i in pat) if len(pat) == 7 else 0
            for pat in patterns
        ],
        dtype=np.int64,
    )

    def multiplier_compatible(rows: np.ndarray, cols: np.ndarray):
        left_base = bases[rows, None]
        right_base = bases[cols][None, :]
        known = (left_base > 0) & (right_base > 0)
        result = np.ones((len(rows), len(cols)), dtype=bool)

        left_high = known & (left_base * 2 > pattern_limit)
        safe_right = np.where(right_base > 0, right_base, 1)
        multiplier = np.rint(left_base / safe_right).astype(np.int64)
        multiplier = np.maximum(multiplier, 1)
        multiplier = np.minimum(
            multiplier, np.maximum(pattern_limit // safe_right, 1)
        )
        result &= (~left_high) | (
            np.abs(left_base - multiplier * right_base) <= 834
        )

        right_high = known & (right_base * 2 > pattern_limit)
        safe_left = np.where(left_base > 0, left_base, 1)
        multiplier = np.rint(right_base / safe_left).astype(np.int64)
        multiplier = np.maximum(multiplier, 1)
        multiplier = np.minimum(
            multiplier, np.maximum(pattern_limit // safe_left, 1)
        )
        result &= (~right_high) | (
            np.abs(right_base - multiplier * left_base) <= 834
        )
        return result

    index = {tuple(primes[i] for i in pat): row for row, pat in enumerate(patterns)}
    witness_options = (
        (
            (3, 13, 19, 31, 41, 43, 53),
            (3, 11, 17, 29, 37, 47, 59),
        ),
        (
            (11, 13, 17, 29, 31, 37, 43),
            (7, 11, 19, 23, 41, 53, 61),
        ),
        (
            (7, 13, 19, 23, 37, 47, 61),
            (7, 11, 17, 29, 41, 43, 59),
        ),
    )
    for witness_sets in witness_options:
        if witness_sets[0] in index and witness_sets[1] in index:
            witness_a, witness_b = (index[witness_sets[0]], index[witness_sets[1]])
            break
    else:
        raise RuntimeError("no deterministic joint-compatible seed pattern")

    def pair_density(rows_a: np.ndarray, rows_b: np.ndarray):
        left, right = A[rows_a], A[rows_b]
        common = left & right
        coincidence = common.argmax(axis=1)
        cx, cx2 = x[coincidence], x2[coincidence]
        ss1 = s1[rows_a] + s1[rows_b] - cx
        overlap_x2 = np.sum(common * x2, axis=1)
        ss2 = q2[rows_a] + q2[rows_b] + 2.0 * overlap_x2 - 3.0 * cx2
        joint = 1.0 - ss1 + (ss1 * ss1 - ss2) / 2.0
        return 1.0 - L[rows_a] - L[rows_b] + joint, coincidence

    initial, initial_coin = pair_density(
        np.array([witness_a]), np.array([witness_b])
    )
    best = (float(initial[0]), witness_a, witness_b, int(initial_coin[0]))
    candidates = np.flatnonzero(high_low_I > best[0])
    B = A[candidates]
    logp = np.log(np.array(primes, dtype=np.float64))
    sparse_mode = len(candidates) > 10000

    if sparse_mode:
        def evaluate_sparse_pairs(rows_a: np.ndarray, rows_b: np.ndarray) -> None:
            nonlocal best
            for start in range(0, len(rows_a), 100000):
                ra = rows_a[start : start + 100000]
                rb = rows_b[start : start + 100000]
                left, right = A[ra], A[rb]
                active_common = left & right
                inactive_common = (1 - left) & (1 - right)
                coincidence = active_common.argmax(axis=1)
                compatible = (
                    inactive_common @ logp + math.log(4.0)
                    + 2.0 * np.log(np.array(primes)[coincidence])
                    <= math.log(834.0) + 1e-12
                )
                cx, cx2 = x[coincidence], x2[coincidence]
                ss1 = s1[ra] + s1[rb] - cx
                overlap_x2 = np.sum(active_common * x2, axis=1)
                ss2 = q2[ra] + q2[rb] + 2.0 * overlap_x2 - 3.0 * cx2
                joint = 1.0 - ss1 + (ss1 * ss1 - ss2) / 2.0
                density = 1.0 - L[ra] - L[rb] + joint
                density = np.where(compatible, density, -1.0)
                pos = int(np.argmax(density))
                value = float(density[pos])
                if value > best[0]:
                    best = (
                        value, int(ra[pos]), int(rb[pos]),
                        int(coincidence[pos]),
                    )

        # Unknown six-event patterns retain their omitted large prime, so
        # keep their multiplier relation relaxed and compare them with every
        # candidate.
        unknown = candidates[bases[candidates] == 0]
        for start in range(0, len(unknown), 4):
            rows = unknown[start : start + 4]
            evaluate_sparse_pairs(
                np.repeat(rows, len(candidates)),
                np.tile(candidates, len(rows)),
            )

        # Exact seven-event patterns have at most 47 possible multiples here.
        # Sort all actual multiples and retain only pattern pairs represented
        # by values within the selected gap 834.
        entries: list[tuple[int, int]] = []
        for row in candidates[bases[candidates] > 0]:
            base = int(bases[row])
            entries.extend(
                (multiple * base, int(row))
                for multiple in range(1, pattern_limit // base + 1)
            )
        entries.sort()
        exact_pairs: set[tuple[int, int]] = set()
        left = 0
        for right, (value, row) in enumerate(entries):
            while entries[left][0] < value - 834:
                left += 1
            for pos in range(left, right):
                other = entries[pos][1]
                if row != other:
                    exact_pairs.add((min(row, other), max(row, other)))
        if exact_pairs:
            pair_array = np.array(sorted(exact_pairs), dtype=np.int64)
            evaluate_sparse_pairs(pair_array[:, 0], pair_array[:, 1])
    else:
        for start in range(0, len(candidates), batch_size):
            rows = candidates[start : start + batch_size]
            left = A[rows]
            active_common = left[:, None, :] & B[None, :, :]
            inactive_common = (1 - left[:, None, :]) & (1 - B[None, :, :])
            coincidence = active_common.argmax(axis=2)
            compatible = (
                inactive_common @ logp
                + math.log(4.0) + 2.0 * np.log(np.array(primes)[coincidence])
                <= math.log(834.0) + 1e-12
            )
            compatible &= multiplier_compatible(rows, candidates)
            cx, cx2 = x[coincidence], x2[coincidence]
            ss1 = s1[rows, None] + s1[candidates][None, :] - cx
            overlap_x2 = (left * x2) @ B.T
            ss2 = (
                q2[rows, None] + q2[candidates][None, :]
                + 2.0 * overlap_x2 - 3.0 * cx2
            )
            joint = 1.0 - ss1 + (ss1 * ss1 - ss2) / 2.0
            density = 1.0 - L[rows, None] - L[candidates][None, :] + joint
            density = np.where(compatible, density, -1.0)
            flat = int(np.argmax(density))
            value = float(density.flat[flat])
            if value > best[0]:
                rr, cc = np.unravel_index(flat, density.shape)
                best = (
                    value, int(rows[rr]), int(candidates[cc]),
                    int(coincidence[rr, cc]),
                )

    value, row_a, row_b, coincidence = best
    common_product = math.prod(
        primes[i] for i in patterns[row_a] if i in set(patterns[row_b])
    )
    density_result = (
        value,
        tuple(primes[i] for i in patterns[row_a]),
        tuple(primes[i] for i in patterns[row_b]),
        primes[coincidence],
        common_product,
        len(candidates),
    )

    # Exhaust the combined density-plus-endpoint payment as well.  The exact
    # endpoint count is maximized by two size-six inactive sets with no common
    # forced prime, so it supplies a global pruning bound.
    active_max = n - 6
    overlap_max_endpoint = n - 12
    c1_max = 2 * active_max - 1
    c2sum_max = 2 * active_max + 2 * overlap_max_endpoint - 3
    global_eps = (
        2 * count_individual_terms(active_max) + c1_max
        + (c1_max * c1_max - c2sum_max) // 2
    )

    if sparse_mode:
        safe_score = 2.0 * value / 25.0 + 2.0 * global_eps / N
        combined_result = (
            safe_score, value, global_eps,
            tuple(primes[i] for i in patterns[row_a]),
            tuple(primes[i] for i in patterns[row_b]),
            primes[coincidence], len(candidates), global_eps,
        )
        return density_result, combined_result

    def endpoint_count(a: int, b: int, overlap: int) -> int:
        c1 = a + b - 1
        c2sum = a + b + 2 * overlap - 3
        return (
            count_individual_terms(a) + count_individual_terms(b) + c1
            + (c1 * c1 - c2sum) // 2
        )

    initial_overlap = int(A[witness_a] @ A[witness_b])
    initial_eps = endpoint_count(
        int(A[witness_a].sum()), int(A[witness_b].sum()), initial_overlap
    )
    initial_score = 2.0 * float(initial[0]) / 25.0 + 2.0 * initial_eps / N
    density_threshold = 25.0 / 2.0 * (initial_score - 2.0 * global_eps / N)
    combined_candidates = np.flatnonzero(high_low_I > density_threshold)
    B = A[combined_candidates]
    best_combined = (
        initial_score, float(initial[0]), initial_eps,
        witness_a, witness_b, int(initial_coin[0]),
    )
    end_ind = np.array(
        [count_individual_terms(int(v)) for v in A.sum(axis=1)], dtype=np.int64
    )
    active_count = A.sum(axis=1, dtype=np.int64)
    for start in range(0, len(combined_candidates), batch_size):
        rows = combined_candidates[start : start + batch_size]
        left = A[rows]
        active_common = left[:, None, :] & B[None, :, :]
        inactive_common = (1 - left[:, None, :]) & (1 - B[None, :, :])
        overlap = active_common.sum(axis=2, dtype=np.int64)
        coincidence = active_common.argmax(axis=2)
        compatible = (
            inactive_common @ logp
            + math.log(4.0) + 2.0 * np.log(np.array(primes)[coincidence])
            <= math.log(834.0) + 1e-12
        )
        compatible &= multiplier_compatible(rows, combined_candidates)
        cx, cx2 = x[coincidence], x2[coincidence]
        ss1 = s1[rows, None] + s1[combined_candidates][None, :] - cx
        overlap_x2 = (left * x2) @ B.T
        ss2 = (
            q2[rows, None] + q2[combined_candidates][None, :]
            + 2.0 * overlap_x2 - 3.0 * cx2
        )
        joint = 1.0 - ss1 + (ss1 * ss1 - ss2) / 2.0
        density = (
            1.0 - L[rows, None] - L[combined_candidates][None, :] + joint
        )
        c1 = active_count[rows, None] + active_count[combined_candidates][None, :] - 1
        c2sum = (
            active_count[rows, None] + active_count[combined_candidates][None, :]
            + 2 * overlap - 3
        )
        eps = (
            end_ind[rows, None] + end_ind[combined_candidates][None, :] + c1
            + (c1 * c1 - c2sum) // 2
        )
        score = 2.0 * density / 25.0 + 2.0 * eps / N
        score = np.where(compatible, score, -1.0)
        flat = int(np.argmax(score))
        candidate_score = float(score.flat[flat])
        if candidate_score > best_combined[0]:
            rr, cc = np.unravel_index(flat, score.shape)
            best_combined = (
                candidate_score, float(density[rr, cc]), int(eps[rr, cc]),
                int(rows[rr]), int(combined_candidates[cc]),
                int(coincidence[rr, cc]),
            )
    score, combined_I, combined_eps, ca, cb, cc = best_combined
    combined_result = (
        score, combined_I, combined_eps,
        tuple(primes[i] for i in patterns[ca]),
        tuple(primes[i] for i in patterns[cb]),
        primes[cc], len(combined_candidates), global_eps,
    )
    return density_result, combined_result


def tail_after(Q: int) -> float:
    """The certified cutoff tail obtained from tau_509 < 0.000265420."""
    return 0.000265420 + sum(
        1.0 / (p * p) for p in primes_through(509) if Q < p <= 509
    )


def full_active_pair(primes: list[int], N: int) -> tuple[float, int]:
    x = [1.0 / (p * p) for p in primes]
    L = individual_lower(x)
    # The worst permitted case has its sole coincidence at p=3.
    c = [1 if p == 3 else 2 for p in primes]
    weighted = [c[i] * x[i] for i in range(len(primes))]
    s1 = sum(weighted)
    s2 = sum(v * v for v in weighted)
    U = 1.0 - s1 + (s1 * s1 - s2) / 2.0
    I = 1.0 - 2.0 * L + U
    ind = 2 * count_individual_terms(len(primes))
    c1 = sum(c)
    joint = c1 + (c1 * c1 - sum(v * v for v in c)) // 2
    return I, ind + joint


def hall_envelope(
    N: int, Q: int, root_sum: int, density: float, endpoint: int, k: int = 100
) -> float:
    R = r_floor(N)
    weights = restricted_weights(R)
    fixed = float(23 * C_QUAD / 25 + delta25(N, R, sum(weights)))
    Y = N // k
    bracket = 2 * (N / 25 + 2) / Y + (N * N + 25 * N + 1) / (Y * Y)
    prime_root = (
        4 * (prime_pi(Y) - prime_pi(Q)) / N
        + 2 * root_sum * bracket / N
    )
    pair = 2 * density / 25 + 2 * endpoint / N
    return fixed + pair + 4 * tail_after(Q) / 25 + prime_root


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("N", type=int, nargs="?", default=9_380_000_000)
    parser.add_argument("--q", type=int, default=359)
    parser.add_argument("--envelope-n", type=int, default=9_370_000_000)
    args = parser.parse_args()

    primes = primes_through(args.q)
    next_prime = primes_through(args.q + 100)[len(primes)]
    seven = list(forced_subsets(primes, 7, args.N // 2))
    six = list(forced_subsets(primes, 6, args.N // (2 * next_prime)))
    patterns = list(dict.fromkeys(seven + six))
    print(
        f"N={args.N} Q={args.q} primes={len(primes)} next_prime={next_prime} "
        f"seven={len(seven)} six={len(six)} patterns={len(patterns)}"
    )
    certs = high_low_certificates(primes, patterns, args.envelope_n)
    for name, cert in zip(
        ("MAX_DENSITY", "MAX_ENDPOINT", "MAX_COMBINED"),
        certs,
    ):
        score = 2.0 * cert.density / 25.0 + 2.0 * cert.endpoint / args.N
        print(
            f"{name} I={cert.density:.15f} eps={cert.endpoint} "
            f"pair={score:.15f} coincidence={cert.coincidence_prime} "
            f"inactive={list(cert.inactive)}"
        )

    hh_I, hh_eps, hh_score, relaxed_count = high_high_relaxed_certificates(
        primes, patterns, args.envelope_n
    )
    print(f"HIGH_HIGH_RELAXED second_patterns={relaxed_count}")
    for name, result in (
        ("MAX_DENSITY", hh_I), ("MAX_ENDPOINT", hh_eps),
        ("MAX_COMBINED", hh_score),
    ):
        value, witness = result
        first, second, coincidence, density, endpoint, score = witness
        print(
            f"{name} value={value} I={density:.15f} eps={endpoint} "
            f"pair={score:.15f} coincidence={coincidence} "
            f"inactive_first={list(first)} inactive_second={list(second)}"
        )

    gap_density, gap_combined = high_high_gap_density(
        primes, patterns, args.envelope_n, args.N
    )
    gap_I, gap_a, gap_b, gap_coin, gap_product, gap_candidates = gap_density
    print(
        f"HIGH_HIGH_GAP max_I={gap_I:.15f} candidates={gap_candidates} "
        f"coincidence={gap_coin} common_product={gap_product} "
        f"inactive_first={list(gap_a)} inactive_second={list(gap_b)}"
    )
    (
        gap_score, gap_combined_I, gap_combined_eps, gap_ca, gap_cb,
        gap_cc, gap_combined_candidates, gap_global_eps,
    ) = gap_combined
    print(
        f"HIGH_HIGH_GAP_COMBINED pair={gap_score:.15f} "
        f"I={gap_combined_I:.15f} eps={gap_combined_eps} "
        f"candidates={gap_combined_candidates} global_eps={gap_global_eps} "
        f"coincidence={gap_cc} inactive_first={list(gap_ca)} "
        f"inactive_second={list(gap_cb)}"
    )

    full_I, full_eps = full_active_pair(primes, args.envelope_n)
    high_I = certs[0].density
    high_eps = certs[1].endpoint
    target = 1.0 / 25.0 - 7.0 / (25.0 * args.envelope_n)
    cases = (
        ("root128-root128", 256, full_I, full_eps),
        ("root256-root128", 384, high_I, high_eps),
        # Reactivating every finite event of the second root-256 pivot gives
        # the same coordinatewise high-low upper bound.
        ("root256-root256", 512, gap_combined_I, gap_combined_eps),
    )
    print(f"ENVELOPES N={args.envelope_n} target={target:.15f}")
    for name, root_sum, density, endpoint in cases:
        value = hall_envelope(
            args.envelope_n, args.q, root_sum, density, endpoint
        )
        print(
            f"{name} root_sum={root_sum} I={density:.15f} eps={endpoint} "
            f"total={value:.15f} slack={target-value:.15f}"
        )


if __name__ == "__main__":
    main()
