#!/usr/bin/env python3
"""Generate the compact 10M--20M odd-cell diagonal certificate.

This program is an untrusted producer.  It reads the numeric marker emitted by
``generate_truncated_diagonal_certificate.py``, partitions its odd values into
the eighteen ``(mod 4, mod 9)`` cells, and writes ordinary Lean data plus
``by decide`` projection, ordering, and cutoff checks.  The Lean kernel also
pays for prime squares above the truncated prime cutoff.
"""

from __future__ import annotations

import argparse
import re
from bisect import bisect_right
from pathlib import Path


SOURCE_NAMESPACE = "Erdos848.GeneratedTruncatedDiagonalTwentyMillion"
DEFAULT_NAMESPACE = "Erdos848.GeneratedTenMillionOddCellDiagonal"
EXPECTED_SOURCE_SIZE = 503_229
EXPECTED_SOURCE_LIMIT = 19_999_999
LOWER = 10_000_000
STOP = 20_000_000
CUTOFF = 9_999_999
ENVELOPE_NUMERATOR = 352_951
ENVELOPE_DENOMINATOR = 500_000_000
LEAF_RE = re.compile(r"\.leaf (\d+)")


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
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 0\n\n"
    )


def read_source_values(source: Path) -> list[int]:
    chunks = sorted(source.glob("MarkerChunk*.lean"))
    if not chunks:
        raise SystemExit(f"no MarkerChunk modules below {source}")
    values: list[int] = []
    for chunk in chunks:
        matches = LEAF_RE.findall(chunk.read_text(encoding="utf-8"))
        if not matches:
            raise SystemExit(f"no NatValueTree leaves in {chunk}")
        values.extend(map(int, matches))
    if len(values) != EXPECTED_SOURCE_SIZE:
        raise SystemExit(
            f"unexpected source size {len(values)}; "
            f"expected {EXPECTED_SOURCE_SIZE}"
        )
    if values != sorted(set(values)):
        raise SystemExit("source marker is not strictly ordered")
    if values[-1] > EXPECTED_SOURCE_LIMIT:
        raise SystemExit("source marker exceeds its published limit")
    return values


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


def adjacent_tree(count: int) -> str:
    if count == 1:
        return ".leaf"
    middle = count // 2
    return (
        f"(.node {adjacent_tree(middle)} "
        f"{adjacent_tree(count - middle)})"
    )


def odd_projection_tree(
    entries: list[tuple[bool, int, int] | None],
) -> str:
    if len(entries) == 1:
        entry = entries[0]
        if entry is None:
            return ".skip"
        parity, residue, target_index = entry
        parity_source = "true" if parity else "false"
        return (
            f"(.leaf {{ parity := {parity_source}, residue := {residue} }} "
            f"{target_index})"
        )
    middle = len(entries) // 2
    return (
        f"(.node {odd_projection_tree(entries[:middle])} "
        f"{odd_projection_tree(entries[middle:])})"
    )


def exact_blocks(total: int, maximum: int) -> list[tuple[int, int]]:
    return [
        (start, min(start + maximum, total))
        for start in range(0, total, maximum)
    ]


def append_named(theorems: list[str], append_theorem: str) -> str:
    if not theorems:
        raise ValueError("cannot append an empty theorem list")
    if len(theorems) == 1:
        return theorems[0]
    middle = len(theorems) // 2
    return (
        f"({append_theorem} "
        f"({append_named(theorems[:middle], append_theorem)}) "
        f"({append_named(theorems[middle:], append_theorem)}))"
    )


def clean_stale(output: Path, pattern: str, live: set[str]) -> None:
    for source in output.glob(pattern):
        if source.name not in live:
            source.unlink()


