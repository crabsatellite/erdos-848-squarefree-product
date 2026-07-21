#!/usr/bin/env python3
"""Partition a checked truncated-diagonal marker into kernel-checked atoms.

This program is deliberately untrusted.  It reads the ordinary Lean data
emitted by ``generate_truncated_diagonal_certificate.py`` and writes:

* one sorted target marker for each disjoint residue atom;
* one projection leaf for each source-marker value;
* chunked adjacent-order checks for every target marker; and
* optional exact cutoff witnesses at requested upper endpoints.

Lean checks the value equality, atom classification, target ordering, and
cutoffs.  The producer never becomes part of the trusted base.
"""

from __future__ import annotations

import argparse
import re
from collections import defaultdict
from pathlib import Path
from typing import TypeAlias


DEFAULT_SOURCE_NAMESPACE = "Erdos848.GeneratedTruncatedDiagonalCoverage"
DEFAULT_NAMESPACE = "Erdos848.GeneratedTruncatedDiagonalAtoms"
LEAF_RE = re.compile(r"\.leaf (\d+)")
LIMIT_RE = re.compile(r"limit := (\d+)")

Atom: TypeAlias = tuple[str, int, int]


def write_if_changed(path: Path, source: str) -> None:
    source = source.rstrip() + "\n"
    if path.is_file() and path.read_text(encoding="utf-8") == source:
        return
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(source, encoding="utf-8", newline="\n")


def clean_stale(output: Path, pattern: str, keep: int) -> None:
    for source in output.glob(pattern):
        match = re.search(r"(\d+)$", source.stem)
        if match is not None and int(match.group(1)) >= keep:
            source.unlink()


def header(imports: list[str], namespace: str) -> str:
    return (
        "".join(f"import {name}\n" for name in imports)
        + f"\nnamespace {namespace}\n\n"
        + "set_option maxRecDepth 1000000\n"
        + "set_option maxHeartbeats 0\n\n"
    )


def nat_tree(values: list[int]) -> str:
    if not values:
        return ".empty"
    if len(values) == 1:
        return f"(.leaf {values[0]})"
    middle = len(values) // 2
    return (
        f"(.node {len(values)} {nat_tree(values[:middle])} "
        f"{nat_tree(values[middle:])})"
    )


def named_value_tree(chunks: list[tuple[str, int]]) -> str:
    if not chunks:
        return ".empty"
    if len(chunks) == 1:
        return chunks[0][0]
    middle = len(chunks) // 2
    total = sum(size for _name, size in chunks)
    return (
        f"(.node {total} {named_value_tree(chunks[:middle])} "
        f"{named_value_tree(chunks[middle:])})"
    )


def projection_tree(entries: list[tuple[str, int]]) -> str:
    if len(entries) == 1:
        atom, target_index = entries[0]
        return f"(.leaf {atom} {target_index})"
    middle = len(entries) // 2
    return (
        f"(.node {projection_tree(entries[:middle])} "
        f"{projection_tree(entries[middle:])})"
    )


def adjacent_tree(count: int) -> str:
    if count == 1:
        return ".leaf"
    middle = count // 2
    return f"(.node {adjacent_tree(middle)} {adjacent_tree(count - middle)})"


def append_named(theorems: list[str], append_theorem: str) -> str:
    if len(theorems) == 1:
        return theorems[0]
    middle = len(theorems) // 2
    return (
        f"({append_theorem} "
        f"({append_named(theorems[:middle], append_theorem)}) "
        f"({append_named(theorems[middle:], append_theorem)}))"
    )


def all_atoms() -> list[Atom]:
    atoms: list[Atom] = [("div8", cell, 0) for cell in range(9)]
    atoms.extend(("even2", cell, 0) for cell in range(9))
    atoms.extend(
        ("even1", cell, residue)
        for cell in range(9)
        for residue in range(49)
    )
    atoms.extend(
        ("odd", parity, cell)
        for parity in range(2)
        for cell in range(9)
    )
    return atoms


def atom_of(value: int) -> Atom:
    if value % 2 == 1:
        return ("odd", int(value % 4 == 3), value % 9)
    if value % 4 == 2:
        return ("even1", value % 9, value % 49)
    if value % 8 == 4:
        return ("even2", value % 9, 0)
    return ("div8", value % 9, 0)


