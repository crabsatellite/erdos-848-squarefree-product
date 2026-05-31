from __future__ import annotations

from dataclasses import asdict, dataclass

from .core import BitsetGraph, squarefree_sieve


@dataclass
class PartitionedHallCertificate:
    N: int
    base_residue: int
    opposite_residue: int
    outside_vertices: int
    worst_opposite_defect: int
    worst_opposite_witness: list[int]
    worst_middle_defect: int
    worst_middle_witness: list[int]
    worst_union_defect: int
    worst_union_witness: list[int]
    worst_new_middle_defect: int
    worst_new_middle_witness: list[int]
    worst_incremental_defect: int
    worst_incremental_witness: list[int]
    worst_incremental_with_middle_defect: int
    worst_incremental_with_middle_witness: list[int]


def partitioned_hall_certificate(
    N: int,
    base_residue: int = 7,
    opposite_residue: int = 18,
) -> PartitionedHallCertificate:
    """Check the finite shadow of the live partitioned-capacity cut.

    For every compatible outside clique B, split B into the opposite candidate
    part O and the strict middle part M.  A disjoint allocation exists whenever
    the following three inequalities hold:

    * |N(O)| >= |O|
    * |N(M)| >= |M|
    * |N(O) union N(M)| >= |O| + |M|

    The direct union-capacity line is now the live Lean cut's count target.  It
    is also the flexible replacement for the overstrong condition
    |N(M) \\ N(O)| >= |M|, which is already false in small windows.
    Equivalently, the opposite-neighbor surplus pays for strict-middle overlap:

    * (|N(O)| - |O|) + |N(M) \\ N(O)| >= |M|
    """
    sf = squarefree_sieve(N * N + 1)
    base = [a for a in range(1, N + 1) if a % 25 == base_residue]
    outside = [
        b
        for b in range(1, N + 1)
        if b % 25 != base_residue and not sf[b * b + 1]
    ]

    graph = BitsetGraph(outside, lambda a, b: not sf[a * b + 1])
    is_opposite = [b % 25 == opposite_residue for b in outside]
    neigh = [0] * len(outside)
    for i, b in enumerate(outside):
        mask = 0
        for k, a in enumerate(base):
            if sf[a * b + 1]:
                mask |= 1 << k
        neigh[i] = mask

    worst_opposite_defect = 10**18
    worst_middle_defect = 10**18
    worst_union_defect = 10**18
    worst_new_middle_defect = 10**18
    worst_incremental_defect = 10**18
    worst_incremental_with_middle_defect = 10**18
    worst_opposite_witness: list[int] = []
    worst_middle_witness: list[int] = []
    worst_union_witness: list[int] = []
    worst_new_middle_witness: list[int] = []
    worst_incremental_witness: list[int] = []
    worst_incremental_with_middle_witness: list[int] = []

    def expand(
        P: int,
        chosen: list[int],
        opposite_size: int,
        middle_size: int,
        opposite_neighbors: int,
        middle_neighbors: int,
    ) -> None:
        nonlocal worst_opposite_defect
        nonlocal worst_middle_defect
        nonlocal worst_union_defect
        nonlocal worst_new_middle_defect
        nonlocal worst_incremental_defect
        nonlocal worst_incremental_with_middle_defect
        nonlocal worst_opposite_witness
        nonlocal worst_middle_witness
        nonlocal worst_union_witness
        nonlocal worst_new_middle_witness
        nonlocal worst_incremental_witness
        nonlocal worst_incremental_with_middle_witness

        opposite_defect = opposite_neighbors.bit_count() - opposite_size
        middle_defect = middle_neighbors.bit_count() - middle_size
        new_middle_count = (middle_neighbors & ~opposite_neighbors).bit_count()
        new_middle_defect = new_middle_count - middle_size
        incremental_defect = opposite_defect + new_middle_count - middle_size
        union_defect = (opposite_neighbors | middle_neighbors).bit_count() - (
            opposite_size + middle_size
        )
        witness = [outside[i] for i in chosen]
        if opposite_size > 0 and opposite_defect < worst_opposite_defect:
            worst_opposite_defect = opposite_defect
            worst_opposite_witness = witness
        if middle_size > 0 and middle_defect < worst_middle_defect:
            worst_middle_defect = middle_defect
            worst_middle_witness = witness
        if opposite_size + middle_size > 0 and union_defect < worst_union_defect:
            worst_union_defect = union_defect
            worst_union_witness = witness
        if middle_size > 0 and new_middle_defect < worst_new_middle_defect:
            worst_new_middle_defect = new_middle_defect
            worst_new_middle_witness = witness
        if opposite_size + middle_size > 0 and incremental_defect < worst_incremental_defect:
            worst_incremental_defect = incremental_defect
            worst_incremental_witness = witness
        if middle_size > 0 and incremental_defect < worst_incremental_with_middle_defect:
            worst_incremental_with_middle_defect = incremental_defect
            worst_incremental_with_middle_witness = witness

        while P:
            lsb = P & -P
            v = lsb.bit_length() - 1
            P ^= lsb
            if is_opposite[v]:
                expand(
                    P & graph.adj[v],
                    chosen + [v],
                    opposite_size + 1,
                    middle_size,
                    opposite_neighbors | neigh[v],
                    middle_neighbors,
                )
            else:
                expand(
                    P & graph.adj[v],
                    chosen + [v],
                    opposite_size,
                    middle_size + 1,
                    opposite_neighbors,
                    middle_neighbors | neigh[v],
                )

    expand((1 << len(outside)) - 1, [], 0, 0, 0, 0)

    if worst_opposite_defect == 10**18:
        worst_opposite_defect = 0
    if worst_middle_defect == 10**18:
        worst_middle_defect = 0
    if worst_union_defect == 10**18:
        worst_union_defect = 0
    if worst_new_middle_defect == 10**18:
        worst_new_middle_defect = 0
    if worst_incremental_defect == 10**18:
        worst_incremental_defect = 0
    if worst_incremental_with_middle_defect == 10**18:
        worst_incremental_with_middle_defect = 0

    return PartitionedHallCertificate(
        N=N,
        base_residue=base_residue,
        opposite_residue=opposite_residue,
        outside_vertices=len(outside),
        worst_opposite_defect=worst_opposite_defect,
        worst_opposite_witness=worst_opposite_witness,
        worst_middle_defect=worst_middle_defect,
        worst_middle_witness=worst_middle_witness,
        worst_union_defect=worst_union_defect,
        worst_union_witness=worst_union_witness,
        worst_new_middle_defect=worst_new_middle_defect,
        worst_new_middle_witness=worst_new_middle_witness,
        worst_incremental_defect=worst_incremental_defect,
        worst_incremental_witness=worst_incremental_witness,
        worst_incremental_with_middle_defect=worst_incremental_with_middle_defect,
        worst_incremental_with_middle_witness=worst_incremental_with_middle_witness,
    )


def certificate_to_jsonable(cert: PartitionedHallCertificate) -> dict:
    return asdict(cert)
