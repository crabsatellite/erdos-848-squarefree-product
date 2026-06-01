from __future__ import annotations

from collections import Counter, deque
from dataclasses import asdict, dataclass

from .core import squarefree_sieve


@dataclass
class OppositeMatchingCertificate:
    N: int
    base_residue: int
    opposite_residue: int
    index_bandwidth: int | None
    base_size: int
    opposite_size: int
    matched_count: int
    perfect: bool
    min_degree: int
    max_index_gap: int
    max_value_gap: int
    allowed_value_offsets: list[int]
    value_offset_counts: dict[int, int]
    index_shift_counts: dict[int, int]
    matching: list[tuple[int, int]]
    source_index_matching: list[tuple[int, int, int]]
    typed_source_index_codes: list[tuple[int, int]]


def opposite_matching_certificate(
    N: int,
    base_residue: int = 7,
    opposite_residue: int = 18,
    index_bandwidth: int | None = None,
) -> OppositeMatchingCertificate:
    """Find a full matching from the opposite equality block into the base class.

    A matching from every `opposite_residue mod 25` vertex into a squarefree
    neighbor in the `base_residue mod 25` class implies Hall expansion for every
    subset of the opposite block by restriction of the matching.  If
    `index_bandwidth` is set, only candidate indices within that displacement
    from the opposite index are allowed.
    """
    sf = squarefree_sieve(N * N + 1)
    base = [a for a in range(1, N + 1) if a % 25 == base_residue]
    opposite = [b for b in range(1, N + 1) if b % 25 == opposite_residue]
    adj = [
        [
            i
            for i, a in enumerate(base)
            if (index_bandwidth is None or abs(i - j) <= index_bandwidth)
            and sf[a * b + 1]
        ]
        for j, b in enumerate(opposite)
    ]

    pair_left = [-1] * len(opposite)
    pair_right = [-1] * len(base)
    dist = [0] * len(opposite)
    inf = 10**18

    def bfs() -> bool:
        queue: deque[int] = deque()
        found = False
        for u in range(len(opposite)):
            if pair_left[u] < 0:
                dist[u] = 0
                queue.append(u)
            else:
                dist[u] = inf
        while queue:
            u = queue.popleft()
            for v in adj[u]:
                pu = pair_right[v]
                if pu < 0:
                    found = True
                elif dist[pu] == inf:
                    dist[pu] = dist[u] + 1
                    queue.append(pu)
        return found

    def dfs(u: int) -> bool:
        for v in adj[u]:
            pu = pair_right[v]
            if pu < 0 or (dist[pu] == dist[u] + 1 and dfs(pu)):
                pair_left[u] = v
                pair_right[v] = u
                return True
        dist[u] = inf
        return False

    matched = 0
    while bfs():
        for u in range(len(opposite)):
            if pair_left[u] < 0 and dfs(u):
                matched += 1

    matching = [
        (opposite[u], base[v])
        for u, v in enumerate(pair_left)
        if v >= 0
    ]
    index_shifts = [
        ((a - base_residue) // 25) - ((b - opposite_residue) // 25)
        for b, a in matching
    ]
    source_index_matching = [
        (
            (b - opposite_residue) // 25,
            (a - base_residue) // 25,
            ((a - base_residue) // 25) - ((b - opposite_residue) // 25),
        )
        for b, a in matching
    ]
    typed_source_index_codes = (
        [(source_index, shift + 3) for source_index, _target_index, shift in source_index_matching]
        if index_bandwidth == 3
        else []
    )
    index_gaps = [abs(shift) for shift in index_shifts]
    value_offsets = [a - b for b, a in matching]
    value_gaps = [abs(a - b) for b, a in matching]
    allowed_value_offsets = (
        [
            25 * shift + base_residue - opposite_residue
            for shift in range(-index_bandwidth, index_bandwidth + 1)
        ]
        if index_bandwidth is not None
        else []
    )
    min_degree = min((len(row) for row in adj), default=0)
    return OppositeMatchingCertificate(
        N=N,
        base_residue=base_residue,
        opposite_residue=opposite_residue,
        index_bandwidth=index_bandwidth,
        base_size=len(base),
        opposite_size=len(opposite),
        matched_count=matched,
        perfect=matched == len(opposite),
        min_degree=min_degree,
        max_index_gap=max(index_gaps, default=0),
        max_value_gap=max(value_gaps, default=0),
        allowed_value_offsets=allowed_value_offsets,
        value_offset_counts=dict(sorted(Counter(value_offsets).items())),
        index_shift_counts=dict(sorted(Counter(index_shifts).items())),
        matching=matching,
        source_index_matching=source_index_matching,
        typed_source_index_codes=typed_source_index_codes,
    )


def certificate_to_jsonable(cert: OppositeMatchingCertificate) -> dict:
    return asdict(cert)