def atom_expr(atom: Atom) -> str:
    kind, first, second = atom
    if kind == "div8":
        return f"(.divisibleByEightCell ⟨{first}, by decide⟩)"
    if kind == "even2":
        return f"(.evenTwoCell ⟨{first}, by decide⟩)"
    if kind == "even1":
        return (
            f"(.evenOneFibre ⟨{first}, by decide⟩ "
            f"⟨{second}, by decide⟩)"
        )
    return (
        f"(.oddCell {'true' if first else 'false'} "
        f"⟨{second}, by decide⟩)"
    )


def marker_name(atom: Atom) -> str:
    kind, first, second = atom
    if kind == "div8":
        return f"divisibleByEightMarker{first}"
    if kind == "even2":
        return f"evenTwoMarker{first}"
    if kind == "even1":
        return f"evenOneMarker{first}_{second}"
    return f"oddMarker{'True' if first else 'False'}_{second}"


def theorem_name(atom: Atom) -> str:
    return marker_name(atom).removesuffix("Marker")


def vector(items: list[str]) -> str:
    return "![" + ", ".join(items) + "]"


def target_function(name: str, value_for: callable) -> str:
    result_type = "IndexedMarkerData" if name == "atomTargets" else "Nat"
    divisible_by_eight = vector(
        [value_for(("div8", cell, 0)) for cell in range(9)]
    )
    even_two = vector([value_for(("even2", cell, 0)) for cell in range(9)])
    even_one = vector(
        [
            vector(
                [
                    value_for(("even1", cell, residue))
                    for residue in range(49)
                ]
            )
            for cell in range(9)
        ]
    )
    odd_false = vector(
        [value_for(("odd", 0, cell)) for cell in range(9)]
    )
    odd_true = vector(
        [value_for(("odd", 1, cell)) for cell in range(9)]
    )
    return (
        f"def {name}DivisibleByEight : Fin 9 → {result_type} :=\n"
        f"  {divisible_by_eight}\n\n"
        f"def {name}EvenTwo : Fin 9 → {result_type} :=\n"
        f"  {even_two}\n\n"
        f"def {name}EvenOne : Fin 9 → Fin 49 → {result_type} :=\n"
        f"  {even_one}\n\n"
        f"def {name}OddFalse : Fin 9 → {result_type} :=\n"
        f"  {odd_false}\n\n"
        f"def {name}OddTrue : Fin 9 → {result_type} :=\n"
        f"  {odd_true}\n\n"
        f"def {name} : TruncatedDiagonalAtom → {result_type}\n"
        f"  | .divisibleByEightCell cell => "
        f"{name}DivisibleByEight cell\n"
        f"  | .evenTwoCell cell => {name}EvenTwo cell\n"
        f"  | .evenOneFibre cell residue => {name}EvenOne cell residue\n"
        f"  | .oddCell false cell => {name}OddFalse cell\n"
        f"  | .oddCell true cell => {name}OddTrue cell\n\n"
    )


def atom_cases(exact_for: callable) -> str:
    return (
        "  cases atom with\n"
        "  | divisibleByEightCell cell =>\n"
        "      fin_cases cell\n"
        + "".join(
            f"      · exact {exact_for(('div8', cell, 0))}\n"
            for cell in range(9)
        )
        + "  | evenTwoCell cell =>\n"
        "      fin_cases cell\n"
        + "".join(
            f"      · exact {exact_for(('even2', cell, 0))}\n"
            for cell in range(9)
        )
        + "  | evenOneFibre cell residue =>\n"
        "      fin_cases cell <;> fin_cases residue\n"
        + "".join(
            f"      · exact {exact_for(('even1', cell, residue))}\n"
            for cell in range(9)
            for residue in range(49)
        )
        + "  | oddCell parity cell =>\n"
        "      fin_cases parity <;> fin_cases cell\n"
        + "".join(
            f"      · exact {exact_for(('odd', parity, cell))}\n"
            for parity in (1, 0)
            for cell in range(9)
        )
    )