def odd_large_square_payment(upper: int) -> int:
    quotient = (upper + 1) ** 2 // (CUTOFF + 1) ** 2
    return (quotient // 8 + 1) * 13


def envelope_records(
    cells: dict[tuple[bool, int], list[int]],
) -> list[tuple[int, int, tuple[int, ...], tuple[int, ...]]]:
    records: list[tuple[int, int, tuple[int, ...], tuple[int, ...]]] = []
    lower = LOWER
    while lower < STOP:
        def valid(upper: int) -> bool:
            payment = odd_large_square_payment(upper)
            return all(
                (
                    bisect_right(cell_values, upper) + payment
                ) * ENVELOPE_DENOMINATOR
                <= ENVELOPE_NUMERATOR * lower
                for cell_values in cells.values()
            )

        if not valid(lower):
            raise SystemExit(
                f"cell envelope fails at its own lower endpoint {lower}"
            )
        lo = lower
        hi = STOP - 1
        while lo < hi:
            middle = (lo + hi + 1) // 2
            if valid(middle):
                lo = middle
            else:
                hi = middle - 1
        upper = lo
        one = tuple(
            bisect_right(cells[False, residue], upper)
            for residue in range(9)
        )
        three = tuple(
            bisect_right(cells[True, residue], upper)
            for residue in range(9)
        )
        payment = odd_large_square_payment(upper)
        for counts in (one, three):
            for count in counts:
                if (
                    (count + payment) * ENVELOPE_DENOMINATOR
                    > ENVELOPE_NUMERATOR * lower
                ):
                    raise SystemExit(
                        "cell envelope failed: "
                        f"lower={lower} upper={upper} count={count} "
                        f"payment={payment}"
                    )
        records.append((lower, upper, one, three))
        lower = upper + 1
    return records


def generate(
    source: Path,
    output: Path,
    namespace: str,
    marker_chunk_size: int,
    projection_block_size: int,
    order_block_size: int,
    envelope_block_size: int,
) -> None:
    values = read_source_values(source)
    output.mkdir(parents=True, exist_ok=True)

    cells: dict[tuple[bool, int], list[int]] = {}
    for parity, mod_four in ((False, 1), (True, 3)):
        for residue in range(9):
            cells[parity, residue] = [
                value
                for value in values
                if value % 4 == mod_four and value % 9 == residue
            ]

    marker_modules: list[str] = []
    marker_chunks: dict[tuple[bool, int], list[tuple[str, int]]] = {}
    for parity, label in ((False, "One"), (True, "Three")):
        for residue in range(9):
            names: list[tuple[str, int]] = []
            cell_values = cells[parity, residue]
            for number, (start, stop) in enumerate(
                exact_blocks(len(cell_values), marker_chunk_size)
            ):
                stem = f"CellMarkerChunk{label}{residue}_{number:04d}"
                name = f"cellMarkerChunk{label}{residue}_{number:04d}"
                source_text = module_header(
                    "Erdos848.TailTruncatedDiagonalOddCellChecker",
                    namespace,
                )
                source_text += (
                    f"def {name} : NatValueTree :=\n  "
                    + nat_value_tree(cell_values[start:stop])
                    + f"\n\nend {namespace}\n"
                )
                write_if_changed(output / f"{stem}.lean", source_text)
                marker_modules.append(stem)
                names.append((name, stop - start))
            marker_chunks[parity, residue] = names
    clean_stale(
        output,
        "CellMarkerChunk*.lean",
        {f"{stem}.lean" for stem in marker_modules},
    )

    indexed_source = (
        f"import {SOURCE_NAMESPACE}.IndexedData\n"
        "import Erdos848.TailTruncatedDiagonalOddCellChecker\n"
        + "".join(
            f"import {namespace}.{stem}\n" for stem in marker_modules
        )
        + f"\nnamespace {namespace}\n\n"
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 0\n\n"
    )
    marker_defs: dict[tuple[bool, int], str] = {}
    for parity, label in ((False, "One"), (True, "Three")):
        for residue in range(9):
            marker_def = f"cellMarker{label}{residue}"
            marker_defs[parity, residue] = marker_def
            indexed_source += (
                f"def {marker_def} : IndexedMarkerData :=\n"
                f"  {{ limit := {EXPECTED_SOURCE_LIMIT}\n"
                "    values :=\n      "
                + named_value_tree(marker_chunks[parity, residue])
                + " }\n\n"
            )
    indexed_source += (
        "def modOneCellMarkers : Fin 9 → IndexedMarkerData :=\n"
        "  !["
        + ", ".join(marker_defs[False, residue] for residue in range(9))
        + "]\n\n"
        "def modThreeCellMarkers : Fin 9 → IndexedMarkerData :=\n"
        "  !["
        + ", ".join(marker_defs[True, residue] for residue in range(9))
        + "]\n\n"
        "def cellTargets (cell : OddModNineCell) : IndexedMarkerData :=\n"
        "  if cell.parity then modThreeCellMarkers cell.residue\n"
        "  else modOneCellMarkers cell.residue\n\n"
        f"end {namespace}\n"
    )
    write_if_changed(output / "IndexedData.lean", indexed_source)

    target_indices = {
        key: {value: index for index, value in enumerate(cell_values)}
        for key, cell_values in cells.items()
    }
    entries: list[tuple[bool, int, int] | None] = []
    for value in values:
        mod_four = value % 4
        if mod_four not in (1, 3):
            entries.append(None)
            continue
        parity = mod_four == 3
        residue = value % 9
        entries.append(
            (parity, residue, target_indices[parity, residue][value])
        )

    projection_modules: list[str] = []
    projection_theorems: list[str] = []
    for number, (start, stop) in enumerate(
        exact_blocks(len(entries), projection_block_size)
    ):
        stem = f"ProjectionBlock{number:04d}"
        theorem = f"oddCellProjection{number:04d}"
        tree = f"{theorem}Tree"
        source_text = module_header(f"{namespace}.IndexedData", namespace)
        source_text += (
            f"def {tree} : IndexedMarkerData.OddCellProjectionTree :=\n"
            f"  {odd_projection_tree(entries[start:stop])}\n\n"
            f"theorem {theorem}Check :\n"
            f"    {tree}.check {SOURCE_NAMESPACE}.indexedMarker "
            f"cellTargets {start} = true := by decide\n\n"
            f"theorem {theorem} :\n"
            "    IndexedMarkerData.OddCellProjectionTree.RangeProjected "
            f"{SOURCE_NAMESPACE}.indexedMarker cellTargets "
            f"{start} {stop} := by\n"
            f"  simpa [{tree}, "
            "IndexedMarkerData.OddCellProjectionTree.size] using\n"
            "    IndexedMarkerData.OddCellProjectionTree.range "
            f"{theorem}Check\n\n"
            f"end {namespace}\n"
        )
        write_if_changed(output / f"{stem}.lean", source_text)
        projection_modules.append(stem)
        projection_theorems.append(theorem)
    clean_stale(
        output,
        "ProjectionBlock*.lean",
        {f"{stem}.lean" for stem in projection_modules},
    )

    order_modules: list[str] = []
    order_theorems: dict[tuple[bool, int], list[str]] = {}
    order_number = 0
    for parity, label in ((False, "One"), (True, "Three")):
        for residue in range(9):
            cell_values = cells[parity, residue]
            theorems: list[str] = []
            for local_number, (start, stop) in enumerate(
                exact_blocks(len(cell_values) - 1, order_block_size)
            ):
                stem = f"OrderBlock{order_number:04d}"
                theorem = f"order{label}{residue}_{local_number:04d}"
                tree = f"{theorem}Tree"
                source_text = module_header(
                    f"{namespace}.IndexedData", namespace
                )
                source_text += (
                    f"def {tree} : IndexedMarkerData.AdjacentIndexTree :=\n"
                    f"  {adjacent_tree(stop - start)}\n\n"
                    f"theorem {theorem}Check :\n"
                    f"    {tree}.check {marker_defs[parity, residue]} "
                    f"{start} = true := by decide\n\n"
                    f"theorem {theorem} :\n"
                    "    IndexedMarkerData.AdjacentIndexTree.RangeOrdered "
                    f"{marker_defs[parity, residue]} {start} {stop + 1} := by\n"
                    f"  simpa [{tree}, "
                    "IndexedMarkerData.AdjacentIndexTree.size] using\n"
                    "    IndexedMarkerData.AdjacentIndexTree.range "
                    f"{theorem}Check\n\n"
                    f"end {namespace}\n"
                )
                write_if_changed(output / f"{stem}.lean", source_text)
                order_modules.append(stem)
                theorems.append(theorem)
                order_number += 1
            order_theorems[parity, residue] = theorems
    clean_stale(
        output,
        "OrderBlock*.lean",
        {f"{stem}.lean" for stem in order_modules},
    )

    projection_aggregate = (
        f"import {namespace}.IndexedData\n"
        + "".join(
            f"import {namespace}.{stem}\n" for stem in projection_modules
        )
        + f"\nnamespace {namespace}\n\n"
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 0\n\n"
        "theorem projectsOddCells :\n"
        f"    {SOURCE_NAMESPACE}.indexedMarker.ProjectsOddCells "
        "cellTargets := by\n"
        "  apply IndexedMarkerData.projectsOddCells_of_range\n"
        f"  have hsize : {SOURCE_NAMESPACE}.indexedMarker.values.size = "
        f"{len(values)} := by decide\n"
        "  rw [hsize]\n"
        "  exact "
        + append_named(
            projection_theorems,
            "IndexedMarkerData.oddCellProjectionRangeAppend",
        )
        + f"\n\nend {namespace}\n"
    )
    write_if_changed(
        output / "ProjectionAggregate.lean", projection_aggregate
    )

    order_aggregate = (
        f"import {namespace}.IndexedData\n"
        + "".join(f"import {namespace}.{stem}\n" for stem in order_modules)
        + f"\nnamespace {namespace}\n\n"
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 0\n\n"
    )
    for parity, label in ((False, "One"), (True, "Three")):
        for residue in range(9):
            marker_def = marker_defs[parity, residue]
            theorem = f"{marker_def}Ordered"
            count = len(cells[parity, residue])
            order_aggregate += (
                f"theorem {theorem} : {marker_def}.AdjacentOrdered := by\n"
                "  apply IndexedMarkerData.adjacentOrdered_of_range "
                f"(comparisonCount := {count - 1}) (by decide)\n"
                "  exact "
                + append_named(
                    order_theorems[parity, residue],
                    "IndexedMarkerData.adjacentRangeAppend",
                )
                + "\n\n"
            )
    order_aggregate += f"end {namespace}\n"
    write_if_changed(output / "OrderAggregate.lean", order_aggregate)

    core_source = (
        f"import {SOURCE_NAMESPACE}.Certificate\n"
        f"import {namespace}.ProjectionAggregate\n"
        f"import {namespace}.OrderAggregate\n\n"
        "import Erdos848.TailTenMillionCertificateTypes\n\n"
        f"namespace {namespace}\n\n"
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 0\n\n"
        "theorem sourceCertificateCutoff :\n"
        f"    {SOURCE_NAMESPACE}.certificate.cutoff = {CUTOFF} := rfl\n\n"
        "theorem cellTargetsOrdered (cell : OddModNineCell) :\n"
        "    (cellTargets cell).AdjacentOrdered := by\n"
        "  rcases cell with ⟨parity, residue⟩\n"
        "  cases parity\n"
        "  · fin_cases residue\n"
    )
    for residue in range(9):
        core_source += f"    · exact cellMarkerOne{residue}Ordered\n"
    core_source += "  · fin_cases residue\n"
    for residue in range(9):
        core_source += f"    · exact cellMarkerThree{residue}Ordered\n"
    core_source += (
        "\n#print axioms projectsOddCells\n"
        "#print axioms cellTargetsOrdered\n\n"
        f"end {namespace}\n"
    )
    write_if_changed(output / "CoreCertificate.lean", core_source)

    records = envelope_records(cells)
    envelope_modules: list[str] = []
    envelope_theorems: list[str] = []
    for module_number, record_start in enumerate(
        range(0, len(records), envelope_block_size)
    ):
        stem = f"EnvelopeBlock{module_number:04d}"
        source_text = module_header(
            f"{namespace}.CoreCertificate", namespace
        )
        for number, (lower, upper, one, three) in enumerate(
            records[record_start:record_start + envelope_block_size],
            start=record_start,
        ):
            theorem = f"cellEnvelope{number:04d}"
            one_name = f"{theorem}CountsOne"
            three_name = f"{theorem}CountsThree"
            envelope_theorems.append(theorem)
            source_text += (
                f"def {one_name} : Fin 9 → Nat := "
                f"![{', '.join(map(str, one))}]\n\n"
                f"def {three_name} : Fin 9 → Nat := "
                f"![{', '.join(map(str, three))}]\n\n"
                f"theorem {theorem} :\n"
                f"    TruncatedOddCellRatioRange {lower} {upper + 1} "
                "tenMillionDiagonalOneOddCell := by\n"
                "  intro N hLower hStop cell\n"
                f"  have hNUpper : N ≤ {upper} := by omega\n"
                "  have hbound : N + 1 ≤ 2_000_000_000 := by omega\n"
                "  rcases cell with ⟨parity, residue⟩\n"
                "  cases parity\n"
                "  · have hcutoff :\n"
                "        (cellTargets { parity := false, residue := residue }).Cutoff\n"
                f"          {upper} ({one_name} residue) := by\n"
                "      fin_cases residue <;> decide\n"
                "    apply tailDiagonalCell_ratio_le_truncatedMarker\n"
                f"      {SOURCE_NAMESPACE}.certificate cellTargets "
                "projectsOddCells\n"
                "      (cellTargetsOrdered "
                "{ parity := false, residue := residue })\n"
                "      hcutoff\n"
                f"      (by change {upper} ≤ {EXPECTED_SOURCE_LIMIT}; omega)\n"
                f"      (by norm_num) hLower hNUpper hbound\n"
                "    rw [sourceCertificateCutoff]\n"
                "    fin_cases residue <;>\n"
                "      norm_num [truncatedOddLargeSquarePayment,\n"
                "        tenMillionDiagonalOneOddCell]\n"
                "  · have hcutoff :\n"
                "        (cellTargets { parity := true, residue := residue }).Cutoff\n"
                f"          {upper} ({three_name} residue) := by\n"
                "      fin_cases residue <;> decide\n"
                "    apply tailDiagonalCell_ratio_le_truncatedMarker\n"
                f"      {SOURCE_NAMESPACE}.certificate cellTargets "
                "projectsOddCells\n"
                "      (cellTargetsOrdered "
                "{ parity := true, residue := residue })\n"
                "      hcutoff\n"
                f"      (by change {upper} ≤ {EXPECTED_SOURCE_LIMIT}; omega)\n"
                f"      (by norm_num) hLower hNUpper hbound\n"
                "    rw [sourceCertificateCutoff]\n"
                "    fin_cases residue <;>\n"
                "      norm_num [truncatedOddLargeSquarePayment,\n"
                "        tenMillionDiagonalOneOddCell]\n\n"
            )
        source_text += f"end {namespace}\n"
        write_if_changed(output / f"{stem}.lean", source_text)
        envelope_modules.append(stem)
    clean_stale(
        output,
        "EnvelopeBlock*.lean",
        {f"{stem}.lean" for stem in envelope_modules},
    )

    envelope_aggregate = (
        "".join(f"import {namespace}.{stem}\n" for stem in envelope_modules)
        + f"\nnamespace {namespace}\n\n"
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 0\n\n"
        "theorem tenMillionOddCellEnvelope :\n"
        f"    TruncatedOddCellRatioRange {LOWER} {STOP} "
        "tenMillionDiagonalOneOddCell :=\n"
        "  "
        + append_named(
            envelope_theorems, "truncatedOddCellRatioRangeAppend"
        )
        + "\n\n#print axioms tenMillionOddCellEnvelope\n\n"
        f"end {namespace}\n"
    )
    write_if_changed(
        output / "EnvelopeAggregate.lean", envelope_aggregate
    )

    certificate_source = (
        f"import {namespace}.EnvelopeAggregate\n"
        "import Erdos848.TailTenMillionPeriodicDiagonal\n\n"
        f"namespace {namespace}\n\n"
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 0\n\n"
        "theorem tenMillionDiagonalOneOddCellCertificate_kernel :\n"
        "    TenMillionDiagonalOneOddCellCertificate := by\n"
        "  intro N hLower hUpper oddClass hodd modNineCell hcell\n"
        "  let residue : Fin 9 := ⟨modNineCell, hcell⟩\n"
        "  rcases hodd with rfl | rfl\n"
        "  · simpa [residue,\n"
        "      tailDiagonalCell_eq_tenMillionDiagonalOneOddCellSet] using\n"
        "      tenMillionOddCellEnvelope N hLower hUpper\n"
        "        { parity := false, residue := residue }\n"
        "  · simpa [residue,\n"
        "      tailDiagonalCell_eq_tenMillionDiagonalOneOddCellSet] using\n"
        "      tenMillionOddCellEnvelope N hLower hUpper\n"
        "        { parity := true, residue := residue }\n\n"
        "#print axioms tenMillionDiagonalOneOddCellCertificate_kernel\n\n"
        f"end {namespace}\n"
    )
    write_if_changed(output / "Certificate.lean", certificate_source)

    print(
        "PASS",
        f"source_values={len(values)}",
        f"cell_values={sum(map(len, cells.values()))}",
        f"marker_modules={len(marker_modules)}",
        f"projection_modules={len(projection_modules)}",
        f"order_modules={len(order_modules)}",
        f"envelope_rows={len(records)}",
        f"envelope_modules={len(envelope_modules)}",
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("source", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--marker-chunk-size", type=int, default=8_192)
    parser.add_argument("--projection-block-size", type=int, default=8_192)
    parser.add_argument("--order-block-size", type=int, default=8_192)
    parser.add_argument("--envelope-block-size", type=int, default=16)
    args = parser.parse_args()
    if not args.namespace.startswith("Erdos848."):
        raise SystemExit("--namespace must begin with Erdos848.")
    for name, value in (
        ("marker chunk size", args.marker_chunk_size),
        ("projection block size", args.projection_block_size),
        ("order block size", args.order_block_size),
        ("envelope block size", args.envelope_block_size),
    ):
        if value < 1:
            raise SystemExit(f"{name} must be positive")
    generate(
        args.source,
        args.output,
        args.namespace,
        args.marker_chunk_size,
        args.projection_block_size,
        args.order_block_size,
        args.envelope_block_size,
    )


if __name__ == "__main__":
    main()
