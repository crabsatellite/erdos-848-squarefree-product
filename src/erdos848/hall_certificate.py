from __future__ import annotations

from dataclasses import asdict, dataclass

from .core import squarefree_sieve


@dataclass
class HallCertificate:
    N: int
    base_residue: int
    base_size: int
    outside_vertices: int
    worst_defect: int
    worst_size: int
    worst_neighborhood: int
    worst_witness: list[int]
    equality_samples: list[list[int]]


def hall_certificate(N: int, base_residue: int = 7, max_samples: int = 3) -> HallCertificate:
    """Check |N(B)| >= |B| for every compatible outside clique B.

    The right side is the candidate class `base_residue mod 25`.
    An outside vertex b is connected to a candidate a when ab+1 is squarefree,
    because then a and b cannot coexist in an Erdos-848 admissible set.
    """
    sf = squarefree_sieve(N * N + 1)
    base = [a for a in range(1, N + 1) if a % 25 == base_residue]
    outsiders = [b for b in range(1, N + 1) if b % 25 != base_residue and not sf[b * b + 1]]

    adj = [0] * len(outsiders)
    neigh = [0] * len(outsiders)
    for i, b in enumerate(outsiders):
        mask = 0
        for j, d in enumerate(outsiders):
            if i != j and not sf[b * d + 1]:
                mask |= 1 << j
        adj[i] = mask

        nmask = 0
        for k, a in enumerate(base):
            if sf[a * b + 1]:
                nmask |= 1 << k
        neigh[i] = nmask

    worst_defect = 10**18
    worst_size = 0
    worst_neighborhood = 0
    worst_witness: list[int] = []
    equality_samples: list[list[int]] = []

    def expand(P: int, size: int, nmask: int, chosen: list[int]) -> None:
        nonlocal worst_defect, worst_size, worst_neighborhood, worst_witness
        defect = nmask.bit_count() - size
        if size > 0 and defect < worst_defect:
            worst_defect = defect
            worst_size = size
            worst_neighborhood = nmask.bit_count()
            worst_witness = [outsiders[i] for i in chosen]
        if size > 0 and defect == 0 and len(equality_samples) < max_samples:
            equality_samples.append([outsiders[i] for i in chosen])
        if nmask.bit_count() - (size + P.bit_count()) >= worst_defect:
            return
        while P:
            lsb = P & -P
            v = lsb.bit_length() - 1
            P ^= lsb
            expand(P & adj[v], size + 1, nmask | neigh[v], chosen + [v])

    expand((1 << len(outsiders)) - 1, 0, 0, [])

    if worst_defect == 10**18:
        worst_defect = 0

    return HallCertificate(
        N=N,
        base_residue=base_residue,
        base_size=len(base),
        outside_vertices=len(outsiders),
        worst_defect=worst_defect,
        worst_size=worst_size,
        worst_neighborhood=worst_neighborhood,
        worst_witness=worst_witness,
        equality_samples=equality_samples,
    )


def certificate_to_jsonable(cert: HallCertificate) -> dict:
    return asdict(cert)
