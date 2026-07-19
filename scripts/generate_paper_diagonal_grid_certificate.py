#!/usr/bin/env python3
"""Generate compact kernel-checked paper diagonal grids.

The producer is deliberately untrusted.  It reads the already generated
truncated-diagonal marker, partitions its values into the 477 disjoint atoms,
and emits exact atom prefix counts on a short multiplicative grid.  Lean
checks every cutoff, every paper envelope, and the complete interval cover.
No search or number-theoretic witness generation is trusted.
"""

from __future__ import annotations

import argparse
from bisect import bisect_right
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path

from generate_truncated_diagonal_atom_certificate import (
    Atom,
    all_atoms,
    atom_of,
    read_source,
    vector,
)


DEFAULT_SOURCE_NAMESPACE = (
    "Erdos848.GeneratedTruncatedDiagonalTwoHundredMillion"
)
DEFAULT_ATOM_NAMESPACE = (
    "Erdos848.GeneratedTruncatedDiagonalTwoHundredMillionAtoms"
)
DEFAULT_NAMESPACE = "Erdos848.GeneratedPaperDiagonalGrid"
DEFAULT_CUTOFF = 9_999_999


@dataclass(frozen=True)
class Regime:
    lean_name: str
    lower: int
    stop: int
    envelope: dict[str, int]


@dataclass(frozen=True)
class Selection:
    kind: str
    first: int = 0
    second: int = 0


@dataclass(frozen=True)
class Row:
    number: int
    regime: Regime
    lower: int
    upper: int
    counts: dict[Atom, int]


def write_if_changed(path: Path, source: str) -> None:
    source = source.rstrip() + "\n"
    if path.is_file() and path.read_text(encoding="utf-8") == source:
        return
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(source, encoding="utf-8", newline="\n")


def clean_stale(output: Path, pattern: str, keep: int) -> None:
    for source in output.glob(pattern):
        suffix = source.stem.removeprefix("RowBlock")
        if suffix.isdigit() and int(suffix) >= keep:
            source.unlink()


def header(imports: list[str], namespace: str) -> str:
    return (
        "".join(f"import {name}\n" for name in imports)
        + f"\nnamespace {namespace}\n\n"
        + "set_option maxRecDepth 1000000\n"
        + "set_option maxHeartbeats 0\n\n"
    )


