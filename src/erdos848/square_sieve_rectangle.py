from __future__ import annotations

from dataclasses import asdict, dataclass
from math import gcd, isqrt

from .core import candidate_count, squarefree_sieve


@dataclass
class SquareSievePivotCoverExample:
    N: int
    base_residue: int
    pivot: int
    outside_witness: list[int]
    target_mode: str
    targets: list[int]
    target_witnesses: list[tuple[int, int, int, int, int]]
    prime_residue_classes: list[tuple[int, int]]
    residue_classes: list[tuple[int, int]]
    prime_cover_budget: int
    cover_budget: int
    outside_size: int
    candidate_count: int
    rectangle_budget_holds: bool


@dataclass
class SquareSieveSingletonBudgetScan:
    N: int
    base_residue: int
    checked_pivots: int
    candidate_count: int
    worst_slack: int
    worst_pivot: int
    worst_target_count: int
    worst_prime_class_count: int
    worst_prime_cover_budget: int


@dataclass
class SquareSieveIntersectionDecayScan:
    N: int
    base_residue: int
    outside_witness: list[int]
    steps: list[dict[str, int]]
    all_target_counts_nonincreasing: bool
    all_prime_budgets_nonincreasing: bool
    min_budget_drop: int
    min_target_drop: int


def _least_square_divisor_prime(n: int) -> int:
    for p in range(2, isqrt(n) + 1):
        if n % (p * p) == 0:
            return p
    raise ValueError(f"no square divisor found for {n}")


def _crt_coprime(r1: int, m1: int, r2: int, m2: int) -> int:
    if gcd(m1, m2) != 1:
        raise ValueError((m1, m2))
    inv = pow(m1, -1, m2)
    k = ((r2 - r1) * inv) % m2
    return (r1 + m1 * k) % (m1 * m2)


def _candidate_nonneighbor_targets(
    N: int,
    outside_witness: list[int],
    base_residue: int,
    sf: bytearray,
) -> list[int]:
    candidates = [a for a in range(1, N + 1) if a % 25 == base_residue % 25]
    return [
        a
        for a in candidates
        if all(not sf[a * b + 1] for b in outside_witness)
    ]


def _best_pivot_cover_for_targets(
    N: int,
    outside_witness: list[int],
    targets: list[int],
    base_residue: int,
    target_mode: str,
) -> SquareSievePivotCoverExample:
    best: SquareSievePivotCoverExample | None = None
    best_key: tuple[int, int, int, int] | None = None
    for pivot in outside_witness:
        cert = square_sieve_pivot_cover_example(
            N,
            pivot,
            targets,
            base_residue=base_residue,
            outside_size=len(outside_witness),
            outside_witness=list(outside_witness),
            target_mode=target_mode,
        )
        key = (
            cert.outside_size + cert.prime_cover_budget,
            cert.prime_cover_budget,
            len(cert.prime_residue_classes),
            pivot,
        )
        if best is None or key < best_key:
            best = cert
            best_key = key
    assert best is not None
    return best


