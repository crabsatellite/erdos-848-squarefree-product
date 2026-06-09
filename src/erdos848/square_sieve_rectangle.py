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


@dataclass
class SquareSieveResidualTailScan:
    N: int
    base_residue: int
    skeleton_primes: list[int]
    checked_pivots: int
    candidate_count: int
    worst_tail_slack: int
    worst_pivot: int
    worst_total_target_count: int
    worst_skeleton_target_count: int
    worst_tail_target_count: int
    worst_skeleton_prime_class_count: int
    worst_tail_prime_class_count: int
    worst_skeleton_prime_cover_budget: int
    worst_tail_prime_cover_budget: int
    worst_total_prime_cover_budget: int
    worst_skeleton_prime_classes: list[tuple[int, int]]
    worst_tail_prime_classes: list[tuple[int, int]]


@dataclass
class SquareSieveTailQuotientProfileScan:
    N: int
    base_residue: int
    skeleton_primes: list[int]
    checked_pivots: int
    candidate_count: int
    worst_tail_slack: int
    worst_pivot: int
    worst_tail_target_count: int
    worst_tail_prime_cover_budget: int
    worst_tail_prime_class_count: int
    worst_tail_min_prime: int
    worst_tail_max_prime: int
    worst_tail_min_quotient: int
    worst_tail_max_quotient: int
    worst_tail_prime_quotient_witnesses: list[tuple[int, int, int, int]]
    worst_tail_prime_classes: list[tuple[int, int]]


@dataclass
class SquareSieveTwoPivotQuotientScan:
    N: int
    base_residue: int
    skeleton_primes: list[int]
    outside_witness: list[int]
    outside_size: int
    candidate_count: int
    pair_count: int
    best_pair: tuple[int, int]
    best_pair_target_count: int
    best_skeleton_target_count: int
    best_tail_target_count: int
    best_skeleton_prime_cover_budget: int
    best_tail_prime_cover_budget: int
    best_total_prime_cover_budget: int
    best_pair_rectangle_slack: int
    best_full_rectangle_slack: int
    best_tail_min_prime: int
    best_tail_max_prime: int
    best_tail_min_quotient: int
    best_tail_max_quotient: int
    best_tail_prime_quotient_witnesses: list[tuple[int, int, int, int]]
    best_pair_target_other_square_witnesses: list[tuple[int, int, int]]
    best_skeleton_prime_classes: list[tuple[int, int]]
    best_tail_prime_classes: list[tuple[int, int]]


@dataclass
class SquareSievePairPressureScan:
    N: int
    base_residue: int
    skeleton_primes: list[int]
    outside_witness: list[int]
    outside_size: int
    candidate_count: int
    best_pair: tuple[int, int]
    pair_target_count: int
    primary_skeleton_target_count: int
    other_skeleton_target_count: int
    same_large_target_count: int
    different_large_target_count: int
    same_large_gap_square_witnesses: list[tuple[int, int, int, int]]
    different_large_pair_classes: list[tuple[int, int, int, int]]
    different_large_pair_cover_budget: int
    pair_pressure_tail_budget: int
    pair_pressure_full_slack: int


@dataclass
class SquareSievePairSkeletonOnlyScan:
    N: int
    base_residue: int
    skeleton_primes: list[int]
    outside_witness: list[int]
    outside_size: int
    candidate_count: int
    best_pair: tuple[int, int]
    pair_target_count: int
    skeleton_target_count: int
    uncovered_target_count: int
    skeleton_prime_classes: list[tuple[int, int]]
    skeleton_prime_cover_budget: int
    pair_skeleton_full_slack: int
    skeleton_witnesses: list[tuple[int, int, int, int]]
    uncovered_witnesses: list[tuple[int, int, int, int]]


@dataclass
class SquareSievePairSkeletonOptimizerScan:
    N: int
    base_residue: int
    skeleton_primes: list[int]
    outside_witness: list[int]
    outside_size: int
    candidate_count: int
    pair_count: int
    best_pair: tuple[int, int]
    best_pair_target_count: int
    best_skeleton_target_count: int
    best_uncovered_target_count: int
    best_skeleton_prime_class_count: int
    best_skeleton_prime_cover_budget: int
    best_pair_skeleton_full_slack: int
    best_skeleton_prime_classes: list[tuple[int, int]]
    best_skeleton_witnesses: list[tuple[int, int, int, int]]
    best_uncovered_witnesses: list[tuple[int, int, int, int]]