def regimes() -> list[Regime]:
    return [
        Regime(
            "tenToTwenty",
            10_000_000,
            20_000_000,
            {
                "unrestricted": 25_289_862,
                "concentrated": 19_674_183,
                "lowTwoAdic": 15_808_416,
                "evenTwoCell": 16_160_942,
                "oddUnion": 12_647_924,
                "oddPlusCell": 12_647_924,
                "oneOdd": 6_325_016,
                "oneOddCell": 705_902,
            },
        ),
        Regime(
            "twentyToForty",
            20_000_000,
            40_000_000,
            {
                "unrestricted": 25_289_550,
                "concentrated": 19_671_796,
                "lowTwoAdic": 15_806_240,
                "evenTwoCell": 16_158_563,
                "oddUnion": 12_646_194,
                "oddPlusCell": 7_027_715,
                "oneOdd": 6_323_839,
                "oneOddCell": 705_249,
            },
        ),
        Regime(
            "fortyToFifty",
            40_000_000,
            50_000_000,
            {
                "unrestricted": 25_288_306,
                "concentrated": 19_669_629,
                "lowTwoAdic": 25_288_306,
                "evenTwoCell": 25_288_306,
                "oddUnion": 12_644_928,
                "oddPlusCell": 12_644_928,
                "oneOdd": 6_323_387,
                "oneOddCell": 704_922,
            },
        ),
        Regime(
            "fiftyToSeventy",
            50_000_000,
            70_000_000,
            {
                "unrestricted": 25_289_177,
                "concentrated": 19_670_398,
                "lowTwoAdic": 25_289_177,
                "evenTwoCell": 25_289_177,
                "oddUnion": 12_645_934,
                "oddPlusCell": 12_645_934,
                "oneOdd": 6_324_212,
                "oneOddCell": 705_254,
            },
        ),
        Regime(
            "seventyToEighty",
            70_000_000,
            80_000_000,
            {
                "unrestricted": 25_289_195,
                "concentrated": 19_670_557,
                "lowTwoAdic": 25_289_195,
                "evenTwoCell": 25_289_195,
                "oddUnion": 12_646_195,
                "oddPlusCell": 12_646_195,
                "oneOdd": 6_324_677,
                "oneOddCell": 705_450,
            },
        ),
        Regime(
            "eightyToHundred",
            80_000_000,
            100_000_000,
            {
                "unrestricted": 25_289_763,
                "concentrated": 19_670_912,
                "lowTwoAdic": 25_289_763,
                "evenTwoCell": 25_289_763,
                "oddUnion": 12_646_399,
                "oddPlusCell": 12_646_399,
                "oneOdd": 6_324_905,
                "oneOddCell": 706_127,
            },
        ),
        Regime(
            "hundredToHundredFifty",
            100_000_000,
            150_000_000,
            {
                "unrestricted": 25_291_155,
                "concentrated": 19_672_482,
                "lowTwoAdic": 25_291_155,
                "evenTwoCell": 25_291_155,
                "oddUnion": 12_648_139,
                "oddPlusCell": 12_648_139,
                "oneOdd": 6_326_632,
                "oneOddCell": 707_564,
            },
        ),
        Regime(
            "hundredFiftyToTwoHundred",
            150_000_000,
            200_000_000,
            {
                "unrestricted": 25_292_702,
                "concentrated": 19_673_898,
                "lowTwoAdic": 25_292_702,
                "evenTwoCell": 25_292_702,
                "oddUnion": 12_649_812,
                "oddPlusCell": 12_649_812,
                "oneOdd": 6_328_282,
                "oneOddCell": 709_139,
            },
        ),
    ]


def selections() -> list[Selection]:
    result = [Selection("unrestricted")]
    result.extend(
        Selection("concentrated", residue, cell)
        for residue in range(4)
        for cell in range(9)
    )
    result.append(Selection("lowTwoAdic"))
    result.extend(Selection("evenTwoCell", cell) for cell in range(9))
    result.append(Selection("oddUnion"))
    result.extend(
        Selection("oddPlusCell", parity, cell)
        for parity in range(2)
        for cell in range(9)
    )
    result.extend(Selection("oneOdd", parity) for parity in range(2))
    result.extend(
        Selection("oneOddCell", parity, cell)
        for parity in range(2)
        for cell in range(9)
    )
    return result


def atom_mod_four(atom: Atom) -> int:
    kind, first, _second = atom
    if kind in {"div8", "even2"}:
        return 0
    if kind == "even1":
        return 2
    return 3 if first else 1


def atom_mod_nine(atom: Atom) -> int:
    kind, first, second = atom
    return second if kind == "odd" else first


def accepts(selection: Selection, atom: Atom) -> bool:
    kind, first, _second = atom
    if selection.kind == "unrestricted":
        return True
    if selection.kind == "concentrated":
        return (
            atom_mod_four(atom) == selection.first
            and atom_mod_nine(atom) == selection.second
        )
    if selection.kind == "lowTwoAdic":
        return kind in {"div8", "odd"}
    if selection.kind == "evenTwoCell":
        return (
            kind in {"div8", "odd"}
            or (kind == "even2" and first == selection.first)
        )
    if selection.kind == "oddUnion":
        return kind == "odd"
    if selection.kind == "oddPlusCell":
        return kind == "odd" and (
            first == selection.first
            or (first != selection.first and _second == selection.second)
        )
    if selection.kind == "oneOdd":
        return kind == "odd" and first == selection.first
    if selection.kind == "oneOddCell":
        return (
            kind == "odd"
            and first == selection.first
            and _second == selection.second
        )
    raise AssertionError(selection)


