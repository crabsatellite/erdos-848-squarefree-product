from __future__ import annotations

from dataclasses import asdict, dataclass

from .core import BitsetGraph, squarefree_sieve


@dataclass
class MiddleRegionCertificate:
    N: int
    base_residue: int
    opposite_residue: int
    strict_vertices: int
    strict_max_clique: int
    strict_max_clique_witness: list[int]
    strict_worst_defect: int
    strict_worst_size: int
    strict_worst_neighborhood: int
    strict_worst_witness: list[int]


def middle_region_certificate(
    N: int,
    base_residue: int = 7,
    opposite_residue: int = 18,
) -> MiddleRegionCertificate:
    """Check the Hall defect after removing the opposite candidate class.

    Full Hall equality is repeatedly witnessed by the opposite candidate class
    (`18 mod 25` when the base is `7 mod 25`).  This diagnostic isolates the
    strict middle region: outside the base class and outside the opposite
    candidate class, while retaining the self-obstruction condition
    `b*b+1` non-squarefree required of a compatible clique.
    """
    sf = squarefree_sieve(N * N + 1)
    base = [a for a in range(1, N + 1) if a % 25 == base_residue]
    strict = [
        b
        for b in range(1, N + 1)
        if b % 25 not in (base_residue, opposite_residue) and not sf[b * b + 1]
    ]

    graph = BitsetGraph(strict, lambda a, b: not sf[a * b + 1])
    strict_max = graph.max_clique()

    neigh = [0] * len(strict)
    for i, b in enumerate(strict):
        nmask = 0
        for k, a in enumerate(base):
            if sf[a * b + 1]:
                nmask |= 1 << k
        neigh[i] = nmask

    worst_defect = 10**18
    worst_size = 0
    worst_neighborhood = 0
    worst_witness: list[int] = []

    def expand(P: int, size: int, nmask: int, chosen: list[int]) -> None:
        nonlocal worst_defect, worst_size, worst_neighborhood, worst_witness
        defect = nmask.bit_count() - size
        if size > 0 and defect < worst_defect:
            worst_defect = defect
            worst_size = size
            worst_neighborhood = nmask.bit_count()
            worst_witness = [strict[i] for i in chosen]
        if nmask.bit_count() - (size + P.bit_count()) >= worst_defect:
            return
        while P:
            lsb = P & -P
            v = lsb.bit_length() - 1
            P ^= lsb
            expand(P & graph.adj[v], size + 1, nmask | neigh[v], chosen + [v])

    expand((1 << len(strict)) - 1, 0, 0, [])
    if worst_defect == 10**18:
        worst_defect = 0

    return MiddleRegionCertificate(
        N=N,
        base_residue=base_residue,
        opposite_residue=opposite_residue,
        strict_vertices=len(strict),
        strict_max_clique=strict_max.value,
        strict_max_clique_witness=strict_max.vertices,
        strict_worst_defect=worst_defect,
        strict_worst_size=worst_size,
        strict_worst_neighborhood=worst_neighborhood,
        strict_worst_witness=worst_witness,
    )


def certificate_to_jsonable(cert: MiddleRegionCertificate) -> dict:
    return asdict(cert)