@dataclass
class SquareSieveSkeletonOptimizerScan:
    N: int
    base_residue: int
    outside_witness: list[int]
    outside_size: int
    candidate_count: int
    candidate_profiles: list[list[int]]
    best_skeleton_primes: list[int]
    best_pair: tuple[int, int]
    best_primary_skeleton_target_count: int
    best_other_skeleton_target_count: int
    best_same_large_target_count: int
    best_different_large_target_count: int
    best_pair_pressure_tail_budget: int
    best_pair_pressure_full_slack: int


def _least_square_divisor_prime(n: int) -> int:
    for p in range(2, isqrt(n) + 1):
        if n % (p * p) == 0:
            return p
    raise ValueError(f"no square divisor found for {n}")


def _least_square_divisor_quotient(n: int) -> tuple[int, int]:
    p = _least_square_divisor_prime(n)
    return p, n // (p * p)


def _is_prime(n: int) -> bool:
    if n < 2:
        return False
    for d in range(2, isqrt(n) + 1):
        if n % d == 0:
            return False
    return True


def _prime_profiles_upto(max_prime: int) -> tuple[tuple[int, ...], ...]:
    checkpoints = [3, 23, 31, 47, 73, max_prime]
    profiles: list[tuple[int, ...]] = []
    for bound in checkpoints:
        if bound > max_prime:
            continue
        profile = tuple(p for p in range(2, bound + 1) if p != 5 and _is_prime(p))
        if profile and profile not in profiles:
            profiles.append(profile)
    return tuple(profiles)


def _crt_coprime(r1: int, m1: int, r2: int, m2: int) -> int:
    if gcd(m1, m2) != 1:
        raise ValueError((m1, m2))
    inv = pow(m1, -1, m2)
    k = ((r2 - r1) * inv) % m2
    return (r1 + m1 * k) % (m1 * m2)


def _square_divides_prime(p: int, n: int) -> bool:
    return n % (p * p) == 0


def _prime_residue_class_for_target(
    base_residue: int,
    pivot: int,
    target: int,
    p: int,
) -> tuple[int, int, int]:
    if p == 5:
        raise ValueError(("p=5", target, pivot))
    p2 = p * p
    if not _square_divides_prime(p, target * pivot + 1):
        raise ValueError(("not-square-dividing", p, target, pivot))
    modulus = 25 * p2
    if gcd(pivot, p2) != 1:
        raise ValueError((pivot, p2))
    square_residue = (-pow(pivot, -1, p2)) % p2
    if target % p2 != square_residue:
        raise ValueError((target, pivot, p, square_residue))
    residue = _crt_coprime(base_residue % 25, 25, square_residue, p2)
    if target % modulus != residue:
        raise ValueError((target, modulus, residue))
    return p, modulus, residue


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


