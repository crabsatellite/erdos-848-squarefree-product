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
    residue_classes: list[tuple[int, int]]
    cover_budget: int
    outside_size: int
    candidate_count: int
    rectangle_budget_holds: bool


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
    for target in targets:
        if not (1 <= target <= N):
            raise ValueError((N, target))
        if target % 25 != base_residue % 25:
            raise ValueError((target, base_residue))
        value = target * pivot + 1
        p = _least_square_divisor_prime(value)
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

    residue_classes = sorted(classes)
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
        residue_classes=residue_classes,
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
    candidates = [a for a in range(1, N + 1) if a % 25 == base_residue % 25]
    targets = [
        a
        for a in candidates
        if all(not sf[a * b + 1] for b in outside_witness)
    ]

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
            target_mode="nonneighbor_exact",
        )
        key = (
            cert.outside_size + cert.cover_budget,
            cert.cover_budget,
            len(cert.residue_classes),
            pivot,
        )
        if best is None or key < best_key:
            best = cert
            best_key = key
    assert best is not None
    return best


def certificate_to_jsonable(cert: SquareSievePivotCoverExample) -> dict:
    return asdict(cert)
