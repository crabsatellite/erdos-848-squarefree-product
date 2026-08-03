#!/usr/bin/env python3
"""Fail closed if publication-critical paper numbers drift from Lean sources."""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_MANIFEST = ROOT / "paper" / "numeric-claims.json"
ARITHMETIC_GATE = ROOT / "scripts" / "verify_four_range_paper_arithmetic.py"


def fail(message: str) -> None:
    raise SystemExit(f"paper/Lean numeric gate failed: {message}")


def read_text(path: Path) -> str:
    if not path.is_file():
        fail(f"missing file: {path.relative_to(ROOT)}")
    return path.read_text(encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("manifest", nargs="?", default=str(DEFAULT_MANIFEST))
    parser.add_argument("--quiet", action="store_true")
    parser.add_argument(
        "--skip-arithmetic",
        action="store_true",
        help="check only paper/Lean source bindings",
    )
    args = parser.parse_args()

    manifest_path = Path(args.manifest)
    if not manifest_path.is_absolute():
        manifest_path = ROOT / manifest_path
    payload = json.loads(read_text(manifest_path))
    if payload.get("schema_version") != 2:
        fail("unsupported manifest schema")

    manuscript = ROOT / payload["manuscript"]
    manuscript_text = read_text(manuscript)
    claims = payload.get("claims")
    if not isinstance(claims, list) or not claims:
        fail("manifest has no claims")

    seen: set[str] = set()
    checked = 0
    for claim in claims:
        claim_id = claim.get("id")
        if not isinstance(claim_id, str) or not claim_id or claim_id in seen:
            fail(f"invalid or duplicate claim id: {claim_id!r}")
        seen.add(claim_id)

        paper_exact = claim.get("paper_exact")
        if isinstance(paper_exact, str):
            paper_markers = [paper_exact]
        elif (
            isinstance(paper_exact, list)
            and paper_exact
            and all(isinstance(item, str) and item for item in paper_exact)
        ):
            paper_markers = paper_exact
        else:
            fail(f"{claim_id}: manuscript markers are malformed")
        for marker in paper_markers:
            if marker not in manuscript_text:
                fail(f"{claim_id}: manuscript marker {marker!r} is absent")

        lean_checks = claim.get("lean")
        if not isinstance(lean_checks, list) or not lean_checks:
            fail(f"{claim_id}: no Lean source checks")
        for item in lean_checks:
            source = ROOT / item["path"]
            exact = item["exact"]
            if exact not in read_text(source):
                fail(
                    f"{claim_id}: Lean marker {exact!r} is absent from "
                    f"{source.relative_to(ROOT)}"
                )
        checked += 1

    if not args.skip_arithmetic:
        completed = subprocess.run(
            [sys.executable, "-B", str(ARITHMETIC_GATE)],
            cwd=ROOT,
            check=False,
        )
        if completed.returncode != 0:
            fail("exact four-range arithmetic gate failed")

    if not args.quiet:
        print(
            f"paper/Lean numeric gate passed: {checked} bound claims; "
            f"arithmetic={'skipped' if args.skip_arithmetic else 'passed'}"
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