def _skeleton_tail_payload(
    N: int,
    pivot: int,
    targets: list[int],
    base_residue: int,
    skeleton_primes: tuple[int, ...],
    target_mode: str,
) -> dict:
    skeleton_classes: set[tuple[int, int]] = set()
    skeleton_targets: set[int] = set()
    tail_targets: list[int] = []
    tail_witnesses: list[tuple[int, int, int, int]] = []
    for target in targets:
        covered_by_skeleton = False
        value = target * pivot + 1
        for p in skeleton_primes:
            if _square_divides_prime(p, value):
                _p, _modulus, residue = _prime_residue_class_for_target(
                    base_residue, pivot, target, p
                )
                skeleton_classes.add((p, residue))
                skeleton_targets.add(target)
                covered_by_skeleton = True
        if not covered_by_skeleton:
            p = _least_square_divisor_prime(value)
            if p in skeleton_primes or p == 5:
                raise ValueError(("bad-tail-prime", N, pivot, target, p))
            _p, _modulus, residue = _prime_residue_class_for_target(
                base_residue, pivot, target, p
            )
            tail_targets.append(target)
            tail_witnesses.append((target, p, value // (p * p), residue))

    tail_cert = square_sieve_pivot_cover_example(
        N,
        pivot,
        tail_targets,
        base_residue=base_residue,
        outside_size=1,
        outside_witness=[pivot],
        target_mode=target_mode,
    )
    skeleton_prime_classes = sorted(skeleton_classes)
    tail_prime_classes = sorted(tail_cert.prime_residue_classes)
    skeleton_budget = sum(
        N // (25 * p * p) + 1 for p, _residue in skeleton_prime_classes
    )
    tail_budget = tail_cert.prime_cover_budget
    primes = [p for _target, p, _quotient, _residue in tail_witnesses]
    quotients = [quotient for _target, _p, quotient, _residue in tail_witnesses]
    return {
        "skeleton_target_count": len(skeleton_targets),
        "tail_target_count": len(tail_targets),
        "skeleton_prime_classes": skeleton_prime_classes,
        "tail_prime_classes": tail_prime_classes,
        "skeleton_budget": skeleton_budget,
        "tail_budget": tail_budget,
        "total_budget": skeleton_budget + tail_budget,
        "tail_witnesses": tail_witnesses,
        "min_prime": min(primes) if primes else 0,
        "max_prime": max(primes) if primes else 0,
        "min_quotient": min(quotients) if quotients else 0,
        "max_quotient": max(quotients) if quotients else 0,
    }


def _candidate_nonneighbor_targets_for_pair(
    N: int,
    pivot: int,
    other: int,
    base_residue: int,
    sf: bytearray | None = None,
) -> list[int]:
    if sf is None:
        sf = squarefree_sieve(N * N + 1)
    return _candidate_nonneighbor_targets(N, [pivot, other], base_residue, sf)


def _covered_by_skeleton(value: int, skeleton_primes: tuple[int, ...]) -> bool:
    return any(_square_divides_prime(p, value) for p in skeleton_primes)


def _pair_crt_residue(
    target: int,
    base_residue: int,
    p: int,
    q: int,
) -> tuple[int, int]:
    if p == q or p == 5 or q == 5:
        raise ValueError((target, base_residue, p, q))
    m25 = 25
    mp = p * p
    mq = q * q
    residue_25p = _crt_coprime(base_residue % m25, m25, target % mp, mp)
    residue = _crt_coprime(residue_25p, m25 * mp, target % mq, mq)
    return 25 * mp * mq, residue


def square_sieve_pair_pressure_scan(
    N: int,
    outside_witness: list[int],
    base_residue: int = 7,
    skeleton_primes: tuple[int, ...] = (2, 3, 7, 11, 13, 17, 19, 23),
) -> SquareSievePairPressureScan:
    two_pivot = square_sieve_two_pivot_quotient_scan(
        N,
        outside_witness,
        base_residue=base_residue,
        skeleton_primes=skeleton_primes,
    )
    pivot, other = two_pivot.best_pair
    sf = squarefree_sieve(N * N + 1)
    targets = _candidate_nonneighbor_targets_for_pair(
        N, pivot, other, base_residue, sf
    )
    primary_skeleton = 0
    other_skeleton = 0
    same_large_gap_square_witnesses: list[tuple[int, int, int, int]] = []
    different_large_pair_classes: set[tuple[int, int, int, int]] = set()

    for target in targets:
        primary_value = target * pivot + 1
        other_value = target * other + 1
        if _covered_by_skeleton(primary_value, skeleton_primes):
            primary_skeleton += 1
            continue
        if _covered_by_skeleton(other_value, skeleton_primes):
            other_skeleton += 1
            continue
        p, _p_quotient = _least_square_divisor_quotient(primary_value)
        q, _q_quotient = _least_square_divisor_quotient(other_value)
        if p in skeleton_primes or q in skeleton_primes or p == 5 or q == 5:
            raise ValueError(("bad-large-pair", N, pivot, other, target, p, q))
        if p == q:
            diff = abs(other - pivot)
            if diff % (p * p) != 0:
                raise ValueError(("same-large-gap", N, pivot, other, target, p, diff))
            same_large_gap_square_witnesses.append((target, p, diff // (p * p), diff))
        else:
            modulus, residue = _pair_crt_residue(target, base_residue, p, q)
            different_large_pair_classes.add((p, q, modulus, residue))

    different_large_pair_classes_list = sorted(different_large_pair_classes)
    different_budget = sum(
        N // modulus + 1 for _p, _q, modulus, _residue in different_large_pair_classes_list
    )
    same_budget = len(same_large_gap_square_witnesses)
    pair_pressure_tail_budget = same_budget + different_budget
    return SquareSievePairPressureScan(
        N=N,
        base_residue=base_residue,
        skeleton_primes=list(skeleton_primes),
        outside_witness=list(outside_witness),
        outside_size=len(outside_witness),
        candidate_count=candidate_count(N, base_residue),
        best_pair=two_pivot.best_pair,
        pair_target_count=len(targets),
        primary_skeleton_target_count=primary_skeleton,
        other_skeleton_target_count=other_skeleton,
        same_large_target_count=len(same_large_gap_square_witnesses),
        different_large_target_count=(
            len(targets) - primary_skeleton - other_skeleton -
            len(same_large_gap_square_witnesses)
        ),
        same_large_gap_square_witnesses=same_large_gap_square_witnesses,
        different_large_pair_classes=different_large_pair_classes_list,
        different_large_pair_cover_budget=different_budget,
        pair_pressure_tail_budget=pair_pressure_tail_budget,
        pair_pressure_full_slack=(
            candidate_count(N, base_residue) -
            len(outside_witness) -
            pair_pressure_tail_budget
        ),
    )


def square_sieve_pair_skeleton_only_scan(
    N: int,
    outside_witness: list[int],
    base_residue: int = 7,
    skeleton_primes: tuple[int, ...] = (2, 3, 7, 11, 13, 17, 19, 23),
) -> SquareSievePairSkeletonOnlyScan:
    """Scan whether the best two-pivot rectangle is fully skeleton-covered.

    This is the finite-data mirror of the split Lean target: in the genuine
    two-pivot branch, the desired close is that the medium skeleton alone
    covers the pair non-neighbor rectangle, with no large-prime tail.
    """
    two_pivot = square_sieve_two_pivot_quotient_scan(
        N,
        outside_witness,
        base_residue=base_residue,
        skeleton_primes=skeleton_primes,
    )
    pivot, other = two_pivot.best_pair
    sf = squarefree_sieve(N * N + 1)
    targets = _candidate_nonneighbor_targets_for_pair(
        N, pivot, other, base_residue, sf
    )

    skeleton_classes: set[tuple[int, int]] = set()
    skeleton_witnesses: list[tuple[int, int, int, int]] = []
    uncovered_witnesses: list[tuple[int, int, int, int]] = []
    for target in targets:
        value = target * pivot + 1
        covered = False
        for p in skeleton_primes:
            if _square_divides_prime(p, value):
                _p, _modulus, residue = _prime_residue_class_for_target(
                    base_residue, pivot, target, p
                )
                skeleton_classes.add((p, residue))
                skeleton_witnesses.append((target, p, value // (p * p), residue))
                covered = True
                break
        if not covered:
            p, quotient = _least_square_divisor_quotient(value)
            if p == 5:
                raise ValueError(("bad-uncovered-prime", N, pivot, target, p))
            _p, _modulus, residue = _prime_residue_class_for_target(
                base_residue, pivot, target, p
            )
            uncovered_witnesses.append((target, p, quotient, residue))

    skeleton_prime_classes = sorted(skeleton_classes)
    skeleton_budget = sum(
        N // (25 * p * p) + 1 for p, _residue in skeleton_prime_classes
    )
    return SquareSievePairSkeletonOnlyScan(
        N=N,
        base_residue=base_residue,
        skeleton_primes=list(skeleton_primes),
        outside_witness=list(outside_witness),
        outside_size=len(outside_witness),
        candidate_count=candidate_count(N, base_residue),
        best_pair=two_pivot.best_pair,
        pair_target_count=len(targets),
        skeleton_target_count=len(skeleton_witnesses),
        uncovered_target_count=len(uncovered_witnesses),
        skeleton_prime_classes=skeleton_prime_classes,
        skeleton_prime_cover_budget=skeleton_budget,
        pair_skeleton_full_slack=(
            candidate_count(N, base_residue) - len(outside_witness) - skeleton_budget
        ),
        skeleton_witnesses=skeleton_witnesses,
        uncovered_witnesses=uncovered_witnesses,
    )


def square_sieve_pair_skeleton_optimizer_scan(
    N: int,
    outside_witness: list[int],
    base_residue: int = 7,
    skeleton_primes: tuple[int, ...] = (2, 3, 7, 11, 13, 17, 19, 23),
) -> SquareSievePairSkeletonOptimizerScan:
    """Choose the ordered pair that best fits the medium-skeleton-only target."""
    if len(outside_witness) < 2:
        raise ValueError("outside_witness must have at least two pivots")
    if any(p < 2 or p == 5 for p in skeleton_primes):
        raise ValueError(skeleton_primes)
    if any(b < 1 or b > N for b in outside_witness):
        raise ValueError((N, outside_witness))

    sf = squarefree_sieve(N * N + 1)
    candidate_total = candidate_count(N, base_residue)
    best_key: tuple[bool, int, int, int, int, int, int, int] | None = None
    best_payload: dict | None = None
    pair_count = 0
    for pivot in outside_witness:
        for other in outside_witness:
            if pivot == other:
                continue
            pair_count += 1
            targets = _candidate_nonneighbor_targets_for_pair(
                N, pivot, other, base_residue, sf
            )
            skeleton_classes: set[tuple[int, int]] = set()
            skeleton_witnesses: list[tuple[int, int, int, int]] = []
            uncovered_witnesses: list[tuple[int, int, int, int]] = []
            for target in targets:
                value = target * pivot + 1
                covered = False
                for p in skeleton_primes:
                    if _square_divides_prime(p, value):
                        _p, _modulus, residue = _prime_residue_class_for_target(
                            base_residue, pivot, target, p
                        )
                        skeleton_classes.add((p, residue))
                        skeleton_witnesses.append(
                            (target, p, value // (p * p), residue)
                        )
                        covered = True
                        break
                if not covered:
                    p, quotient = _least_square_divisor_quotient(value)
                    if p == 5:
                        raise ValueError(
                            ("bad-uncovered-prime", N, pivot, target, p)
                        )
                    _p, _modulus, residue = _prime_residue_class_for_target(
                        base_residue, pivot, target, p
                    )
                    uncovered_witnesses.append((target, p, quotient, residue))
            skeleton_prime_classes = sorted(skeleton_classes)
            skeleton_budget = sum(
                N // (25 * p * p) + 1 for p, _residue in skeleton_prime_classes
            )
            full_slack = candidate_total - len(outside_witness) - skeleton_budget
            key = (
                len(uncovered_witnesses) == 0,
                -len(uncovered_witnesses),
                full_slack,
                -skeleton_budget,
                len(targets),
                -len(skeleton_prime_classes),
                pivot,
                other,
            )
            if best_key is None or key > best_key:
                best_key = key
                best_payload = {
                    "pair": (pivot, other),
                    "targets": targets,
                    "skeleton_classes": skeleton_prime_classes,
                    "skeleton_budget": skeleton_budget,
                    "full_slack": full_slack,
                    "skeleton_witnesses": skeleton_witnesses,
                    "uncovered_witnesses": uncovered_witnesses,
                }

    assert best_payload is not None
    return SquareSievePairSkeletonOptimizerScan(
        N=N,
        base_residue=base_residue,
        skeleton_primes=list(skeleton_primes),
        outside_witness=list(outside_witness),
        outside_size=len(outside_witness),
        candidate_count=candidate_total,
        pair_count=pair_count,
        best_pair=best_payload["pair"],
        best_pair_target_count=len(best_payload["targets"]),
        best_skeleton_target_count=len(best_payload["skeleton_witnesses"]),
        best_uncovered_target_count=len(best_payload["uncovered_witnesses"]),
        best_skeleton_prime_class_count=len(best_payload["skeleton_classes"]),
        best_skeleton_prime_cover_budget=best_payload["skeleton_budget"],
        best_pair_skeleton_full_slack=best_payload["full_slack"],
        best_skeleton_prime_classes=best_payload["skeleton_classes"],
        best_skeleton_witnesses=best_payload["skeleton_witnesses"],
        best_uncovered_witnesses=best_payload["uncovered_witnesses"],
    )


def square_sieve_skeleton_optimizer_scan(
    N: int,
    outside_witness: list[int],
    base_residue: int = 7,
    max_prime: int = 73,
) -> SquareSieveSkeletonOptimizerScan:
    profiles = _prime_profiles_upto(max_prime)
    if not profiles:
        raise ValueError(max_prime)
    scans = [
        square_sieve_pair_pressure_scan(
            N,
            outside_witness,
            base_residue=base_residue,
            skeleton_primes=profile,
        )
        for profile in profiles
    ]
    best = max(
        scans,
        key=lambda scan: (
            scan.pair_pressure_full_slack,
            -scan.pair_pressure_tail_budget,
            -scan.same_large_target_count,
            -scan.different_large_target_count,
            len(scan.skeleton_primes),
        ),
    )
    return SquareSieveSkeletonOptimizerScan(
        N=N,
        base_residue=base_residue,
        outside_witness=list(outside_witness),
        outside_size=len(outside_witness),
        candidate_count=candidate_count(N, base_residue),
        candidate_profiles=[list(profile) for profile in profiles],
        best_skeleton_primes=best.skeleton_primes,
        best_pair=best.best_pair,
        best_primary_skeleton_target_count=best.primary_skeleton_target_count,
        best_other_skeleton_target_count=best.other_skeleton_target_count,
        best_same_large_target_count=best.same_large_target_count,
        best_different_large_target_count=best.different_large_target_count,
        best_pair_pressure_tail_budget=best.pair_pressure_tail_budget,
        best_pair_pressure_full_slack=best.pair_pressure_full_slack,
    )


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
        p, modulus, residue = _prime_residue_class_for_target(
            base_residue, pivot, target, p
        )
        p2 = p * p
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


def square_sieve_residual_tail_scan(
    N: int,
    base_residue: int = 7,
    skeleton_primes: tuple[int, ...] = (2, 3),
) -> SquareSieveResidualTailScan:
    if any(p < 2 or p == 5 for p in skeleton_primes):
        raise ValueError(skeleton_primes)
    sf = squarefree_sieve(N * N + 1)
    candidate_total = candidate_count(N, base_residue)
    checked = 0
    worst_key: tuple[int, int, int, int, int] | None = None
    worst_payload: dict | None = None
    for pivot in range(1, N + 1):
        if pivot % 25 == base_residue % 25:
            continue
        if sf[pivot * pivot + 1]:
            continue
        checked += 1
        targets = _candidate_nonneighbor_targets(N, [pivot], base_residue, sf)
        skeleton_classes: set[tuple[int, int]] = set()
        skeleton_targets: set[int] = set()
        tail_targets: list[int] = []
        for target in targets:
            covered_by_skeleton = False
            value = target * pivot + 1
            for p in skeleton_primes:
                if _square_divides_prime(p, value):
                    _p, _modulus, residue = _prime_residue_class_for_target(
                        base_residue, pivot, target, p
                    )
                    skeleton_classes.add((p, residue))
                    skeleton_targets.add(target)
                    covered_by_skeleton = True
            if not covered_by_skeleton:
                tail_targets.append(target)
        tail_cert = square_sieve_pivot_cover_example(
            N,
            pivot,
            tail_targets,
            base_residue=base_residue,
            outside_size=1,
            outside_witness=[pivot],
            target_mode="singleton_tail_after_skeleton",
        )
        skeleton_prime_classes = sorted(skeleton_classes)
        tail_prime_classes = sorted(tail_cert.prime_residue_classes)
        skeleton_budget = sum(
            N // (25 * p * p) + 1 for p, _residue in skeleton_prime_classes
        )
        tail_budget = tail_cert.prime_cover_budget
        total_budget = skeleton_budget + tail_budget
        tail_slack = candidate_total - 1 - total_budget
        key = (
            tail_slack,
            pivot,
            len(tail_targets),
            tail_budget,
            len(tail_prime_classes),
        )
        if worst_key is None or key < worst_key:
            worst_key = key
            worst_payload = {
                "pivot": pivot,
                "total_target_count": len(targets),
                "skeleton_target_count": len(skeleton_targets),
                "tail_target_count": len(tail_targets),
                "skeleton_prime_classes": skeleton_prime_classes,
                "tail_prime_classes": tail_prime_classes,
                "skeleton_budget": skeleton_budget,
                "tail_budget": tail_budget,
                "total_budget": total_budget,
                "tail_slack": tail_slack,
            }
    if worst_payload is None:
        worst_payload = {
            "pivot": 0,
            "total_target_count": 0,
            "skeleton_target_count": 0,
            "tail_target_count": 0,
            "skeleton_prime_classes": [],
            "tail_prime_classes": [],
            "skeleton_budget": 0,
            "tail_budget": 0,
            "total_budget": 0,
            "tail_slack": candidate_total - 1,
        }
    return SquareSieveResidualTailScan(
        N=N,
        base_residue=base_residue,
        skeleton_primes=list(skeleton_primes),
        checked_pivots=checked,
        candidate_count=candidate_total,
        worst_tail_slack=worst_payload["tail_slack"],
        worst_pivot=worst_payload["pivot"],
        worst_total_target_count=worst_payload["total_target_count"],
        worst_skeleton_target_count=worst_payload["skeleton_target_count"],
        worst_tail_target_count=worst_payload["tail_target_count"],
        worst_skeleton_prime_class_count=len(worst_payload["skeleton_prime_classes"]),
        worst_tail_prime_class_count=len(worst_payload["tail_prime_classes"]),
        worst_skeleton_prime_cover_budget=worst_payload["skeleton_budget"],
        worst_tail_prime_cover_budget=worst_payload["tail_budget"],
        worst_total_prime_cover_budget=worst_payload["total_budget"],
        worst_skeleton_prime_classes=worst_payload["skeleton_prime_classes"],
        worst_tail_prime_classes=worst_payload["tail_prime_classes"],
    )


def square_sieve_tail_quotient_profile_scan(
    N: int,
    base_residue: int = 7,
    skeleton_primes: tuple[int, ...] = (2, 3, 7, 11, 13, 17, 19, 23),
) -> SquareSieveTailQuotientProfileScan:
    if any(p < 2 or p == 5 for p in skeleton_primes):
        raise ValueError(skeleton_primes)
    sf = squarefree_sieve(N * N + 1)
    candidate_total = candidate_count(N, base_residue)
    checked = 0
    worst_key: tuple[int, int, int, int, int] | None = None
    worst_payload: dict | None = None
    for pivot in range(1, N + 1):
        if pivot % 25 == base_residue % 25:
            continue
        if sf[pivot * pivot + 1]:
            continue
        checked += 1
        targets = _candidate_nonneighbor_targets(N, [pivot], base_residue, sf)
        payload = _skeleton_tail_payload(
            N,
            pivot,
            targets,
            base_residue,
            skeleton_primes,
            target_mode="singleton_tail_after_medium_skeleton",
        )
        tail_slack = candidate_total - 1 - payload["total_budget"]
        key = (
            tail_slack,
            pivot,
            payload["tail_target_count"],
            payload["tail_budget"],
            len(payload["tail_prime_classes"]),
        )
        if worst_key is None or key < worst_key:
            worst_key = key
            worst_payload = {
                "pivot": pivot,
                "tail_target_count": payload["tail_target_count"],
                "tail_budget": payload["tail_budget"],
                "tail_classes": payload["tail_prime_classes"],
                "tail_witnesses": payload["tail_witnesses"],
                "tail_slack": tail_slack,
                "min_prime": payload["min_prime"],
                "max_prime": payload["max_prime"],
                "min_quotient": payload["min_quotient"],
                "max_quotient": payload["max_quotient"],
            }
    if worst_payload is None:
        worst_payload = {
            "pivot": 0,
            "tail_target_count": 0,
            "tail_budget": 0,
            "tail_classes": [],
            "tail_witnesses": [],
            "tail_slack": candidate_total - 1,
            "min_prime": 0,
            "max_prime": 0,
            "min_quotient": 0,
            "max_quotient": 0,
        }
    return SquareSieveTailQuotientProfileScan(
        N=N,
        base_residue=base_residue,
        skeleton_primes=list(skeleton_primes),
        checked_pivots=checked,
        candidate_count=candidate_total,
        worst_tail_slack=worst_payload["tail_slack"],
        worst_pivot=worst_payload["pivot"],
        worst_tail_target_count=worst_payload["tail_target_count"],
        worst_tail_prime_cover_budget=worst_payload["tail_budget"],
        worst_tail_prime_class_count=len(worst_payload["tail_classes"]),
        worst_tail_min_prime=worst_payload["min_prime"],
        worst_tail_max_prime=worst_payload["max_prime"],
        worst_tail_min_quotient=worst_payload["min_quotient"],
        worst_tail_max_quotient=worst_payload["max_quotient"],
        worst_tail_prime_quotient_witnesses=worst_payload["tail_witnesses"],
        worst_tail_prime_classes=worst_payload["tail_classes"],
    )


def square_sieve_two_pivot_quotient_scan(
    N: int,
    outside_witness: list[int],
    base_residue: int = 7,
    skeleton_primes: tuple[int, ...] = (2, 3, 7, 11, 13, 17, 19, 23),
) -> SquareSieveTwoPivotQuotientScan:
    if len(outside_witness) < 2:
        raise ValueError("outside_witness must have at least two pivots")
    if any(p < 2 or p == 5 for p in skeleton_primes):
        raise ValueError(skeleton_primes)
    if any(b < 1 or b > N for b in outside_witness):
        raise ValueError((N, outside_witness))

    sf = squarefree_sieve(N * N + 1)
    candidate_total = candidate_count(N, base_residue)
    best_key: tuple[int, int, int, int, int] | None = None
    best_payload: dict | None = None
    pair_count = 0
    for i, pivot in enumerate(outside_witness):
        for j, other in enumerate(outside_witness):
            if i == j:
                continue
            pair_count += 1
            targets = _candidate_nonneighbor_targets(
                N, [pivot, other], base_residue, sf
            )
            payload = _skeleton_tail_payload(
                N,
                pivot,
                targets,
                base_residue,
                skeleton_primes,
                target_mode="two_pivot_intersection_tail_after_medium_skeleton",
            )
            other_square_witnesses: list[tuple[int, int, int]] = []
            for target in targets:
                other_value = target * other + 1
                other_p, other_quotient = _least_square_divisor_quotient(other_value)
                if other_p == 5:
                    raise ValueError(
                        ("bad-other-square-prime", N, pivot, other, target, other_p)
                    )
                other_square_witnesses.append((target, other_p, other_quotient))
            pair_slack = candidate_total - 2 - payload["total_budget"]
            full_slack = (
                candidate_total - len(outside_witness) - payload["total_budget"]
            )
            key = (
                full_slack,
                pair_slack,
                -payload["total_budget"],
                -len(targets),
                -pivot,
            )
            if best_key is None or key > best_key:
                best_key = key
                best_payload = {
                    **payload,
                    "pair": (pivot, other),
                    "pair_target_count": len(targets),
                    "other_square_witnesses": other_square_witnesses,
                    "pair_slack": pair_slack,
                    "full_slack": full_slack,
                }
    assert best_payload is not None
    return SquareSieveTwoPivotQuotientScan(
        N=N,
        base_residue=base_residue,
        skeleton_primes=list(skeleton_primes),
        outside_witness=list(outside_witness),
        outside_size=len(outside_witness),
        candidate_count=candidate_total,
        pair_count=pair_count,
        best_pair=best_payload["pair"],
        best_pair_target_count=best_payload["pair_target_count"],
        best_skeleton_target_count=best_payload["skeleton_target_count"],
        best_tail_target_count=best_payload["tail_target_count"],
        best_skeleton_prime_cover_budget=best_payload["skeleton_budget"],
        best_tail_prime_cover_budget=best_payload["tail_budget"],
        best_total_prime_cover_budget=best_payload["total_budget"],
        best_pair_rectangle_slack=best_payload["pair_slack"],
        best_full_rectangle_slack=best_payload["full_slack"],
        best_tail_min_prime=best_payload["min_prime"],
        best_tail_max_prime=best_payload["max_prime"],
        best_tail_min_quotient=best_payload["min_quotient"],
        best_tail_max_quotient=best_payload["max_quotient"],
        best_tail_prime_quotient_witnesses=best_payload["tail_witnesses"],
        best_pair_target_other_square_witnesses=best_payload[
            "other_square_witnesses"
        ],
        best_skeleton_prime_classes=best_payload["skeleton_prime_classes"],
        best_tail_prime_classes=best_payload["tail_prime_classes"],
    )


def certificate_to_jsonable(cert: SquareSievePivotCoverExample) -> dict:
    return asdict(cert)
