#!/usr/bin/env python3
"""Profile a compact owner-prime cover for the 10M--200M diagonal grid.

The old certificate materializes the exact sorted union of all short-prime
progressions and then materializes its 477 atom projections a second time.
For an upper bound that is unnecessary.  Fix an initial list of owner primes:

* an event hit by an owner prime is charged only to the first such owner;
* an event hit by no owner prime may be charged to every witnessing
  non-owner progression.

This remains a cover, but it needs only progression-level certificates.  The
script is an untrusted profiler: it checks whether the resulting atom counts
fit every existing paper-grid envelope.  A Lean checker must still certify
the emitted progression counts before the route is used in the theorem.
"""

from __future__ import annotations

import argparse
import bisect
import importlib.util
import json
import sys
import time
from pathlib import Path
from types import ModuleType


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"
ROOT_SOURCE = LEAN / "Erdos848" / "GeneratedTailDiagonalCoverage"


def load_module(name: str, path: Path) -> ModuleType:
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module


def grid_rows(grid: ModuleType, permille: int) -> list[tuple[object, int, int]]:
    rows: list[tuple[object, int, int]] = []
    for regime in grid.regimes():
        lower = regime.lower
        while lower < regime.stop:
            upper = min(
                regime.stop - 1,
                lower * (1000 + permille) // 1000,
            )
            rows.append((regime, lower, upper))
            lower = upper + 1
    return rows


def profile(
    owner_count: int,
    limit: int,
    cutoff: int,
    permille: int,
) -> dict[str, object]:
    diagonal = load_module(
        "_compact_owner_diagonal",
        ROOT / "scripts" / "generate_truncated_diagonal_certificate.py",
    )
    atoms_module = load_module(
        "generate_truncated_diagonal_atom_certificate",
        ROOT / "scripts" / "generate_truncated_diagonal_atom_certificate.py",
    )
    grid = load_module(
        "_compact_owner_grid",
        ROOT / "scripts" / "generate_paper_diagonal_grid_certificate.py",
    )

    roots, _chunk_sizes = diagonal.read_roots(ROOT_SOURCE)
    owner_records = [record for record in roots if record.prime != 5][
        :owner_count
    ]
    owners = [
        (
            record.prime,
            record.prime * record.prime,
            (record.root1, record.root2),
        )
        for record in owner_records
    ]
    atoms = atoms_module.all_atoms()
    atom_index = {atom: index for index, atom in enumerate(atoms)}
    rows = grid_rows(grid, permille)
    uppers = [upper for _regime, _lower, upper in rows]
    deltas = [[0] * len(atoms) for _row in rows]

    active_records = 0
    active_progressions = 0
    charged_events = 0
    started = time.monotonic()
    for record in roots:
        if record.prime == 5:
            continue
        modulus = record.prime * record.prime
        record_active = False
        for residue in (record.root1, record.root2):
            if residue > limit:
                continue
            record_active = True
            active_progressions += 1
            for value in range(residue, limit + 1, modulus):
                if value % 25 in (7, 18):
                    continue
                first_owner = 0
                for prime, owner_modulus, owner_roots in owners:
                    reduced = value % owner_modulus
                    if reduced == owner_roots[0] or reduced == owner_roots[1]:
                        first_owner = prime
                        break
                if first_owner != 0 and first_owner != record.prime:
                    continue
                row_index = bisect.bisect_left(uppers, value)
                deltas[row_index][atom_index[atoms_module.atom_of(value)]] += 1
                charged_events += 1
        if record_active:
            active_records += 1

    current = [0] * len(atoms)
    failure_count = 0
    failures_by_kind: dict[str, int] = {}
    worst: dict[str, object] | None = None
    for row_index, (regime, lower, upper) in enumerate(rows):
        current = [
            old_count + new_count
            for old_count, new_count in zip(current, deltas[row_index])
        ]
        for selection in grid.selections():
            selected = sum(
                current[index]
                for index, atom in enumerate(atoms)
                if grid.accepts(selection, atom)
            )
            payment = grid.large_square_payment(
                cutoff, upper, grid.is_odd(selection)
            )
            margin = (
                regime.envelope[selection.kind] * lower
                - (selected + payment) * 1_000_000_000
            )
            record = {
                "margin": margin,
                "row": row_index,
                "regime": regime.lean_name,
                "lower": lower,
                "upper": upper,
                "selection": {
                    "kind": selection.kind,
                    "first": selection.first,
                    "second": selection.second,
                },
                "selected": selected,
                "large_square_payment": payment,
            }
            if worst is None or margin < int(worst["margin"]):
                worst = record
            if margin < 0:
                failure_count += 1
                failures_by_kind[selection.kind] = (
                    failures_by_kind.get(selection.kind, 0) + 1
                )

    return {
        "schema": 1,
        "owner_count": len(owners),
        "owner_first": owners[0][0] if owners else None,
        "owner_last": owners[-1][0] if owners else None,
        "limit": limit,
        "cutoff": cutoff,
        "permille": permille,
        "root_records": len(roots),
        "active_root_records": active_records,
        "active_progressions": active_progressions,
        "charged_events": charged_events,
        "grid_rows": len(rows),
        "atom_count": len(atoms),
        "failure_count": failure_count,
        "failures_by_kind": failures_by_kind,
        "worst_margin": worst,
        "elapsed_seconds": round(time.monotonic() - started, 3),
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--owner-count", type=int, default=128)
    parser.add_argument("--limit", type=int, default=199_999_999)
    parser.add_argument("--cutoff", type=int, default=9_999_999)
    parser.add_argument("--permille", type=int, default=3)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    if args.owner_count <= 0:
        raise SystemExit("--owner-count must be positive")
    result = profile(
        args.owner_count,
        args.limit,
        args.cutoff,
        args.permille,
    )
    rendered = json.dumps(result, indent=2, sort_keys=True) + "\n"
    if args.output is not None:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered, encoding="utf-8", newline="\n")
    print(rendered, end="")
    if result["failure_count"] != 0:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