def read_source(
    public_lean: Path, source_namespace: str
) -> tuple[list[int], int, Path]:
    source_dir = (
        public_lean
        / "Erdos848"
        / source_namespace.removeprefix("Erdos848.").replace(".", "/")
    )
    sources = sorted(source_dir.glob("MarkerChunk*.lean"))
    if not sources:
        raise SystemExit(f"no MarkerChunk modules below {source_dir}")
    values: list[int] = []
    for source in sources:
        values.extend(
            int(value)
            for value in LEAF_RE.findall(source.read_text(encoding="utf-8"))
        )
    if values != sorted(set(values)):
        raise SystemExit("source marker is not strictly ordered")
    indexed = source_dir / "IndexedData.lean"
    match = LIMIT_RE.search(indexed.read_text(encoding="utf-8"))
    if match is None:
        raise SystemExit(f"cannot read marker limit from {indexed}")
    limit = int(match.group(1))
    if values and values[-1] > limit:
        raise SystemExit("source marker exceeds its declared limit")
    return values, limit, source_dir


def generate(
    public_lean: Path,
    output: Path,
    source_namespace: str,
    namespace: str,
    target_chunk_size: int,
    projection_block_size: int,
    order_block_size: int,
    uppers: list[int],
) -> None:
    values, limit, _source_dir = read_source(public_lean, source_namespace)
    atoms = all_atoms()
    targets: dict[Atom, list[int]] = defaultdict(list)
    entries: list[tuple[str, int]] = []
    for value in values:
        atom = atom_of(value)
        target_index = len(targets[atom])
        targets[atom].append(value)
        entries.append((atom_expr(atom), target_index))
    for atom in atoms:
        targets.setdefault(atom, [])

    output.mkdir(parents=True, exist_ok=True)
    atom_chunks: dict[Atom, list[tuple[str, int]]] = defaultdict(list)
    packed_chunks: list[list[tuple[str, list[int]]]] = []
    packed: list[tuple[str, list[int]]] = []
    packed_weight = 0
    for atom in atoms:
        values_for_atom = targets[atom]
        for chunk_number, start in enumerate(
            range(0, len(values_for_atom), target_chunk_size)
        ):
            chunk_values = values_for_atom[start : start + target_chunk_size]
            chunk_name = f"{marker_name(atom)}Chunk{chunk_number:04d}"
            if packed and packed_weight + len(chunk_values) > target_chunk_size:
                packed_chunks.append(packed)
                packed = []
                packed_weight = 0
            packed.append((chunk_name, chunk_values))
            packed_weight += len(chunk_values)
            atom_chunks[atom].append((chunk_name, len(chunk_values)))
    if packed:
        packed_chunks.append(packed)

    target_chunk_modules: list[str] = []
    for number, packed_module in enumerate(packed_chunks):
        stem = f"TargetChunk{number:04d}"
        source = header(
            ["Erdos848.TailTruncatedDiagonalAtomChecker"], namespace
        )
        for chunk_name, chunk_values in packed_module:
            source += (
                f"def {chunk_name} : NatValueTree :=\n"
                f"  {nat_tree(chunk_values)}\n\n"
            )
        source += f"end {namespace}\n"
        write_if_changed(output / f"{stem}.lean", source)
        target_chunk_modules.append(stem)
    clean_stale(output, "TargetChunk*.lean", len(target_chunk_modules))
    for obsolete in [
        "MarkerDivisibleByEight.lean",
        "MarkerEvenTwo.lean",
        "MarkerOdd.lean",
        *[f"MarkerEvenOneCell{cell}.lean" for cell in range(9)],
    ]:
        obsolete_path = output / obsolete
        if obsolete_path.is_file():
            obsolete_path.unlink()

    indexed = header(
        [
            f"{namespace}.{stem}"
            for stem in target_chunk_modules
        ],
        namespace,
    )
    for atom in atoms:
        indexed += (
            f"def {marker_name(atom)} : IndexedMarkerData :=\n"
            f"  {{ limit := {limit}\n"
            f"    values := {named_value_tree(atom_chunks[atom])} }}\n\n"
        )
    indexed += target_function("atomTargets", marker_name)
    indexed += f"end {namespace}\n"
    write_if_changed(output / "TargetData.lean", indexed)

    projection_modules: list[str] = []
    projection_theorems: list[str] = []
    for number, start in enumerate(
        range(0, len(entries), projection_block_size)
    ):
        stop = min(start + projection_block_size, len(entries))
        stem = f"ProjectionBlock{number:04d}"
        theorem = f"projectionBlock{number:04d}"
        tree = f"{theorem}Tree"
        source = header(
            [
                f"{source_namespace}.IndexedData",
                f"{namespace}.TargetData",
            ],
            namespace,
        )
        source += (
            f"def {tree} : "
            "IndexedMarkerData.TruncatedAtomProjectionTree :=\n"
            f"  {projection_tree(entries[start:stop])}\n\n"
            f"theorem {theorem}Check :\n"
            f"    {tree}.check {source_namespace}.indexedMarker "
            f"atomTargets {start} = true := by decide\n\n"
            f"theorem {theorem} :\n"
            "    IndexedMarkerData.TruncatedAtomProjectionTree."
            f"RangeProjected {source_namespace}.indexedMarker atomTargets "
            f"{start} {stop} := by\n"
            f"  simpa [{tree}, "
            "IndexedMarkerData.TruncatedAtomProjectionTree.size] using\n"
            "    IndexedMarkerData.TruncatedAtomProjectionTree.range "
            f"{theorem}Check\n\n"
            f"end {namespace}\n"
        )
        write_if_changed(output / f"{stem}.lean", source)
        projection_modules.append(stem)
        projection_theorems.append(theorem)
    clean_stale(output, "ProjectionBlock*.lean", len(projection_modules))

    order_modules: list[str] = []
    order_ranges: dict[Atom, list[str]] = defaultdict(list)
    order_module_number = 0
    for atom in atoms:
        count = max(0, len(targets[atom]) - 1)
        for start in range(0, count, order_block_size):
            block_count = min(order_block_size, count - start)
            stem = f"OrderBlock{order_module_number:04d}"
            theorem = f"orderBlock{order_module_number:04d}"
            tree = f"{theorem}Tree"
            marker = marker_name(atom)
            source = header([f"{namespace}.TargetData"], namespace)
            source += (
                f"def {tree} : IndexedMarkerData.AdjacentIndexTree :=\n"
                f"  {adjacent_tree(block_count)}\n\n"
                f"theorem {theorem}Check :\n"
                f"    {tree}.check {marker} {start} = true := by decide\n\n"
                f"theorem {theorem} :\n"
                "    IndexedMarkerData.AdjacentIndexTree.RangeOrdered "
                f"{marker} {start} {start + block_count + 1} := by\n"
                f"  simpa [{tree}, "
                "IndexedMarkerData.AdjacentIndexTree.size] using\n"
                f"    IndexedMarkerData.AdjacentIndexTree.range "
                f"{theorem}Check\n\n"
                f"end {namespace}\n"
            )
            write_if_changed(output / f"{stem}.lean", source)
            order_modules.append(stem)
            order_ranges[atom].append(theorem)
            order_module_number += 1
    clean_stale(output, "OrderBlock*.lean", len(order_modules))

    core = header(
        [
            f"{source_namespace}.IndexedData",
            f"{namespace}.TargetData",
        ]
        + [f"{namespace}.{stem}" for stem in projection_modules]
        + [f"{namespace}.{stem}" for stem in order_modules],
        namespace,
    )
    for atom in atoms:
        name = theorem_name(atom)
        marker = marker_name(atom)
        ranges = order_ranges[atom]
        if not ranges:
            core += (
                f"theorem {name}Ordered : {marker}.AdjacentOrdered := by\n"
                "  intro index hindex\n"
                f"  have hsize : {marker}.values.size = "
                f"{len(targets[atom])} := by decide\n"
                "  rw [hsize] at hindex\n"
                "  omega\n\n"
            )
        else:
            core += (
                f"theorem {name}Ordered : {marker}.AdjacentOrdered := by\n"
                "  apply IndexedMarkerData.adjacentOrdered_of_range "
                f"(comparisonCount := {len(targets[atom]) - 1}) "
                "(by decide)\n"
                f"  exact {append_named(ranges, 'IndexedMarkerData.adjacentRangeAppend')}\n\n"
            )
    core += (
        "theorem atomTargetsOrdered (atom : TruncatedDiagonalAtom) :\n"
        "    (atomTargets atom).AdjacentOrdered := by\n"
        + atom_cases(
            lambda atom: f"{theorem_name(atom)}Ordered"
        )
        + "\n"
        "theorem projectsAtoms :\n"
        f"    {source_namespace}.indexedMarker."
        "ProjectsTruncatedAtoms atomTargets := by\n"
        "  apply IndexedMarkerData.projectsTruncatedAtoms_of_range\n"
        f"  have hsize : {source_namespace}.indexedMarker.values.size = "
        f"{len(values)} := by decide\n"
        "  rw [hsize]\n"
        f"  exact {append_named(projection_theorems, 'IndexedMarkerData.truncatedAtomProjectionRangeAppend')}\n\n"
        "#print axioms atomTargetsOrdered\n"
        "#print axioms projectsAtoms\n\n"
        f"end {namespace}\n"
    )
    write_if_changed(output / "CoreAggregate.lean", core)

    cutoff_modules: list[str] = []
    for number, upper in enumerate(sorted(set(uppers))):
        if upper > limit:
            raise SystemExit(f"cutoff upper {upper} exceeds marker limit {limit}")
        stem = f"Cutoff{number:04d}"
        count_name = f"atomCountsAt{upper}"
        counts = {
            atom: sum(1 for value in targets[atom] if value <= upper)
            for atom in atoms
        }
        source = header([f"{namespace}.TargetData"], namespace)
        source += target_function(count_name, lambda atom: str(counts[atom]))
        theorem = f"atomTargetsCutoffAt{upper}"
        source += (
            f"theorem {theorem} (atom : TruncatedDiagonalAtom) :\n"
            f"    (atomTargets atom).Cutoff {upper} "
            f"({count_name} atom) := by\n"
            + atom_cases(lambda _atom: "(by decide)")
            + "\n"
            f"#print axioms {theorem}\n\n"
            f"end {namespace}\n"
        )
        write_if_changed(output / f"{stem}.lean", source)
        cutoff_modules.append(stem)
    clean_stale(output, "Cutoff*.lean", len(cutoff_modules))

    certificate = header(
        [
            f"{source_namespace}.Certificate",
            f"{namespace}.CoreAggregate",
        ]
        + [f"{namespace}.{stem}" for stem in cutoff_modules],
        namespace,
    )
    certificate += (
        "def certificate : TruncatedDiagonalCoverageCertificate :=\n"
        f"  {source_namespace}.certificate\n\n"
        "#print axioms certificate\n"
        "#print axioms projectsAtoms\n"
        "#print axioms atomTargetsOrdered\n\n"
        f"end {namespace}\n"
    )
    write_if_changed(output / "Certificate.lean", certificate)

    print(
        f"source_namespace={source_namespace}",
        f"limit={limit}",
        f"marked={len(values)}",
        f"atoms={len(atoms)}",
        f"nonempty_atoms={sum(bool(targets[atom]) for atom in atoms)}",
        f"target_chunks={len(target_chunk_modules)}",
        f"projection_blocks={len(projection_modules)}",
        f"order_blocks={len(order_modules)}",
        f"cutoffs={len(cutoff_modules)}",
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
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--target-chunk-size", type=int, default=32768)
    parser.add_argument("--projection-block-size", type=int, default=8192)
    parser.add_argument("--order-block-size", type=int, default=8192)
    parser.add_argument("--upper", type=int, action="append", default=[])
    args = parser.parse_args()
    if not args.source_namespace.startswith("Erdos848."):
        raise SystemExit("--source-namespace must begin with Erdos848.")
    if not args.namespace.startswith("Erdos848."):
        raise SystemExit("--namespace must begin with Erdos848.")
    if (
        args.target_chunk_size < 1
        or args.projection_block_size < 1
        or args.order_block_size < 1
    ):
        raise SystemExit("block sizes must be positive")
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
        args.namespace,
        args.target_chunk_size,
        args.projection_block_size,
        args.order_block_size,
        args.upper,
    )


if __name__ == "__main__":
    main()
