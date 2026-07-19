#!/usr/bin/env python3
"""Generate a kernel-checkable long-x / short-prime diagonal certificate.

This program is deliberately untrusted.  It reads the already published
root records, enumerates their two progressions, and writes ordinary Lean
data plus `by decide` checks.  The Lean kernel proves that every represented
progression event is present in the sorted marker; producer bugs therefore
fail closed.
"""

from __future__ import annotations

import argparse
import re
from dataclasses import dataclass
from pathlib import Path


PUBLIC_ROOT_NAMESPACE = "Erdos848.GeneratedTailDiagonalCoverage"
DEFAULT_NAMESPACE = "Erdos848.GeneratedTruncatedDiagonalCoverage"
ROOT_RE = re.compile(
    r"prime := (\d+), root₁ := (\d+), root₂ := (\d+), "
    r"quotient₁ := (\d+), quotient₂ := (\d+)"
)


@dataclass(frozen=True)
class RootRecord:
    prime: int
    root1: int
    root2: int


@dataclass(frozen=True)
class Segment:
    theorem: str
    modulus: int
    residue: int
    start: int
    stop: int
    indices: tuple[int | None, ...]


def write_if_changed(path: Path, source: str) -> None:
    source = source.rstrip() + "\n"
    if path.is_file() and path.read_text(encoding="utf-8") == source:
        return
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(source, encoding="utf-8", newline="\n")


def module_header(import_name: str, namespace: str) -> str:
    return (
        f"import {import_name}\n\n"
        f"namespace {namespace}\n\n"
        "open PrimeRootCoverageData\n\n"
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 0\n\n"
    )


def read_roots(source_dir: Path) -> tuple[list[RootRecord], list[int]]:
    roots: list[RootRecord] = []
    chunk_sizes: list[int] = []
    sources = sorted(source_dir.glob("RootDataChunk*.lean"))
    if not sources:
        raise SystemExit(f"no RootDataChunk modules below {source_dir}")
    for source in sources:
        matches = ROOT_RE.findall(source.read_text(encoding="utf-8"))
        if not matches:
            raise SystemExit(f"no root records in {source}")
        chunk_sizes.append(len(matches))
        roots.extend(
            RootRecord(int(prime), int(root1), int(root2))
            for prime, root1, root2, _quotient1, _quotient2 in matches
        )
    if any(left.prime >= right.prime for left, right in zip(roots, roots[1:])):
        raise SystemExit("published roots are not strictly ordered by prime")
    return roots, chunk_sizes


