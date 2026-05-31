from __future__ import annotations

from dataclasses import dataclass

from .core import BitsetGraph


@dataclass(frozen=True)
class ProblemSpec:
    number: int
    name: str
    engine: str
    note: str


PROBLEMS = {
    848: ProblemSpec(
        number=848,
        name="squarefree product extremal set",
        engine="forbidden-pair clique plus Hall expansion",
        note="Primary target. Candidate classes are 7 and 18 mod 25.",
    ),
    327: ProblemSpec(
        number=327,
        name="unit-fraction forbidden pair extremal set",
        engine="forbidden-pair clique",
        note="Reference template: odd numbers give the first natural large construction.",
    ),
    727: ProblemSpec(
        number=727,
        name="factorial divisibility valuation problem",
        engine="Legendre valuation scan",
        note="Reference template: not a pair graph; use valuation witnesses and obstruction ledgers.",
    ),
}


def problem327_max_set(N: int, factor: int = 1) -> dict:
    """Exact small-N clique model for problem #327.

    A pair is compatible if a+b does not divide factor*a*b.
    """
    vertices = list(range(1, N + 1))

    def compatible(a: int, b: int) -> bool:
        if a == b:
            return True
        return (factor * a * b) % (a + b) != 0

    graph = BitsetGraph(vertices, compatible)
    result = graph.max_clique()
    odd_count = (N + 1) // 2
    return {
        "N": N,
        "factor": factor,
        "max_set_size": result.value,
        "odd_count": odd_count,
        "excess_over_odds": result.value - odd_count,
        "witness": result.vertices,
    }


def primes_upto(n: int) -> list[int]:
    if n < 2:
        return []
    sieve = bytearray(b"\x01") * (n + 1)
    sieve[0] = sieve[1] = 0
    p = 2
    while p * p <= n:
        if sieve[p]:
            sieve[p * p : n + 1 : p] = b"\x00" * (((n - p * p) // p) + 1)
        p += 1
    return [i for i in range(2, n + 1) if sieve[i]]


def v_p_factorial(n: int, p: int) -> int:
    total = 0
    q = p
    while q <= n:
        total += n // q
        q *= p
    return total


def problem727_scan(k: int, Nmax: int) -> dict:
    """Scan n <= Nmax for (n+k)!^2 | (2n)! using Legendre valuations."""
    hits: list[int] = []
    first_failure_by_prime: dict[str, int] = {}
    for n in range(1, Nmax + 1):
        ok = True
        for p in primes_upto(n + k):
            if 2 * v_p_factorial(n + k, p) > v_p_factorial(2 * n, p):
                ok = False
                first_failure_by_prime[str(p)] = first_failure_by_prime.get(str(p), 0) + 1
                break
        if ok:
            hits.append(n)
    return {
        "k": k,
        "Nmax": Nmax,
        "hits": hits,
        "hit_count": len(hits),
        "first_failure_by_prime": first_failure_by_prime,
    }