def square_sieve_pivot_cover_example(
    N: int,
    pivot: int,
    targets: list[int],
    base_residue: int = 7,
    outside_size: int = 1,
    outside_witness: list[int] | None = None,
    target_mode: str = "manual_subset",
) -> SquareSievePivotCoverExample:
    """Build a concrete CRT residue-cover example for one Hall-defect pivot.

    Each target is covered by a class `a = residue mod 25*p^2`, where
    `p^2 | a*pivot+1`.  The factor `25` is included in the modulus so the
    cover keeps the candidate-class density instead of paying for all integers
    in an `a mod p^2` class.
    """

    witnesses: list[tuple[int, int, int, int, int]] = []
    classes: set[tuple[int, int]] = set()
    prime_classes: set[tuple[int, int]] = set()
    for target in targets:
        if not (1 <= target <= N):
            raise ValueError((N, target))
        if target % 25 != base_residue % 25:
            raise ValueError((target, base_residue))
        value = target * pivot + 1
        p = _least_square_divisor_prime(value)
        if p == 5:
            raise ValueError(("p=5", target, pivot))
        p2 = p * p
        modulus = 25 * p2
        if gcd(25, p2) == 1:
            if gcd(pivot, p2) != 1:
                raise ValueError((pivot, p2))
            square_residue = (-pow(pivot, -1, p2)) % p2
            if target % p2 != square_residue:
                raise ValueError((target, pivot, p, square_residue))
            residue = _crt_coprime(base_residue % 25, 25, square_residue, p2)
        else:
            residue = target % modulus
        if target % modulus != residue:
            raise ValueError((target, modulus, residue))
        witnesses.append((target, p, p2, modulus, residue))
        classes.add((modulus, residue))
        prime_classes.add((p, residue))

    prime_residue_classes = sorted(prime_classes)
    residue_classes = sorted(classes)
    prime_cover_budget = sum(
        N // (25 * p * p) + 1 for p, _residue in prime_residue_classes
    )
    cover_budget = sum(N // modulus + 1 for modulus, _residue in residue_classes)
    c_count = candidate_count(N, base_residue)
    return SquareSievePivotCoverExample(
        N=N,
        base_residue=base_residue,
        pivot=pivot,
        outside_witness=outside_witness if outside_witness is not None else [pivot],
        target_mode=target_mode,
        targets=targets,
        target_witnesses=witnesses,
        prime_residue_classes=prime_residue_classes,
        residue_classes=residue_classes,
        prime_cover_budget=prime_cover_budget,
        cover_budget=cover_budget,
        outside_size=outside_size,
        candidate_count=c_count,
        rectangle_budget_holds=outside_size + cover_budget <= c_count,
    )


def square_sieve_nonneighbor_pivot_cover_example(
    N: int,
    outside_witness: list[int],
    base_residue: int = 7,
) -> SquareSievePivotCoverExample:
    """Build a pivot cover for the true candidate non-neighbor set of `B`.

    For a Hall-defect outside witness `B`, the target side is the set of
    candidate vertices `a` such that every `a*b+1` with `b in B` is
    non-squarefree.  Any pivot in `B` has a square divisor against every target;
    this routine chooses the pivot with the smallest additive residue budget.
    """

    if not outside_witness:
        raise ValueError("outside_witness must be nonempty")
    if any(b < 1 or b > N for b in outside_witness):
        raise ValueError((N, outside_witness))

    sf = squarefree_sieve(N * N + 1)
    targets = _candidate_nonneighbor_targets(N, outside_witness, base_residue, sf)
    return _best_pivot_cover_for_targets(
        N, outside_witness, targets, base_residue, "nonneighbor_exact"
    )


def square_sieve_singleton_budget_scan(
    N: int,
    base_residue: int = 7,
) -> SquareSieveSingletonBudgetScan:
    sf = squarefree_sieve(N * N + 1)
    candidate_total = candidate_count(N, base_residue)
    checked = 0
    worst_key: tuple[int, int, int, int, int] | None = None
    for pivot in range(1, N + 1):
        if pivot % 25 == base_residue % 25:
            continue
        if sf[pivot * pivot + 1]:
            continue
        checked += 1
        targets = _candidate_nonneighbor_targets(N, [pivot], base_residue, sf)
        cert = square_sieve_pivot_cover_example(
            N,
            pivot,
            targets,
            base_residue=base_residue,
            outside_size=1,
            outside_witness=[pivot],
            target_mode="nonneighbor_exact",
        )
        slack = candidate_total - 1 - cert.prime_cover_budget
        key = (
            slack,
            pivot,
            len(targets),
            len(cert.prime_residue_classes),
            cert.prime_cover_budget,
        )
        if worst_key is None or key < worst_key:
            worst_key = key
    if worst_key is None:
        worst_key = (candidate_total - 1, 0, 0, 0, 0)
    return SquareSieveSingletonBudgetScan(
        N=N,
        base_residue=base_residue,
        checked_pivots=checked,
        candidate_count=candidate_total,
        worst_slack=worst_key[0],
        worst_pivot=worst_key[1],
        worst_target_count=worst_key[2],
        worst_prime_class_count=worst_key[3],
        worst_prime_cover_budget=worst_key[4],
    )


def square_sieve_intersection_decay_scan(
    N: int,
    outside_witness: list[int],
    base_residue: int = 7,
) -> SquareSieveIntersectionDecayScan:
    if not outside_witness:
        raise ValueError("outside_witness must be nonempty")
    sf = squarefree_sieve(N * N + 1)
    steps: list[dict[str, int]] = []
    previous_targets: int | None = None
    previous_budget: int | None = None
    target_monotone = True
    budget_monotone = True
    min_budget_drop: int | None = None
    min_target_drop: int | None = None
    for prefix_len in range(1, len(outside_witness) + 1):
        prefix = outside_witness[:prefix_len]
        targets = _candidate_nonneighbor_targets(N, prefix, base_residue, sf)
        cert = _best_pivot_cover_for_targets(
            N, prefix, targets, base_residue, "nonneighbor_exact"
        )
        target_count = len(targets)
        budget = cert.prime_cover_budget
        target_drop = 0 if previous_targets is None else previous_targets - target_count
        budget_drop = 0 if previous_budget is None else previous_budget - budget
        if previous_targets is not None:
            target_monotone = target_monotone and target_drop >= 0
            budget_monotone = budget_monotone and budget_drop >= 0
            min_target_drop = target_drop if min_target_drop is None else min(min_target_drop, target_drop)
            min_budget_drop = budget_drop if min_budget_drop is None else min(min_budget_drop, budget_drop)
        steps.append(
            {
                "prefix_len": prefix_len,
                "pivot": cert.pivot,
                "target_count": target_count,
                "prime_class_count": len(cert.prime_residue_classes),
                "prime_cover_budget": budget,
                "rectangle_slack": cert.candidate_count - prefix_len - budget,
                "target_drop": target_drop,
                "budget_drop": budget_drop,
            }
        )
        previous_targets = target_count
        previous_budget = budget
    return SquareSieveIntersectionDecayScan(
        N=N,
        base_residue=base_residue,
        outside_witness=list(outside_witness),
        steps=steps,
        all_target_counts_nonincreasing=target_monotone,
        all_prime_budgets_nonincreasing=budget_monotone,
        min_budget_drop=0 if min_budget_drop is None else min_budget_drop,
        min_target_drop=0 if min_target_drop is None else min_target_drop,
    )


def certificate_to_jsonable(cert: SquareSievePivotCoverExample) -> dict:
    return asdict(cert)