def nat_value_tree(values: list[int]) -> str:
    if not values:
        return ".empty"
    if len(values) == 1:
        return f"(.leaf {values[0]})"
    middle = len(values) // 2
    return (
        f"(.node {len(values)} {nat_value_tree(values[:middle])} "
        f"{nat_value_tree(values[middle:])})"
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


def progression_tree(indices: tuple[int | None, ...]) -> str:
    if len(indices) == 1:
        index = indices[0]
        return ".skip" if index is None else f"(.leaf {index})"
    middle = len(indices) // 2
    return (
        f"(.node {progression_tree(indices[:middle])} "
        f"{progression_tree(indices[middle:])})"
    )


def adjacent_tree(count: int) -> str:
    if count == 1:
        return ".leaf"
    middle = count // 2
    return f"(.node {adjacent_tree(middle)} {adjacent_tree(count - middle)})"


def proof_tree(proofs: list[str]) -> str:
    if len(proofs) == 1:
        return proofs[0]
    middle = len(proofs) // 2
    return (
        f"⟨rfl, {proof_tree(proofs[:middle])}, "
        f"{proof_tree(proofs[middle:])}⟩"
    )


def named_proof_tree(theorems: list[str]) -> str:
    if len(theorems) == 1:
        return theorems[0]
    middle = len(theorems) // 2
    return (
        f"⟨rfl, {named_proof_tree(theorems[:middle])}, "
        f"{named_proof_tree(theorems[middle:])}⟩"
    )


def append_progression_ranges(theorems: list[str]) -> str:
    if len(theorems) == 1:
        return theorems[0]
    middle = len(theorems) // 2
    return (
        "(IndexedMarkerData.rangeCoveredOutsideAppend "
        f"({append_progression_ranges(theorems[:middle])}) "
        f"({append_progression_ranges(theorems[middle:])}))"
    )


def append_order_ranges(theorems: list[str]) -> str:
    if len(theorems) == 1:
        return theorems[0]
    middle = len(theorems) // 2
    return (
        "(IndexedMarkerData.adjacentRangeAppend "
        f"({append_order_ranges(theorems[:middle])}) "
        f"({append_order_ranges(theorems[middle:])}))"
    )


def clean_stale(output: Path, pattern: str, keep: int) -> None:
    for source in output.glob(pattern):
        match = re.search(r"(\d+)$", source.stem)
        if match is not None and int(match.group(1)) >= keep:
            source.unlink()


def generate(
    public_lean: Path,
    output: Path,
    namespace: str,
    limit: int,
    cutoff: int,
    marker_chunk_size: int,
    event_block_size: int,
    progression_segment_size: int,
    root_chunk_size: int,
    order_block_size: int,
) -> None:
    published = public_lean / "Erdos848" / "GeneratedTailDiagonalCoverage"
    roots, published_chunk_sizes = read_roots(published)
    if cutoff > 9_999_999:
        raise SystemExit(
            "the published PrimeRootCoverageData is certified only to 9,999,999"
        )
    if cutoff > roots[-1].prime and cutoff != 9_999_999:
        raise SystemExit("cutoff exceeds the final parsed root prime")
    if root_chunk_size != 4096:
        raise SystemExit("root chunk size must match the published 4096 layout")
    if published_chunk_sizes[:-1] != [root_chunk_size] * (
        len(published_chunk_sizes) - 1
    ):
        raise SystemExit("unexpected published root chunk layout")

    events: list[tuple[int, int, int, int | None]] = []
    marked = bytearray(limit + 1)
    root_side_events: dict[tuple[int, int], list[tuple[int, int | None]]] = {}
    for root_index, root in enumerate(roots):
        if root.prime > cutoff:
            continue
        modulus = root.prime * root.prime
        for side, residue in ((1, root.root1), (2, root.root2)):
            side_events: list[tuple[int, int | None]] = []
            if residue <= limit:
                count = (limit - residue) // modulus + 1
                for k in range(count):
                    x = residue + modulus * k
                    outside = x % 25 not in (7, 18)
                    if outside:
                        marked[x] = 1
                    side_events.append((k, x if outside else None))
            root_side_events[(root_index, side)] = side_events

    vertices = [x for x in range(1, limit + 1) if marked[x]]
    marker_index = {value: index for index, value in enumerate(vertices)}
    del marked

    segments: list[Segment] = []
    progression_segments: dict[tuple[int, int], list[str]] = {}
    for root_index, root in enumerate(roots):
        if root.prime > cutoff:
            continue
        modulus = root.prime * root.prime
        for side, residue in ((1, root.root1), (2, root.root2)):
            side_events = root_side_events[(root_index, side)]
            names: list[str] = []
            for segment_index, start_at in enumerate(
                range(0, len(side_events), progression_segment_size)
            ):
                part = side_events[
                    start_at : start_at + progression_segment_size
                ]
                start = part[0][0]
                stop = part[-1][0] + 1
                name = (
                    f"progression{root_index:06d}_{side}_{segment_index:04d}"
                )
                indices = tuple(
                    None if value is None else marker_index[value]
                    for _k, value in part
                )
                segments.append(
                    Segment(name, modulus, residue, start, stop, indices)
                )
                names.append(name)
            progression_segments[(root_index, side)] = names

    output.mkdir(parents=True, exist_ok=True)
    marker_chunks: list[tuple[str, int]] = []
    for number, start in enumerate(range(0, len(vertices), marker_chunk_size)):
        values = vertices[start : start + marker_chunk_size]
        name = f"markerChunk{number:04d}"
        stem = f"MarkerChunk{number:04d}"
        source = module_header(
            "Erdos848.TailTruncatedDiagonalChecker", namespace
        )
        source += (
            f"def {name} : NatValueTree :=\n"
            f"  {nat_value_tree(values)}\n\n"
            f"end {namespace}\n"
        )
        write_if_changed(output / f"{stem}.lean", source)
        marker_chunks.append((name, len(values)))
    clean_stale(output, "MarkerChunk*.lean", len(marker_chunks))

    indexed = "".join(
        f"import {namespace}.MarkerChunk{number:04d}\n"
        for number in range(len(marker_chunks))
    )
    indexed += (
        f"\nnamespace {namespace}\n\n"
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 0\n\n"
        "def indexedMarker : IndexedMarkerData :=\n"
        f"  {{ limit := {limit}\n"
        f"    values := {named_value_tree(marker_chunks)} }}\n\n"
        f"end {namespace}\n"
    )
    write_if_changed(output / "IndexedData.lean", indexed)

    event_groups: list[list[Segment]] = []
    group: list[Segment] = []
    weight = 0
    for segment in segments:
        if group and weight + len(segment.indices) > event_block_size:
            event_groups.append(group)
            group = []
            weight = 0
        group.append(segment)
        weight += len(segment.indices)
    if group:
        event_groups.append(group)

    for number, block in enumerate(event_groups):
        source = module_header(f"{namespace}.IndexedData", namespace)
        for segment in block:
            tree = f"{segment.theorem}Tree"
            source += (
                f"def {tree} : "
                "IndexedMarkerData.OutsideProgressionIndexTree :=\n"
                f"  {progression_tree(segment.indices)}\n\n"
                f"theorem {segment.theorem}Check :\n"
                f"    {tree}.check indexedMarker {segment.modulus} "
                f"{segment.residue} {segment.start} = true := by decide\n\n"
                f"theorem {segment.theorem} :\n"
                "    IndexedMarkerData.OutsideProgressionIndexTree."
                f"RangeCoveredOutside indexedMarker {segment.modulus} "
                f"{segment.residue} {segment.start} {segment.stop} := by\n"
                f"  simpa [{tree}, "
                "IndexedMarkerData.OutsideProgressionIndexTree.size] using\n"
                "    IndexedMarkerData.OutsideProgressionIndexTree.range "
                f"{segment.theorem}Check\n\n"
            )
        source += f"end {namespace}\n"
        write_if_changed(output / f"EventBlock{number:04d}.lean", source)
    clean_stale(output, "EventBlock*.lean", len(event_groups))

    progressions = f"import {PUBLIC_ROOT_NAMESPACE}.Data\n"
    progressions += "".join(
        f"import {namespace}.EventBlock{number:04d}\n"
        for number in range(len(event_groups))
    )
    progressions += (
        f"\nnamespace {namespace}\n\n"
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 0\n\n"
    )
    residue_theorems: dict[tuple[int, int], str] = {}
    for root_index, root in enumerate(roots):
        if root.prime > cutoff:
            continue
        modulus = root.prime * root.prime
        for side, residue in ((1, root.root1), (2, root.root2)):
            names = progression_segments[(root_index, side)]
            theorem = f"residueCovered{root_index:06d}_{side}"
            if names:
                progressions += (
                    f"theorem {theorem} :\n"
                    f"    indexedMarker.ResidueCoveredOutside {modulus} "
                    f"{residue} := by\n"
                    "  apply IndexedMarkerData."
                    "residueCoveredOutsideOfRange (by decide)\n"
                    f"  exact {append_progression_ranges(names)}\n\n"
                )
                residue_theorems[(root_index, side)] = theorem
    progressions += f"end {namespace}\n"
    write_if_changed(output / "Progressions.lean", progressions)

    root_block_theorems: list[str] = []
    root_start = 0
    for number, chunk_size in enumerate(published_chunk_sizes):
        root_stop = root_start + chunk_size
        proofs: list[str] = []
        for root_index in range(root_start, root_stop):
            root = roots[root_index]
            if cutoff < root.prime:
                proof = "Or.inl (by decide)"
            elif root.prime == 5:
                proof = "Or.inr (Or.inl rfl)"
            else:
                sides: list[str] = []
                modulus = root.prime * root.prime
                for side, residue in ((1, root.root1), (2, root.root2)):
                    theorem = residue_theorems.get((root_index, side))
                    if theorem is not None:
                        sides.append(theorem)
                    else:
                        sides.append(
                            "(IndexedMarkerData."
                            "residueCoveredOutsideOfAboveLimit "
                            f"(marker := indexedMarker) (modulus := {modulus}) "
                            f"(residue := {residue}) (by decide))"
                        )
                proof = f"Or.inr (Or.inr ⟨{sides[0]}, {sides[1]}⟩)"
            proofs.append(proof)
        theorem = f"rootProgressionBlock{number:04d}"
        source = module_header(f"{namespace}.Progressions", namespace)
        source += (
            f"theorem {theorem} :\n"
            f"    {PUBLIC_ROOT_NAMESPACE}.rootDataChunk{number:04d}."
            f"OutsideIndexedProgressionsUpTo indexedMarker {cutoff} :=\n"
            f"  {proof_tree(proofs)}\n\n"
            f"end {namespace}\n"
        )
        write_if_changed(output / f"RootBlock{number:04d}.lean", source)
        root_block_theorems.append(theorem)
        root_start = root_stop
    clean_stale(output, "RootBlock*.lean", len(root_block_theorems))

    order_theorems: list[str] = []
    comparison_count = max(0, len(vertices) - 1)
    for number, start in enumerate(range(0, comparison_count, order_block_size)):
        count = min(order_block_size, comparison_count - start)
        theorem = f"orderBlock{number:04d}"
        tree = f"orderTree{number:04d}"
        source = module_header(f"{namespace}.IndexedData", namespace)
        source += (
            f"def {tree} : IndexedMarkerData.AdjacentIndexTree :=\n"
            f"  {adjacent_tree(count)}\n\n"
            f"theorem {theorem}Check :\n"
            f"    {tree}.check indexedMarker {start} = true := by decide\n\n"
            f"theorem {theorem} :\n"
            "    IndexedMarkerData.AdjacentIndexTree.RangeOrdered "
            f"indexedMarker {start} {start + count + 1} := by\n"
            f"  simpa [{tree}, IndexedMarkerData.AdjacentIndexTree.size] using\n"
            f"    IndexedMarkerData.AdjacentIndexTree.range {theorem}Check\n\n"
            f"end {namespace}\n"
        )
        write_if_changed(output / f"OrderBlock{number:04d}.lean", source)
        order_theorems.append(theorem)
    clean_stale(output, "OrderBlock*.lean", len(order_theorems))

    certificate = (
        f"import {PUBLIC_ROOT_NAMESPACE}.TailRootAggregate\n"
        f"import {namespace}.IndexedData\n"
        f"import {namespace}.Progressions\n"
    )
    certificate += "".join(
        f"import {namespace}.RootBlock{number:04d}\n"
        for number in range(len(root_block_theorems))
    )
    certificate += "".join(
        f"import {namespace}.OrderBlock{number:04d}\n"
        for number in range(len(order_theorems))
    )
    certificate += (
        f"\nnamespace {namespace}\n\n"
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 0\n\n"
        "theorem indexedRootProgressionsValid :\n"
        f"    {PUBLIC_ROOT_NAMESPACE}.primeRootCoverage.roots."
        f"OutsideIndexedProgressionsUpTo indexedMarker {cutoff} :=\n"
        f"  {named_proof_tree(root_block_theorems)}\n\n"
        "theorem indexedRootsValidUpTo :\n"
        f"    {PUBLIC_ROOT_NAMESPACE}.primeRootCoverage.roots."
        f"OutsideIndexedValidUpTo indexedMarker {cutoff} :=\n"
        "  DiagonalRootTree."
        "outsideIndexedValidUpTo_of_valid_and_progressions\n"
        f"    {PUBLIC_ROOT_NAMESPACE}.indexedRootsValid\n"
        "    indexedRootProgressionsValid\n\n"
        "def certificate : TruncatedDiagonalCoverageCertificate :=\n"
        f"  {{ coverage := {PUBLIC_ROOT_NAMESPACE}.primeRootCoverage\n"
        "    marker := indexedMarker\n"
        f"    cutoff := {cutoff}\n"
        f"    coverageValid := {PUBLIC_ROOT_NAMESPACE}.primeRootCoverageValid\n"
        "    cutoff_le_coverage_limit := by decide\n"
        "    rootsValid := indexedRootsValidUpTo }\n\n"
    )
    if order_theorems:
        certificate += (
            "theorem indexedMarkerOrdered : indexedMarker.AdjacentOrdered := by\n"
            "  apply IndexedMarkerData.adjacentOrdered_of_range "
            f"(comparisonCount := {comparison_count}) (by decide)\n"
            f"  exact {append_order_ranges(order_theorems)}\n\n"
        )
    certificate += (
        "#print axioms indexedRootsValidUpTo\n"
        "#print axioms certificate\n"
    )
    if order_theorems:
        certificate += "#print axioms indexedMarkerOrdered\n"
    certificate += f"\nend {namespace}\n"
    write_if_changed(output / "Certificate.lean", certificate)

    print(
        f"limit={limit}",
        f"cutoff={cutoff}",
        f"published_roots={len(roots)}",
        f"marked={len(vertices)}",
        f"progression_events={sum(len(s.indices) for s in segments)}",
        f"marker_chunks={len(marker_chunks)}",
        f"event_blocks={len(event_groups)}",
        f"root_blocks={len(root_block_theorems)}",
        f"order_blocks={len(order_theorems)}",
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, required=True)
    parser.add_argument("--cutoff", type=int, default=9_999_999)
    parser.add_argument(
        "--public-lean",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "lean4",
    )
    parser.add_argument("--output", type=Path)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--marker-chunk-size", type=int, default=8192)
    parser.add_argument("--event-block-size", type=int, default=8192)
    parser.add_argument("--progression-segment-size", type=int, default=1024)
    parser.add_argument("--root-chunk-size", type=int, default=4096)
    parser.add_argument("--order-block-size", type=int, default=8192)
    args = parser.parse_args()
    if args.limit < 1 or args.cutoff < 1:
        raise SystemExit("limits must be positive")
    if not args.namespace.startswith("Erdos848."):
        raise SystemExit("--namespace must begin with Erdos848.")
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
        args.namespace,
        args.limit,
        args.cutoff,
        args.marker_chunk_size,
        args.event_block_size,
        args.progression_segment_size,
        args.root_chunk_size,
        args.order_block_size,
    )


if __name__ == "__main__":
    main()