def is_odd(selection: Selection) -> bool:
    return selection.kind in {
        "oddUnion",
        "oddPlusCell",
        "oneOdd",
        "oneOddCell",
    }


def large_square_payment(cutoff: int, upper: int, odd: bool) -> int:
    quotient = (upper + 1) ** 2 // (cutoff + 1) ** 2
    if odd:
        quotient //= 8
    return (quotient + 1) * 13


def counts_expr(counts: dict[Atom, int]) -> str:
    divisible_by_eight = vector(
        [str(counts[("div8", cell, 0)]) for cell in range(9)]
    )
    even_two = vector(
        [str(counts[("even2", cell, 0)]) for cell in range(9)]
    )
    even_one = vector(
        [
            vector(
                [
                    str(counts[("even1", cell, residue)])
                    for residue in range(49)
                ]
            )
            for cell in range(9)
        ]
    )
    odd_false = vector(
        [str(counts[("odd", 0, cell)]) for cell in range(9)]
    )
    odd_true = vector(
        [str(counts[("odd", 1, cell)]) for cell in range(9)]
    )
    return (
        "{ divisibleByEight := "
        + divisible_by_eight
        + "\n    evenTwo := "
        + even_two
        + "\n    evenOne := "
        + even_one
        + "\n    oddFalse := "
        + odd_false
        + "\n    oddTrue := "
        + odd_true
        + " }"
    )


def row_source(row: Row, atom_namespace: str, cutoff: int) -> str:
    stem = f"{row.number:04d}"
    return (
        f"def counts{stem} : TruncatedDiagonalAtomCounts :=\n"
        f"  {counts_expr(row.counts)}\n\n"
        f"def row{stem} : PaperDiagonalGridRow :=\n"
        f"  {{ regime := .{row.regime.lean_name}\n"
        f"    lower := {row.lower}\n"
        f"    upper := {row.upper}\n"
        f"    counts := counts{stem} }}\n\n"
        f"theorem row{stem}Check :\n"
        f"    row{stem}.check {atom_namespace}.atomTargets "
        f"{cutoff} = true := by decide\n\n"
        f"def certifiedRow{stem} :\n"
        "    CertifiedPaperDiagonalGridRow "
        f"{atom_namespace}.atomTargets {cutoff} :=\n"
        f"  ⟨row{stem}, row{stem}Check⟩\n\n"
    )


