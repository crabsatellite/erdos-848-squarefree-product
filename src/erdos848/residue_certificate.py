from __future__ import annotations

from dataclasses import asdict, dataclass

from .core import BitsetGraph, product, roots_mod_square


@dataclass
class ResidueCertificate:
    primes: list[int]
    modulus: int
    vertices: int
    roots: dict[str, list[int]]
    max_clique: int
    max_clique_witness: list[int]
    outside_pm5_max_clique: int
    outside_pm5_witness: list[int]
    prefix_checked: bool
    prefix_max_excess: int | None
    prefix_worst_s: int | None


def generate_residue_certificate(primes: list[int], run_prefix: bool = False) -> ResidueCertificate:
    modulus = product(p * p for p in primes)
    prime_squares = [p * p for p in primes]
    roots = {str(p): roots_mod_square(p) for p in primes}

    def self_bad(r: int) -> bool:
        return any((r * r + 1) % pp == 0 for pp in prime_squares)

    def compatible(a: int, b: int) -> bool:
        return any((a * b + 1) % pp == 0 for pp in prime_squares)

    vertices = [r for r in range(1, modulus + 1) if self_bad(r)]
    graph = BitsetGraph(vertices, compatible)
    max_all = graph.max_clique()

    pm5 = set(roots.get("5", []))
    outside_pm5_mask = 0
    for i, r in enumerate(vertices):
        if r % 25 not in pm5:
            outside_pm5_mask |= 1 << i
    max_outside = graph.max_clique(outside_pm5_mask)

    prefix_max_excess = None
    prefix_worst_s = None
    if run_prefix:
        prefix_max_excess = -10**18
        prefix_worst_s = 0
        for s in range(1, modulus + 1):
            weights = [1 if r <= s else 0 for r in vertices]
            got = graph.max_weight_clique(weights).value
            target = sum(1 for x in range(1, s + 1) if x % 25 == 7)
            excess = got - target
            if excess > prefix_max_excess:
                prefix_max_excess = excess
                prefix_worst_s = s

    return ResidueCertificate(
        primes=primes,
        modulus=modulus,
        vertices=len(vertices),
        roots=roots,
        max_clique=max_all.value,
        max_clique_witness=max_all.vertices,
        outside_pm5_max_clique=max_outside.value,
        outside_pm5_witness=max_outside.vertices,
        prefix_checked=run_prefix,
        prefix_max_excess=prefix_max_excess,
        prefix_worst_s=prefix_worst_s,
    )


def certificate_to_jsonable(cert: ResidueCertificate) -> dict:
    return asdict(cert)
