#!/usr/bin/env python3
"""Build the offline reference-evidence manifest for the paper."""

from __future__ import annotations

import hashlib
import json
import re
from pathlib import Path


BASE = Path(__file__).resolve().parent
PAPER = BASE.parent
BIB = PAPER / "references.bib"

SOURCES = {
    "Erdos848Original": (
        "journal-page.meta.json",
        "Some of my favourite problems in various branches of combinatorics",
    ),
    "Sawhney848": ("preprint.meta.json", "MEHTAAB SAWHNEY"),
    "Sothanaphan848": ("preprint.meta.json", "An Explicit Threshold"),
    "PracharSquarefreeAP": (
        "crossref-search.meta.json",
        "quadratfreie Zahl einer arithmetischen Reihe",
    ),
    "HooleySquarefreeAP": (
        "crossref.meta.json",
        "Square‐Free Numbers in Arithmetic Progressions",
    ),
    "RosserSchoenfeld": (
        "crossref.meta.json",
        "Approximate formulas for some functions of prime numbers",
    ),
    "DusartPrimes": (
        "arxiv.meta.json",
        "Estimates of Some Functions Over Primes without R.H.",
    ),
    "HelfgottPlatt": (
        "crossref.meta.json",
        "Numerical Verification of the Ternary Goldbach Conjecture",
    ),
    "OliveiraSilvaHerzogPardi": (
        "crossref.meta.json",
        "Empirical verification of the even Goldbach conjecture",
    ),
    "GonthierOddOrder": (
        "crossref.meta.json",
        "A Machine-Checked Proof of the Odd Order Theorem",
    ),
    "HalesFlyspeck": (
        "crossref.meta.json",
        "A FORMAL PROOF OF THE KEPLER CONJECTURE",
    ),
    "Lean4": (
        "crossref.meta.json",
        "The Lean 4 Theorem Prover and Programming Language",
    ),
    "Mathlib": (
        "crossref.meta.json",
        "The lean mathematical library",
    ),
}

BIB_FIELD_ORDER = (
    "author",
    "title",
    "journal",
    "booktitle",
    "series",
    "volume",
    "number",
    "pages",
    "publisher",
    "year",
    "month",
    "note",
    "eprint",
    "archiveprefix",
    "primaryclass",
    "doi",
    "url",
)


def normalize_bib_value(value: str) -> str:
    return re.sub(r"\s+", " ", value.strip())


def parse_bib_entry_fields(text: str, key: str) -> dict[str, str]:
    match = re.search(r"@\w+\s*\{\s*" + re.escape(key) + r"\s*,", text)
    if not match:
        return {}
    start = match.end()
    depth = 1
    idx = start
    while idx < len(text) and depth:
        if text[idx] == "{":
            depth += 1
        elif text[idx] == "}":
            depth -= 1
        idx += 1
    body = text[start : idx - 1]

    fields: dict[str, str] = {}
    pos = 0
    while pos < len(body):
        field_match = re.search(r"([A-Za-z][A-Za-z0-9_-]*)\s*=", body[pos:])
        if not field_match:
            break
        name = field_match.group(1).lower()
        value_start = pos + field_match.end()
        while value_start < len(body) and body[value_start].isspace():
            value_start += 1
        if value_start >= len(body):
            break

        if body[value_start] == "{":
            level = 1
            value_end = value_start + 1
            while value_end < len(body) and level:
                if body[value_end] == "{":
                    level += 1
                elif body[value_end] == "}":
                    level -= 1
                value_end += 1
            value = body[value_start + 1 : value_end - 1]
            pos = value_end
        elif body[value_start] == '"':
            value_end = value_start + 1
            escaped = False
            while value_end < len(body):
                char = body[value_end]
                if char == '"' and not escaped:
                    break
                escaped = char == "\\" and not escaped
                if char != "\\":
                    escaped = False
                value_end += 1
            value = body[value_start + 1 : value_end]
            pos = value_end + 1
        else:
            value_end = value_start
            while value_end < len(body) and body[value_end] not in ",\n":
                value_end += 1
            value = body[value_start:value_end]
            pos = value_end
        fields[name] = normalize_bib_value(value)
    return fields