def generate(
    public_lean: Path,
    output: Path,
    source_namespace: str,
    atom_namespace: str,
    namespace: str,
    cutoff: int,
    permille: int,
    rows_per_block: int,
    max_rows: int | None,
) -> None:
    values, limit, _source_dir = read_source(
        public_lean, source_namespace
    )
    if max_rows is None and limit < 199_999_999:
        raise SystemExit(
            f"source limit {limit} does not cover the paper grid"
        )
    atoms = all_atoms()
    targets: dict[Atom, list[int]] = defaultdict(list)
    for value in values:
        targets[atom_of(value)].append(value)
    for atom in atoms:
        targets.setdefault(atom, [])

    rows: list[Row] = []
    stop_early = False
    for regime in regimes():
        lower = regime.lower
        while lower < regime.stop:
            upper = min(
                regime.stop - 1,
                lower * (1000 + permille) // 1000,
            )
            counts = {
                atom: bisect_right(targets[atom], upper)
                for atom in atoms
            }
            row = Row(len(rows), regime, lower, upper, counts)
            for selection in selections():
                selected_count = sum(
                    count
                    for atom, count in counts.items()
                    if accepts(selection, atom)
                )
                payment = large_square_payment(
                    cutoff, upper, is_odd(selection)
                )
                left = (selected_count + payment) * 1_000_000_000
                right = regime.envelope[selection.kind] * lower
                if left > right:
                    raise SystemExit(
                        "paper budget fails: "
                        f"regime={regime.lean_name} lower={lower} "
                        f"upper={upper} selection={selection} "
                        f"left={left} right={right}"
                    )
            rows.append(row)
            lower = upper + 1
            if max_rows is not None and len(rows) >= max_rows:
                stop_early = True
                break
        if stop_early:
            break

    if not rows:
        raise SystemExit("grid is empty")
    output.mkdir(parents=True, exist_ok=True)
    row_modules: list[str] = []
    for block_number, start in enumerate(
        range(0, len(rows), rows_per_block)
    ):
        stem = f"RowBlock{block_number:04d}"
        source = header(
            [
                f"{atom_namespace}.TargetData",
                "Erdos848.TailPaperDiagonalGridChecker",
            ],
            namespace,
        )
        for row in rows[start : start + rows_per_block]:
            source += row_source(row, atom_namespace, cutoff)
        source += f"end {namespace}\n"
        write_if_changed(output / f"{stem}.lean", source)
        row_modules.append(stem)
    clean_stale(output, "RowBlock*.lean", len(row_modules))

    cover_stop = rows[-1].upper + 1
    aggregate = header(
        [f"{namespace}.{stem}" for stem in row_modules],
        namespace,
    )
    aggregate += (
        "def rows : List (CertifiedPaperDiagonalGridRow "
        f"{atom_namespace}.atomTargets {cutoff}) :=\n"
        "  ["
        + ", ".join(
            f"certifiedRow{row.number:04d}" for row in rows
        )
        + "]\n\n"
        "theorem rowsCover :\n"
        f"    paperDiagonalGridCoversFrom 10000000 {cover_stop} "
        "rows = true := by decide\n\n"
        "#print axioms rowsCover\n\n"
        f"end {namespace}\n"
    )
    write_if_changed(output / "Aggregate.lean", aggregate)

    certificate = header(
        [
            f"{atom_namespace}.Certificate",
            f"{namespace}.Aggregate",
        ],
        namespace,
    )
    certificate += (
        "theorem sourceCertificateCutoff :\n"
        f"    {atom_namespace}.certificate.cutoff = {cutoff} := by decide\n\n"
        "#print axioms sourceCertificateCutoff\n"
        "#print axioms rowsCover\n\n"
        f"end {namespace}\n"
    )
    write_if_changed(output / "Certificate.lean", certificate)

    print(
        f"source_namespace={source_namespace}",
        f"marked={len(values)}",
        f"rows={len(rows)}",
        f"row_blocks={len(row_modules)}",
        f"cover_stop={cover_stop}",
        f"permille={permille}",
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--public-lean",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "lean4",
    )
    parser.add_argument(
        "--source-namespace", default=DEFAULT_SOURCE_NAMESPACE
    )
    parser.add_argument(
        "--atom-namespace", default=DEFAULT_ATOM_NAMESPACE
    )
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--cutoff", type=int, default=DEFAULT_CUTOFF)
    parser.add_argument("--permille", type=int, default=3)
    parser.add_argument("--rows-per-block", type=int, default=4)
    parser.add_argument("--max-rows", type=int)
    args = parser.parse_args()
    for option in [
        args.source_namespace,
        args.atom_namespace,
        args.namespace,
    ]:
        if not option.startswith("Erdos848."):
            raise SystemExit("all namespaces must begin with Erdos848.")
    if args.cutoff < 1:
        raise SystemExit("--cutoff must be positive")
    if args.permille < 1:
        raise SystemExit("--permille must be positive")
    if args.rows_per_block < 1:
        raise SystemExit("--rows-per-block must be positive")
    if args.max_rows is not None and args.max_rows < 1:
        raise SystemExit("--max-rows must be positive")
    output = args.output
    if output is None:
        output = (
            args.public_lean
            / "Erdos848"
            / args.namespace.removeprefix("Erdos848.").replace(".", "/")
        )
    generate(
        args.public_lean.resolve(),
        output.resolve(),
        args.source_namespace,
        args.atom_namespace,
        args.namespace,
        args.cutoff,
        args.permille,
        args.rows_per_block,
        args.max_rows,
    )


if __name__ == "__main__":
    main()
