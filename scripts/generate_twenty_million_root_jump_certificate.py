#!/usr/bin/env python3
"""Generate kernel-checked prime-jump bounds for the 20M root profile.

The producer computes no trusted theorem.  It only writes:

* boundary-count proofs from the already classified interval blocks;
* one Boolean `allPrimeRanks` check per 2048-integer block; and
* shallow dispatch theorems connecting an arbitrary prime jump to its block.

Primality and composite witnesses come from
`generate_twenty_million_prime_anchor.py`; Lean checks all of them.
"""

from __future__ import annotations

from dataclasses import dataclass
from math import isqrt
from pathlib import Path
import argparse


BASE_START = 204_082
BASE_COUNT = 18_311
BOUND = 571_428
CHUNK = 2_048
FIRST_PROFILE_P = (20_000_000 + 76 - 1) // 76
GROUP_SIZE = 8

INTERVAL_NAMESPACE = "GeneratedTwentyMillionPrimeIntervalCoverage"
NAMESPACE = "GeneratedTailTwentyMillionRootJumpCoverage"
WRITTEN_PATHS: set[Path] = set()


@dataclass(frozen=True)
class Piece:
    index: int
    start: int
    size: int
    count: int

    @property
    def stop(self) -> int:
        return self.start + self.size


def write_if_changed(path: Path, content: str) -> None:
    WRITTEN_PATHS.add(path.resolve())
    if path.is_file() and path.read_text(encoding="utf-8") == content:
        return
    path.write_text(content, encoding="utf-8", newline="\n")


def replace_generated_dir(public_root: Path) -> Path:
    parent = (public_root / "lean4" / "Erdos848").resolve()
    target = parent / NAMESPACE
    resolved = target.resolve()
    if resolved.parent != parent or resolved.name != NAMESPACE:
        raise RuntimeError(f"refusing to update unexpected path {resolved}")
    target.mkdir(parents=True, exist_ok=True)
    WRITTEN_PATHS.clear()
    return target


def clean_stale_generated(target: Path) -> None:
    for path in target.glob("*.lean"):
        if path.resolve() not in WRITTEN_PATHS:
            path.unlink()


def sieve(bound: int) -> tuple[list[bool], list[int]]:
    result = [True] * (bound + 1)
    result[0] = result[1] = False
    smallest_factor = [0] * (bound + 1)
    for p in range(2, bound + 1):
        if not result[p]:
            continue
        for multiple in range(p * 2, bound + 1, p):
            result[multiple] = False
            if smallest_factor[multiple] == 0:
                smallest_factor[multiple] = p
    return result, smallest_factor


def prime_proof(prime: int, index: int) -> str:
    return "\n".join([
        "by",
        "      simpa only using",
        "        Erdos848.GeneratedTwentyMillionPrimePrattCoverage."
        "table.primeAt",
        "          Erdos848.GeneratedTwentyMillionPrimePrattCoverage."
        "table_valid",
        f"          (index := {index}) (by decide)",
    ])


def interval_tree_literal(
    start: int,
    stop: int,
    is_prime: list[bool],
    smallest_factor: list[int],
    prime_index: dict[int, int],
) -> str:
    if not start < stop:
        raise ValueError("empty partial interval")
    if stop == start + 1:
        n = start
        if is_prime[n]:
            return f"(.prime {n} ({prime_proof(n, prime_index[n])}))"
        factor = smallest_factor[n]
        if not (2 <= factor < n and n % factor == 0):
            raise RuntimeError(f"bad factor {factor} for {n}")
        return (
            f"(.composite {n} {factor} "
            "(by decide) (by decide) (by decide))"
        )
    middle = (start + stop) // 2
    return (
        "(.node "
        + interval_tree_literal(
            start, middle, is_prime, smallest_factor, prime_index
        )
        + " "
        + interval_tree_literal(
            middle, stop, is_prime, smallest_factor, prime_index
        )
        + ")"
    )


