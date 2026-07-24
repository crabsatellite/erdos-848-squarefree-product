#!/usr/bin/env python3
"""Exact degree-3/2 finite counts for a fixed dense high-low pivot pair."""

from __future__ import annotations

import argparse
import concurrent.futures
import heapq
import itertools
import math

from dense_root_inactive_359_scan import (
    count_individual_terms,
    forced_subsets,
    individual_lower,
    primes_through,
)


def crt_pair(r: int, m: int, s: int, n: int) -> tuple[int, int]:
    value = r + m * (((s - r) * pow(m, -1, n)) % n)
    return value, m * n


def count_class(X: int, residue: int, modulus: int) -> int:
    return 0 if residue >= X else 1 + (X - 1 - residue) // modulus


def event_residue(t: int, pivot: int, p: int) -> tuple[int, int] | None:
    if pivot % p == 0:
        return None
    modulus = p * p
    residue = (-(t * pivot + 1) * pow(25 * pivot, -1, modulus)) % modulus
    return residue, modulus


def avoidance_lower(X: int, events: list[tuple[int, int]]) -> int:
    total = X
    for degree in (1, 2, 3):
        block = 0
        for chosen in itertools.combinations(events, degree):
            residue, modulus = chosen[0]
            for next_residue, next_modulus in chosen[1:]:
                residue, modulus = crt_pair(
                    residue, modulus, next_residue, next_modulus
                )
            block += count_class(X, residue, modulus)
        total += (-1 if degree % 2 else 1) * block
    return total


def union_avoidance_upper(
    X: int, local_events: list[list[tuple[int, int]]]
) -> int:
    total = X
    singles = sum(
        count_class(X, residue, modulus)
        for events in local_events
        for residue, modulus in events
    )
    total -= singles
    pairs = 0
    for left, right in itertools.combinations(local_events, 2):
        for r, m in left:
            for s, n in right:
                residue, modulus = crt_pair(r, m, s, n)
                pairs += count_class(X, residue, modulus)
    return total + pairs


def intersection_upper(N: int, t: int, b: int, c: int, cutoff: int) -> int:
    X = (N - t) // 25 + 1
    events_b: list[tuple[int, int]] = []
    events_c: list[tuple[int, int]] = []
    local: list[list[tuple[int, int]]] = []
    for p in primes_through(cutoff):
        eb = event_residue(t, b, p)
        ec = event_residue(t, c, p)
        if eb is not None:
            events_b.append(eb)
        if ec is not None:
            events_c.append(ec)
        union = []
        if eb is not None:
            union.append(eb)
        if ec is not None and ec not in union:
            union.append(ec)
        if union:
            local.append(union)
    lower_b = avoidance_lower(X, events_b)
    lower_c = avoidance_lower(X, events_c)
    upper_union = union_avoidance_upper(X, local)
    return X - lower_b - lower_c + upper_union


def add_crt_term(
    terms: dict[tuple[int, int], int],
    chosen: tuple[tuple[int, int], ...],
    coefficient: int,
) -> None:
    residue, modulus = chosen[0]
    for next_residue, next_modulus in chosen[1:]:
        residue, modulus = crt_pair(residue, modulus, next_residue, next_modulus)
    key = (residue, modulus)
    terms[key] = terms.get(key, 0) + coefficient


def intersection_terms(
    t: int, b: int, c: int, cutoff: int
) -> dict[tuple[int, int], int]:
    """Signed floor expansion of the same degree-3/2 upper bound."""
    events_b: list[tuple[int, int]] = []
    events_c: list[tuple[int, int]] = []
    local: list[list[tuple[int, int]]] = []
    for p in primes_through(cutoff):
        eb = event_residue(t, b, p)
        ec = event_residue(t, c, p)
        if eb is not None:
            events_b.append(eb)
        if ec is not None:
            events_c.append(ec)
        union = []
        if eb is not None:
            union.append(eb)
        if ec is not None and ec not in union:
            union.append(ec)
        if union:
            local.append(union)

    terms: dict[tuple[int, int], int] = {}
    for events in (events_b, events_c):
        for degree, coefficient in ((1, 1), (2, -1), (3, 1)):
            for chosen in itertools.combinations(events, degree):
                add_crt_term(terms, chosen, coefficient)
    for events in local:
        for event in events:
            add_crt_term(terms, (event,), -1)
    for left, right in itertools.combinations(local, 2):
        for first in left:
            for second in right:
                add_crt_term(terms, (first, second), 1)
    return {key: coefficient for key, coefficient in terms.items() if coefficient}


