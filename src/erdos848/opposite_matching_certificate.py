from __future__ import annotations

from collections import Counter, deque
from dataclasses import asdict, dataclass
from itertools import groupby

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
    source_index_target_valid_count: int
    source_index_target_valid_failures: list[tuple[int, int, int, str]]
    period6_template: list[int]
    period6_template_invalid_count: int
    period6_template_first_invalid: list[tuple[int, int, int]]
    period6_matching_deviation_count: int
    period6_matching_first_deviations: list[tuple[int, int, int]]
    period6_repair_window_count: int
    period6_repair_windows: list[tuple[int, int, int]]
    period6_repair_code_windows: list[tuple[int, list[int]]]


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
    source_index_target_valid_failures: list[tuple[int, int, int, str]] = []
    source_index_target_valid_failure_sources: set[int] = set()
    if index_bandwidth == 3:
        for source_index, target_index, shift in source_index_matching:
            source = 25 * source_index + opposite_residue
            target = 25 * target_index + base_residue
            non_underflow = (
                (shift == -3 and source_index >= 3)
                or (shift == -2 and source_index >= 2)
                or (shift == -1 and source_index >= 1)
                or shift >= 0
            )
            if not non_underflow:
                source_index_target_valid_failure_sources.add(source_index)
                source_index_target_valid_failures.append(
                    (source_index, target_index, shift, "non_underflow")
                )
            if target_index > (N - base_residue) // 25:
                source_index_target_valid_failure_sources.add(source_index)
                source_index_target_valid_failures.append(
                    (source_index, target_index, shift, "shift_upper_bound")
                )
            if not sf[target * source + 1]:
                source_index_target_valid_failure_sources.add(source_index)
                source_index_target_valid_failures.append(
                    (source_index, target_index, shift, "target_value_squarefree_edge")
                )
    period6_template = [0, 2, -1, -1, 1, -1]
    period6_template_invalid: list[tuple[int, int, int]] = []
    period6_matching_deviations: list[tuple[int, int, int]] = []
    if index_bandwidth == 3:
        for source_index in range(len(opposite)):
            shift = period6_template[source_index % len(period6_template)]
            target_index = source_index + shift
            source = 25 * source_index + opposite_residue
            target = 25 * target_index + base_residue
            if target_index < 0 or target > N or not sf[target * source + 1]:
                period6_template_invalid.append((source_index, target_index, shift))
        for source_index, target_index, shift in source_index_matching:
            if shift != period6_template[source_index % len(period6_template)]:
                period6_matching_deviations.append((source_index, target_index, shift))
    period6_repair_windows: list[tuple[int, int, int]] = []
    period6_repair_code_windows: list[tuple[int, list[int]]] = []
    for _key, group in groupby(
        enumerate(period6_matching_deviations),
        key=lambda item: item[1][0] - item[0],
    ):
        window = [entry for _index, entry in group]
        period6_repair_windows.append((window[0][0], window[-1][0], len(window)))
        period6_repair_code_windows.append(
            (window[0][0], [shift + 3 for _source_index, _target_index, shift in window])
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
        source_index_target_valid_count=matched - len(source_index_target_valid_failure_sources),
        source_index_target_valid_failures=source_index_target_valid_failures,
        period6_template=period6_template if index_bandwidth == 3 else [],
        period6_template_invalid_count=len(period6_template_invalid),
        period6_template_first_invalid=period6_template_invalid[:32],
        period6_matching_deviation_count=len(period6_matching_deviations),
        period6_matching_first_deviations=period6_matching_deviations[:32],
        period6_repair_window_count=len(period6_repair_windows),
        period6_repair_windows=period6_repair_windows[:64],
        period6_repair_code_windows=period6_repair_code_windows[:64],
    )


def certificate_to_jsonable(cert: OppositeMatchingCertificate) -> dict:
    return asdict(cert)