def dispatch_lines(
    pieces: list[Piece],
    theorem_name,
    extra_args: str,
) -> list[str]:
    lines = [
        f"  by_cases hpiece0000 : p < {pieces[0].stop}",
    ]
    for position, piece in enumerate(pieces[:-1]):
        indent = "  " * (position + 1)
        lines.append(
            f"{indent}· exact {theorem_name(piece)} p hp "
            f"(by omega) hpiece{position:04d}{extra_args}"
        )
        next_position = position + 1
        if next_position < len(pieces) - 1:
            lines.append(
                f"{indent}· by_cases hpiece{next_position:04d} : "
                f"p < {pieces[next_position].stop}"
            )
    final_position = len(pieces) - 1
    final_indent = "  " * final_position
    lines.append(
        f"{final_indent}· exact {theorem_name(pieces[-1])} p hp "
        f"(by omega) (by omega){extra_args}"
    )
    return lines


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--public-root",
        type=Path,
        default=Path(__file__).resolve().parents[1],
    )
    args = parser.parse_args()
    public_root = args.public_root.resolve()
    target = replace_generated_dir(public_root)

    is_prime, smallest_factor = sieve(BOUND)
    prime_index = {
        prime: index
        for index, prime in enumerate(
            n for n in range(2, BOUND + 1) if is_prime[n]
        )
    }
    pieces: list[Piece] = []
    for index, start in enumerate(range(BASE_START, BOUND + 1, CHUNK)):
        stop = min(BOUND + 1, start + CHUNK)
        pieces.append(
            Piece(index, start, stop - start, sum(is_prime[start:stop]))
        )
    if sum(piece.count for piece in pieces) != 28_624:
        raise RuntimeError("unexpected prime count in extended interval")
    first_profile_index = next(
        piece.index for piece in pieces if piece.stop > FIRST_PROFILE_P
    )

    cumulative = BASE_COUNT
    before_counts: dict[int, int] = {}
    boundary_names: dict[int, str] = {}
    boundary_lines = [
        "import Erdos848.TailPrimeRankBoundaryChecker",
        "import Erdos848.GeneratedTailPrimeIntervalCoverage.Certificate",
        *(
            f"import Erdos848.{INTERVAL_NAMESPACE}.Block{piece.index:04d}"
            for piece in pieces
        ),
        "",
        f"namespace Erdos848.{NAMESPACE}",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
    ]
    for piece in pieces:
        before_counts[piece.index] = cumulative
        boundary_name = f"primeCounting_blockEnd{piece.index:04d}"
        boundary_names[piece.index] = boundary_name
        if piece.index == 0:
            previous_theorem = (
                "Erdos848.GeneratedTailPrimeIntervalCoverage."
                "primeCounting_204081"
            )
        else:
            previous_theorem = boundary_names[piece.index - 1]
        boundary_lines.extend([
            f"theorem {boundary_name} :",
            f"    Nat.primeCounting {piece.stop - 1} = "
            f"{cumulative + piece.count} := by",
            f"  exact Erdos848.{INTERVAL_NAMESPACE}."
            f"blockTree{piece.index:04d}.primeCounting_interval_end_eq",
            f"    (by decide) (by decide) {previous_theorem}",
            "",
            f"#print axioms {boundary_name}",
            "",
        ])
        cumulative += piece.count
    boundary_lines.extend([f"end Erdos848.{NAMESPACE}", ""])
    write_if_changed(
        target / "BoundaryCertificate.lean", "\n".join(boundary_lines)
    )
    if cumulative != 46_935:
        raise RuntimeError(f"unexpected cumulative count {cumulative}")

    lower_endpoint_specs = [
        (76, 20_000_000 // 76, 23_078),
        (70, 20_000_000 // 70, 24_900),
    ]
    for split, endpoint, expected_count in lower_endpoint_specs:
        piece = next(
            piece for piece in pieces
            if piece.start <= endpoint < piece.stop
        )
        partial_count = sum(is_prime[piece.start : endpoint + 1])
        if before_counts[piece.index] + partial_count != expected_count:
            raise RuntimeError(f"bad lower endpoint count for split {split}")
        if piece.index == 0:
            previous_theorem = (
                "Erdos848.GeneratedTailPrimeIntervalCoverage."
                "primeCounting_204081"
            )
        else:
            previous_theorem = boundary_names[piece.index - 1]
        tree_name = f"lowerEndpointTree{split}"
        theorem_name = f"primeCounting_{endpoint}"
        source = "\n".join([
            "import Erdos848.TailPrimeRankBoundaryChecker",
            f"import Erdos848.{NAMESPACE}.BoundaryCertificate",
            "import Erdos848.GeneratedTwentyMillionPrimePrattCoverage.Certificate",
            "",
            f"namespace Erdos848.{NAMESPACE}",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 0",
            "",
            f"def {tree_name} : Erdos848.PrimeIntervalProofTree",
            f"    {piece.start} {endpoint + 1 - piece.start} "
            f"{partial_count} :=",
            "  " + interval_tree_literal(
                piece.start,
                endpoint + 1,
                is_prime,
                smallest_factor,
                prime_index,
            ),
            "",
            f"theorem {theorem_name} :",
            f"    Nat.primeCounting {endpoint} = {expected_count} := by",
            f"  exact {tree_name}.primeCounting_interval_end_eq",
            f"    (by omega) (by omega) {previous_theorem}",
            "",
            f"#print axioms {theorem_name}",
            "",
            f"end Erdos848.{NAMESPACE}",
            "",
        ])
        write_if_changed(target / f"LowerEndpoint{split}.lean", source)

    profile_pieces = pieces[first_profile_index:]
    close_names: dict[int, str] = {}
    close_theorem_lines: dict[int, list[str]] = {}
    for piece in profile_pieces:
        tree = (
            f"Erdos848.{INTERVAL_NAMESPACE}."
            f"blockTree{piece.index:04d}"
        )
        pass_name = f"rootJumpBlock{piece.index:04d}_passes"
        pass_source = "\n".join([
            "import Erdos848.TailTwentyMillionRootProfileChecker",
            f"import Erdos848.{INTERVAL_NAMESPACE}.Block{piece.index:04d}",
            "",
            f"namespace Erdos848.{NAMESPACE}",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 0",
            "",
            f"theorem {pass_name} :",
            f"    {tree}.allPrimeRanks {before_counts[piece.index]}",
            "      Erdos848.twentyMillionRootPrimeJumpPasses = true := by",
            "  with_unfolding_all decide",
            "",
            f"end Erdos848.{NAMESPACE}",
            "",
        ])
        write_if_changed(
            target / f"JumpBlock{piece.index:04d}.lean", pass_source
        )

        if piece.index == 0:
            previous_theorem = (
                "Erdos848.GeneratedTailPrimeIntervalCoverage."
                "primeCounting_204081"
            )
        else:
            previous_theorem = boundary_names[piece.index - 1]
        close_name = f"rootJumpBlock{piece.index:04d}_sound"
        close_names[piece.index] = close_name
        close_theorem_lines[piece.index] = [
            f"theorem {close_name}",
            "    (p : Nat) (hp : Nat.Prime p)",
            f"    (hblockLower : {piece.start} ≤ p)",
            f"    (hblockUpper : p < {piece.stop})",
            "    (row : Erdos848.TwentyMillionRootRow)",
            "    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)",
            "    (supportLength : Nat) (hLength : supportLength < 8)",
            "    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)",
            "    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :",
            "    Erdos848.twentyMillionRootSmoothProfileAt",
            "        row supportLength p (Nat.primeCounting p) ≤",
            "      row.envelope := by",
            f"  have hpListed : p ∈ {tree}.listed :=",
            f"    {tree}.prime_mem_listed hblockLower hblockUpper hp",
            f"  have hpassLocal := {tree}.allPrimeRanks_holds",
            f"    {pass_name} hpListed",
            f"  have hcount := {tree}.primeCounting_eq_before_add_localRank",
            f"    (by omega) {previous_theorem} hpListed",
            "  apply Erdos848.twentyMillionRootPrimeJumpPasses_sound",
            "    (row := row) (supportLength := supportLength)",
            "    (p := p) (primeCount := Nat.primeCounting p)",
            "    (hrow := hrow) (hLength := hLength)",
            "    (hLower := hLower) (hUpper := hUpper)",
            "  rw [hcount]",
            "  exact hpassLocal",
            "",
        ]

    groups: list[list[Piece]] = [
        profile_pieces[offset : offset + GROUP_SIZE]
        for offset in range(0, len(profile_pieces), GROUP_SIZE)
    ]
    group_names: list[str] = []
    for group_index, group in enumerate(groups):
        group_name = f"rootJumpGroup{group_index:04d}_sound"
        group_names.append(group_name)
        source = "\n".join([
            "import Erdos848.TailPrimeRankBoundaryChecker",
            f"import Erdos848.{NAMESPACE}.BoundaryCertificate",
            *(
                f"import Erdos848.{NAMESPACE}.JumpBlock{piece.index:04d}"
                for piece in group
            ),
            "",
            f"namespace Erdos848.{NAMESPACE}",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 0",
            "",
            *(
                line
                for piece in group
                for line in close_theorem_lines[piece.index]
            ),
            f"theorem {group_name}",
            "    (p : Nat) (hp : Nat.Prime p)",
            f"    (hgroupLower : {group[0].start} ≤ p)",
            f"    (hgroupUpper : p < {group[-1].stop})",
            "    (row : Erdos848.TwentyMillionRootRow)",
            "    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)",
            "    (supportLength : Nat) (hLength : supportLength < 8)",
            "    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)",
            "    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :",
            "    Erdos848.twentyMillionRootSmoothProfileAt",
            "        row supportLength p (Nat.primeCounting p) ≤",
            "      row.envelope := by",
            *dispatch_lines(
                group,
                lambda piece: close_names[piece.index],
                " row hrow supportLength hLength hLower hUpper",
            ),
            "",
            f"end Erdos848.{NAMESPACE}",
            "",
        ])
        write_if_changed(
            target / f"JumpGroup{group_index:04d}.lean", source
        )

    group_pieces = [
        Piece(index, group[0].start, group[-1].stop - group[0].start, 0)
        for index, group in enumerate(groups)
    ]
    certificate = "\n".join([
        *[
            f"import Erdos848.{NAMESPACE}.JumpGroup{index:04d}"
            for index in range(len(groups))
        ],
        "",
        f"namespace Erdos848.{NAMESPACE}",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        "theorem twentyMillionRoot_all_prime_jumps_le",
        "    (p : Nat) (hp : Nat.Prime p)",
        "    (row : Erdos848.TwentyMillionRootRow)",
        "    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)",
        "    (supportLength : Nat) (hLength : supportLength < 8)",
        "    (hLower : Erdos848.twentyMillionLower ≤ row.split * p)",
        "    (hUpper : row.split * p < Erdos848.twentyMillionUpper) :",
        "    Erdos848.twentyMillionRootSmoothProfileAt",
        "        row supportLength p (Nat.primeCounting p) ≤",
        "      row.envelope := by",
        f"  have hpGlobalLower : {profile_pieces[0].start} ≤ p := by",
        "    cases row <;>",
        "      norm_num [Erdos848.TwentyMillionRootRow.split,",
        "        Erdos848.twentyMillionLower] at hLower ⊢ <;> omega",
        "  have hpGlobalUpper : p < 571429 := by",
        "    cases row <;>",
        "      norm_num [Erdos848.TwentyMillionRootRow.split,",
        "        Erdos848.twentyMillionUpper] at hUpper ⊢ <;> omega",
        *dispatch_lines(
            group_pieces,
            lambda piece: group_names[piece.index],
            " row hrow supportLength hLength hLower hUpper",
        ),
        "",
        "#print axioms twentyMillionRoot_all_prime_jumps_le",
        "",
        f"end Erdos848.{NAMESPACE}",
        "",
    ])
    write_if_changed(target / "Certificate.lean", certificate)
    clean_stale_generated(target)

    print(
        f"generated root jump boundaries={len(pieces)} "
        f"profile_blocks={len(profile_pieces)} groups={len(groups)} "
        f"first_profile_block={first_profile_index}",
        flush=True,
    )


if __name__ == "__main__":
    main()
