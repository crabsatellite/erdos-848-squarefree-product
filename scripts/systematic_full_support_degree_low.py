#!/usr/bin/env python3
"""Exact full-support mixed-degree certificate on [1.5e6, 3e6).

This keeps the original Hall cut.  Unlike the earlier prefix relaxation, a
pivot with k non-5 odd prime divisors is screened by all k divisors.  The
support maxima below are produced exhaustively by
systematic_one_prime_support_scan.cpp (k=1) and
systematic_full_support_scan.cpp (2<=k<=6), with N=3000000 and M=4902.

For fixed Y=floor(N/70), every normalized row is affine in 1/N.  Checking
both endpoints of each Y-cell therefore certifies the complete interval,
not merely a sample of N-values.
"""

from __future__ import annotations

from fractions import Fraction

from modulus_correlated_eight_prime_scan import primes_through
from q503_endpoint import prime_pi
from systematic_mixed_cell_10m_close import tail_after
from systematic_mixed_full_close import alternating, endpoint_terms


LOWER = 1_500_000
UPPER = 3_000_000
CUTOFF = 17
SPLIT = 70
M = SPLIT * SPLIT + 2

# (survivor maximum, a support attaining it).  Each row is the worse of the
# two nonzero mod-5 square cosets and already includes the quotient mask.
SUPPORT = {
    "odd": {
        0: (1961, ()),
        1: (1194, (2496691,)),
        2: (612, (313, 5011)),
        3: (312, (73, 149, 211)),
        4: (153, (13, 43, 61, 67)),
        5: (73, (11, 13, 19, 29, 37)),
        6: (28, (3, 7, 11, 13, 19, 43)),
    },
    "v2=1": {
        0: (981, ()),
        1: (594, (2658559,)),
        2: (312, (53, 38651)),
        3: (156, (53, 103, 499)),
        4: (80, (17, 29, 47, 103)),
        5: (38, (7, 13, 17, 23, 73)),
        6: (15, (3, 7, 11, 17, 19, 31)),
    },
    "v2=2": {
        0: (491, ()),
        1: (312, (2706107,)),
        2: (171, (797, 3361)),
        3: (92, (53, 223, 227)),
        4: (54, (17, 29, 47, 103)),
        5: (28, (7, 11, 19, 29, 43)),
        6: (13, (3, 7, 11, 13, 19, 31)),
    },
    "v2>=3": {
        0: (246, ()),
        1: (169, (2262467,)),
        2: (102, (797, 3361)),
        3: (58, (17, 233, 491)),
        4: (37, (11, 29, 83, 101)),
        5: (22, (7, 11, 19, 43, 47)),
        6: (12, (3, 7, 11, 13, 17, 19)),
    },
}

VALUATION = {
    "odd": (1, False),
    "v2=1": (1, True),
    "v2=2": (2, True),
    "v2>=3": (4, True),
}


def degree_row(N: int, label: str, k: int) -> Fraction:
    survivors, witness = SUPPORT[label][k]
    c_nu, even = VALUATION[label]
    active = [p for p in primes_through(CUTOFF) if p not in set(witness)]
    finite = active if even else [2] + active
    small = alternating([Fraction(1, p * p) for p in finite], 3)
    error = endpoint_terms([1] * len(finite), 3)
    X = Fraction(N, 25) + 1
    Y = N // SPLIT
    medium = X * tail_after(CUTOFF) + prime_pi(Y) - prime_pi(CUTOFF)
    H = c_nu * 2 ** (k + 1)
    root = H * (survivors + 2 * X / Y)
    margin = small * Fraction(N - 43, 25) - error - medium - root - Fraction(N, 50)
    return (2 * margin - 1) / N


def uniform_minimum():
    best = None
    # On a fixed floor cell Y=floor(N/70), every row has the form A+B/N
    # with B<0, so it increases with N.  At the left endpoints N=70Y it
    # also increases while pi(Y) is constant: every remaining negative
    # payment divided by N decreases and the 1/Y root term decreases.
    # It is therefore enough to check the first cell and prime-jump cells.
    first_y = LOWER // SPLIT
    last_y = (UPPER - 1) // SPLIT
    candidates = {first_y}
    candidates.update(
        p for p in primes_through(last_y) if first_y <= p <= last_y
    )
    for Y in sorted(candidates):
        left = max(LOWER, SPLIT * Y)
        for label, rows in SUPPORT.items():
            for k in rows:
                value = degree_row(left, label, k)
                row = (value, left, label, k)
                if best is None or row < best:
                    best = row
    return best


def cluster_span(alpha: Fraction, size: int) -> tuple[int, int]:
    worst = (-1, -1)
    # If the residual contains M0 pivots and M0>alpha*N, then
    # M0>=floor(alpha*N)+1.  Among their consecutive triples one has span
    # at most floor(2(N-1)/(M0-2)).
    numerator, denominator = alpha.numerator, alpha.denominator
    first_floor = numerator * LOWER // denominator
    last_floor = numerator * (UPPER - 1) // denominator
    for floor_value in range(first_floor, last_floor + 1):
        # Largest N with floor(alpha*N)=floor_value.
        N = min(UPPER - 1, ((floor_value + 1) * denominator - 1) // numerator)
        if N < LOWER:
            continue
        pivots = floor_value + 1
        assert pivots >= size
        span = (size - 1) * (N - 1) // (pivots - size + 1)
        worst = max(worst, (span, N))
    return worst


def main() -> None:
    assert M == 4902
    alpha, N, label, k = uniform_minimum()
    endpoint = degree_row(LOWER, "odd", 3)
    assert (N, label, k) == (LOWER, "odd", 3)
    assert alpha == endpoint
    assert alpha * LOWER > 374
    span3, span3_N = cluster_span(alpha, 3)
    span8, span8_N = cluster_span(alpha, 8)
    assert span3 <= 8045
    assert span8 <= 28540
    print(
        f"interval=[{LOWER},{UPPER}) cutoff={CUTOFF} split={SPLIT} M={M} "
        f"minimum={float(alpha):.18f} witness=({N},{label},k={k}) "
        f"raw_at_lower={float(alpha * LOWER):.15f}"
    )
    print(f"triple_span<={span3} witness_N={span3_N}")
    print(f"eight_span<={span8} witness_N={span8_N}")
    print("PASS full-support degree and bounded-gap triple")


if __name__ == "__main__":
    main()