def find_anchor_line(path: Path, phrase: str) -> tuple[int, str]:
    lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
    needle = phrase.casefold()
    for line_number, line in enumerate(lines, 1):
        if needle in line.casefold():
            return line_number, line
    raise SystemExit(f"anchor not found in {path}: {phrase!r}")


def build_meta_checks(key_dir: Path) -> list[dict]:
    checks: list[dict] = []
    fields = ("artifact_type", "final_url", "status", "sha256_raw_bytes")
    for meta_path in sorted(key_dir.glob("*.meta.json")):
        meta = json.loads(meta_path.read_text(encoding="utf-8"))
        stem = re.sub(
            r"[^A-Za-z0-9]+",
            "_",
            meta_path.name.removesuffix(".meta.json"),
        ).strip("_")
        for field in fields:
            if field in meta:
                checks.append(
                    {
                        "id": f"meta_{stem}_{field}",
                        "file": f"{key_dir.name}/{meta_path.name}",
                        "field": field,
                        "exact": str(meta[field]),
                    }
                )
    return checks


def build_entry(
    key: str,
    primary_meta_name: str,
    anchor: str,
    bib_fields: dict[str, str],
) -> dict:
    key_dir = BASE / key
    meta_path = key_dir / primary_meta_name
    if not meta_path.is_file():
        raise SystemExit(f"[{key}] primary metadata missing: {primary_meta_name}")
    meta = json.loads(meta_path.read_text(encoding="utf-8"))
    text_path = key_dir / meta["text_file"]
    line_number, line = find_anchor_line(text_path, anchor)

    checks = [
        {
            "id": "source_anchor",
            "file": f"{key}/{text_path.name}",
            "line": line_number,
            "exact": line,
            "normalized_contains": anchor,
        }
    ]
    lines = text_path.read_text(encoding="utf-8", errors="replace").splitlines()
    for index, candidate in enumerate(lines, 1):
        if candidate.startswith("$.message.DOI = "):
            checks.append(
                {
                    "id": "source_doi",
                    "file": f"{key}/{text_path.name}",
                    "line": index,
                    "exact": candidate,
                }
            )
            break

    bib_checks = [
        {"id": f"bib_{field}", "field": field, "exact": bib_fields[field]}
        for field in BIB_FIELD_ORDER
        if field in bib_fields
    ]
    return {
        "key": key,
        "checks": checks,
        "meta_checks": build_meta_checks(key_dir),
        "bib_checks": bib_checks,
    }


def main() -> int:
    bib_text = BIB.read_text(encoding="utf-8")
    entries = []
    for key, (meta_name, anchor) in SOURCES.items():
        fields = parse_bib_entry_fields(bib_text, key)
        if not fields:
            raise SystemExit(f"BibTeX entry not found: {key}")
        entries.append(build_entry(key, meta_name, anchor, fields))

    artifact_records = []
    for meta_path in sorted(BASE.glob("*/*.meta.json")):
        meta = json.loads(meta_path.read_text(encoding="utf-8"))
        artifact = meta_path.parent / meta["artifact_file"]
        payload = artifact.read_bytes()
        artifact_records.append(
            {
                "path": artifact.relative_to(BASE).as_posix(),
                "bytes": len(payload),
                "sha256": hashlib.sha256(payload).hexdigest(),
            }
        )
    artifact_manifest_bytes = (
        json.dumps(
            {"schema_version": 1, "artifacts": artifact_records},
            indent=2,
            ensure_ascii=False,
        )
        + "\n"
    ).encode("utf-8")
    artifact_manifest_name = "artifact-sha256.json"
    (BASE / artifact_manifest_name).write_bytes(artifact_manifest_bytes)

    manifest = {
        "schema_version": 1,
        "bib_file": "../references.bib",
        "artifact_manifest": artifact_manifest_name,
        "artifact_manifest_sha256": hashlib.sha256(
            artifact_manifest_bytes
        ).hexdigest(),
        "entries": entries,
    }
    (BASE / "manifest.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    print(
        f"wrote manifest.json with {len(entries)} entries and "
        f"{len(artifact_records)} cached artifacts"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