def terms_value(X: int, terms: dict[tuple[int, int], int]) -> int:
    return sum(
        coefficient * count_class(X, residue, modulus)
        for (residue, modulus), coefficient in terms.items()
    )


def scan_terms_interval(
    lower: int,
    upper: int,
    blocks: list[tuple[int, dict[tuple[int, int], int]]],
) -> tuple[float, int, int, int]:
    initial = 0
    deltas: dict[int, int] = {}
    term_count = 0
    for t, terms in blocks:
        X = (lower - t) // 25 + 1
        initial += terms_value(X, terms)
        term_count += len(terms)
        first_n = (lower - t) // 25 + 1
        last_n = (upper - t) // 25
        for (residue, modulus), coefficient in terms.items():
            k = max(0, (first_n - residue + modulus - 1) // modulus)
            n = residue + k * modulus
            while n <= last_n:
                event_N = t + 25 * n
                deltas[event_N] = deltas.get(event_N, 0) + coefficient
                n += modulus
    value = initial
    best = (value / lower, lower, value, term_count)
    for N in sorted(deltas):
        value += deltas[N]
        score = value / N
        if score > best[0]:
            best = (score, N, value, term_count)
    return best


def top_generic_patterns(
    support_N: int, cutoff: int, count: int, score_N: int | None = None
):
    if score_N is None:
        score_N = support_N
    primes = primes_through(cutoff)
    extended = primes_through(cutoff + 100)
    next_prime = extended[len(primes)]
    seven = list(forced_subsets(primes, 7, support_N // 2))
    six = list(forced_subsets(primes, 6, support_N // (2 * next_prime)))
    patterns = list(dict.fromkeys(seven + six))
    x = [1.0 / (p * p) for p in primes]
    low_lower = individual_lower(x)
    low_endpoint = count_individual_terms(len(primes))
    heap: list[tuple[float, tuple]] = []
    for inactive in patterns:
        inactive_set = set(inactive)
        active = [i for i in range(len(primes)) if i not in inactive_set]
        high_lower = individual_lower([x[i] for i in active])
        high_endpoint = count_individual_terms(len(active))
        base_c = [1 if i in inactive_set else 2 for i in range(len(primes))]
        for coincidence in [-1] + active:
            multiplicities = base_c.copy()
            if coincidence >= 0:
                multiplicities[coincidence] = 1
            weighted = [multiplicities[i] * x[i] for i in range(len(primes))]
            s1 = sum(weighted)
            s2 = sum(v * v for v in weighted)
            joint_upper = 1.0 - s1 + (s1 * s1 - s2) / 2.0
            density = 1.0 - high_lower - low_lower + joint_upper
            c1 = sum(multiplicities)
            c2 = (c1 * c1 - sum(v * v for v in multiplicities)) // 2
            endpoint = high_endpoint + low_endpoint + c1 + c2
            score = 2.0 * density / 25.0 + 2.0 * endpoint / score_N
            support = tuple(primes[i] for i in inactive)
            record = (
                score,
                density,
                endpoint,
                -1 if coincidence < 0 else primes[coincidence],
                support,
                2 * math.prod(support),
            )
            if len(heap) < count:
                heapq.heappush(heap, (score, record))
            elif score > heap[0][0]:
                heapq.heapreplace(heap, (score, record))
    return sorted((record for _, record in heap), reverse=True), len(patterns)


def scan_actual_base(
    lower: int,
    upper: int | None,
    b: int,
    cutoff: int,
    gap: int,
) -> tuple[float, tuple | None, int]:
    """Scan one actual pivot base, respecting its first feasible endpoint."""
    best: tuple[float, tuple | None] = (-1, None)
    records = 0
    endpoint = lower if upper is None else upper
    if b > endpoint:
        return best[0], best[1], records
    for q in (3, 7, 11, 13):
        step = 4 * q * q
        for k in range(-gap // step, gap // step + 1):
            d = k * step
            if d == 0 or abs(d) > gap:
                continue
            c = b + d
            if not (1 <= c <= endpoint):
                continue
            # Exactly one coincident active prime; additional coincidences
            # only make the gap more divisible and are handled by their own q.
            coincident = [
                p for p in primes_through(cutoff)
                if b % p and c % p and d % (p * p) == 0
            ]
            if len(coincident) != 1 or coincident[0] != q:
                continue
            if upper is None:
                counts = tuple(
                    intersection_upper(lower, t, b, c, cutoff)
                    for t in (7, 18)
                )
                value = sum(counts)
                comparison = float(value)
                witness = (d, c, q, counts)
            else:
                # The pair exists only once both actual pivots have appeared.
                scan_lower = max(lower, b, c)
                blocks = [
                    (t, intersection_terms(t, b, c, cutoff))
                    for t in (7, 18)
                ]
                score, witness_N, value, term_count = scan_terms_interval(
                    scan_lower, upper, blocks
                )
                comparison = score
                witness = (d, c, q, witness_N, value, term_count, scan_lower)
            records += 1
            if comparison > best[0]:
                best = (comparison, witness)
    return best[0], best[1], records


def scan_actual_base_args(args: tuple[int, int | None, int, int, int]):
    return scan_actual_base(*args)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("N", type=int)
    parser.add_argument("b", type=int)
    parser.add_argument("--upper", type=int)
    parser.add_argument("--cutoff", type=int, default=353)
    parser.add_argument("--gap", type=int, default=834)
    parser.add_argument("--rank-top", type=int, default=0)
    parser.add_argument("--rank-score-n", type=int)
    parser.add_argument("--rank-support-n", type=int)
    parser.add_argument("--scan-ranked-top", type=int, default=0)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--rank-only", action="store_true")
    args = parser.parse_args()

    requested_rank = max(
        args.rank_top,
        args.scan_ranked_top + 1 if args.scan_ranked_top else 0,
    )
    ranked = []
    if requested_rank:
        support_N = args.rank_support_n or args.N
        ranked, pattern_count = top_generic_patterns(
            support_N, args.cutoff, requested_rank, args.rank_score_n
        )
        print(
            f"GENERIC support_N={support_N} "
            f"score_N={args.rank_score_n or support_N} "
            f"patterns={pattern_count} top={len(ranked)}"
        )
        for score, density, endpoint, coincidence, support, base in ranked:
            print(
                f"pair={score:.18f} I={density:.15f} eps={endpoint} "
                f"coincidence={coincidence} base={base} support={list(support)}"
            )

    if args.scan_ranked_top:
        if args.upper is None:
            parser.error("--scan-ranked-top requires --upper")
        exceptions = ranked[:args.scan_ranked_top]
        ambiguous = [record[-1] for record in exceptions if record[-1] <= args.upper // 2]
        if ambiguous:
            parser.error(
                "ranked exception has multiplier ambiguity: "
                + ",".join(map(str, ambiguous))
            )
        work = [
            (args.N, args.upper, record[-1], args.cutoff, args.gap)
            for record in exceptions
        ]
        if args.jobs == 1:
            results = map(scan_actual_base_args, work)
        else:
            executor = concurrent.futures.ProcessPoolExecutor(
                max_workers=args.jobs
            )
            results = executor.map(scan_actual_base_args, work)
        family_best: tuple[float, tuple | None] = (-1, None)
        for index, (record, result) in enumerate(
            zip(exceptions, results), 1
        ):
            base = record[-1]
            score, witness, records = result
            print(
                f"EXACT rank={index} base={base} records={records} "
                f"max_normalized={score:.18f} witness={witness}"
            )
            if score > family_best[0]:
                family_best = (score, (index, base, witness))
        if args.jobs != 1:
            executor.shutdown()
        controller = ranked[args.scan_ranked_top]
        print(
            f"FAMILY top={args.scan_ranked_top} "
            f"max_normalized={family_best[0]:.18f} "
            f"witness={family_best[1]} controller={controller}"
        )

    if args.rank_only or args.scan_ranked_top:
        return

    comparison, witness, records = scan_actual_base(
        args.N, args.upper, args.b, args.cutoff, args.gap
    )
    print(
        f"N={args.N} b={args.b} cutoff={args.cutoff} "
        f"records={records} best_total={comparison} witness={witness}"
    )
    if args.upper is None:
        print(f"normalized={comparison / args.N:.18f}")
    else:
        print(f"max_normalized={comparison:.18f}")


if __name__ == "__main__":
    main()
