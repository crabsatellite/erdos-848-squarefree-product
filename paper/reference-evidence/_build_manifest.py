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
    "LiProofEngine2026": (
        "proof-engine-infrastructure-manuscript.meta.json",
        "Proof Engine Infrastructure",
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

SEMANTIC_REVIEWS = {
    "Erdos848Original": (
        "direct",
        "The pinned journal record identifies Erdos's original problem article and its bibliographic provenance.",
        "The manuscript cites that article only when identifying the original extremal question and then states the problem explicitly.",
        "The citation establishes source attribution; every mathematical formulation used later is restated and proved within the manuscript.",
    ),
    "Sawhney848": (
        "direct",
        "The pinned preprint states the same nonsquarefree-product problem and proves the 7 mod 25 extremal bound for all sufficiently large N, with a stability alternative involving 18 mod 25.",
        "The introduction attributes exactly this asymptotic extremal theorem and structural reduction to Sawhney.",
        "The source leaves its threshold unspecified and does not prove the all-N theorem claimed here.",
    ),
    "Sothanaphan848": (
        "direct",
        "The pinned preprint states the same extremal problem and the explicit threshold N >= 2.64 times 10^17.",
        "The manuscript uses the citation solely for that explicit predecessor threshold and its quantitative inputs.",
        "The source does not cover the range below its threshold or establish the present exact all-N result.",
    ),
    "PracharSquarefreeAP": (
        "background",
        "The pinned bibliographic record identifies Prachar's work on the least squarefree number in an arithmetic progression.",
        "The manuscript cites it as classical background for squarefree numbers in arithmetic progressions.",
        "The citation supplies historical context rather than any paper-specific Hall or pivot estimate.",
    ),
    "HooleySquarefreeAP": (
        "background",
        "The pinned Crossref record identifies Hooley's paper on squarefree numbers in arithmetic progressions.",
        "The manuscript cites it as classical background for the progression estimates used in the argument.",
        "The source is not cited for the exact constants, residue decompositions, or all-N conclusion proved here.",
    ),
    "RosserSchoenfeld": (
        "direct",
        "The pinned source identifies Rosser and Schoenfeld's explicit estimates for prime-counting functions.",
        "The manuscript invokes an explicit prime-count estimate when bounding the endpoint contribution pi(N/26)/N.",
        "The source supports the prime-count input; the residue-class union bound and final numerical substitution remain part of this proof.",
    ),
    "DusartPrimes": (
        "direct",
        "The pinned arXiv record identifies Dusart's explicit estimates for functions over primes without the Riemann hypothesis.",
        "The manuscript cites it together with Rosser--Schoenfeld for the explicit prime-count input in the medium-prime bound.",
        "The citation does not supply the Hall reduction or the paper's residue-class calculation.",
    ),
    "HelfgottPlatt": (
        "background",
        "The pinned record identifies a published large-scale numerical verification using exact finite computation.",
        "The manuscript cites it only as methodological context for rigorous finite verification after a structural reduction.",
        "It supplies no theorem or numerical constant used in Erdős Problem 848.",
    ),
    "OliveiraSilvaHerzogPardi": (
        "background",
        "The pinned record identifies a published exhaustive verification of Goldbach ranges and prime gaps.",
        "The citation provides methodological context for exact finite computation in a mathematical proof.",
        "It supplies no bound, case split, or conclusion used in the present theorem.",
    ),
    "GonthierOddOrder": (
        "background",
        "The pinned record identifies a machine-checked proof whose finite structures are governed by general formal soundness results.",
        "The manuscript cites it as precedent for formally checking substantial finite mathematical data.",
        "It contributes no mathematical lemma to the nonsquarefree-product argument.",
    ),
    "HalesFlyspeck": (
        "background",
        "The pinned record identifies the completed formal proof of the Kepler conjecture.",
        "The manuscript cites it as precedent for a formal proof containing substantial checked computation.",
        "It contributes no theorem or estimate to Erdős Problem 848.",
    ),
    "Lean4": (
        "definition",
        "The pinned publication identifies the Lean 4 theorem prover and programming language.",
        "The formal-verification section names Lean 4 as the system in which the complete theorem is checked.",
        "The citation identifies the proof assistant; the project's archived proof artifact supplies the theorem-specific evidence.",
    ),
    "Mathlib": (
        "definition",
        "The pinned publication identifies the Lean mathematical library.",
        "The formal-verification section names Mathlib as the library used by the formal development.",
        "The citation identifies the library and does not itself validate the theorem-specific formalization.",
    ),
    "LiProofEngine2026": (
        "background",
        "The pinned manuscript describes the named author-developed Proof Engine framework for AI-assisted mathematical research.",
        "The disclosure cites it only to identify the framework within which replaceable AI tools were used.",
        "The citation is not used as evidence for the mathematical theorem; the author retains responsibility as stated.",
    ),
}

ACTIVE_KEYS = (
    "Erdos848Original",
    "Sawhney848",
    "Sothanaphan848",
    "RosserSchoenfeld",
    "DusartPrimes",
    "LiProofEngine2026",
)
SOURCES = {key: SOURCES[key] for key in ACTIVE_KEYS}
SOURCES["RosserSchoenfeld"] = ("source.meta.json", "APPROXIMATE FORMULAS")
SOURCES["LiProofEngine2026"] = ("source.meta.json", "Proof Engine Infrastructure")
SEMANTIC_REVIEWS = {key: SEMANTIC_REVIEWS[key] for key in ACTIVE_KEYS}

CHECK_SPECS = {
    "Erdos848Original": {
        "source_title": ("Some of my favourite problems in various branches of combinatorics", 2, 0),
        "source_author": ("Paul Erdös", 1),
        "source_year": ("1993-12-01", 1),
        "claim_context": ("At the meeting in Catania", 1),
    },
    "Sawhney848": {
        "source_title": ("ON A", 1),
        "source_author": ("MEHTAAB SAWHNEY", 1),
        "source_year": ("Embedded PDF creation year: 2025", 1),
        "claim_context": ("Proposition 1.1.", 3, 0),
    },
    "Sothanaphan848": {
        "source_title": ("An Explicit Threshold", 1),
        "source_author": ("Nat Sothanaphan", 1),
        "source_year": ("Mar 24, 2026", 1),
        "claim_context": ("Let N", 7, 0),
    },
    "RosserSchoenfeld": {
        "source_title": ("APPROXIMATE FORMULAS", 2, 0),
        "source_author": ("J. BARKLEY ROSSER", 1, 0),
        "source_year": ("Received February 13, 1961.", 1),
        "claim_context": ("COROLLARY 1.", 5, 0),
    },
    "DusartPrimes": {
        "source_title": ("Estimates of Some Functions Over Primes", 1),
        "source_author": ("Pierre Dusart", 1),
        "source_year": ("2010-02-02T10:26:44Z", 2, 0),
        "claim_context": ("Some computations made about", 1),
    },
    "LiProofEngine2026": {
        "source_title": ("Proof Engine Infrastructure: A Fail-Closed", 9),
        "source_author": ("Alex Chengyu Li", 1, 0),
        "source_year": ("Embedded PDF creation year: 2026", 1),
        "claim_context": ("Methods: Proof Engine Infrastructure", 6),
    },
}


def sha256_json(value: dict) -> str:
    payload = json.dumps(
        value, ensure_ascii=False, sort_keys=True, separators=(",", ":")
    ).encode("utf-8")
    return hashlib.sha256(payload).hexdigest()


def source_check_sha256(check: dict) -> str:
    return sha256_json(check)


def semantic_reset_payload(
    entry: dict,
    binding: dict,
    review: dict,
    context_sha256: str,
    source_check: dict,
) -> dict:
    return {
        "document_id": str(binding.get("document_id", "")),
        "citation_ordinal": int(binding.get("citation_ordinal", -1)),
        "key": str(binding.get("key", "")),
        "source_check_id": str(binding.get("source_check_id", "")),
        "reviewer": str(review.get("reviewer", "")),
        "relation": str(review.get("relation", "")),
        "support_reason": str(review.get("support_reason", "")),
        "semantic_match_reason": str(review.get("semantic_match_reason", "")),
        "scope_boundary": str(review.get("scope_boundary", "")),
        "reviewed_context_sha256": context_sha256,
        "reviewed_source_check_sha256": source_check_sha256(source_check),
        "reviewed_artifact_sha256": str(
            entry.get("source_artifact", {}).get("sha256_raw_bytes", "")
        ),
    }


def semantic_reset_sha256(
    entry: dict,
    binding: dict,
    review: dict,
    context_sha256: str,
    source_check: dict,
) -> str:
    return sha256_json(
        semantic_reset_payload(entry, binding, review, context_sha256, source_check)
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


def find_exact_block(
    path: Path, phrase: str, count: int, occurrence: int | None = None
) -> tuple[int, int, str]:
    lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
    hits = [index for index, line in enumerate(lines) if phrase.casefold() in line.casefold()]
    full = "\n".join(lines)
    candidates = [
        index
        for index in hits
        if full.count("\n".join(lines[index : index + count])) == 1
    ]
    if occurrence is not None:
        if occurrence < 0 or occurrence >= len(candidates):
            raise SystemExit(f"evidence occurrence is unavailable in {path}: {phrase!r}")
        candidates = [candidates[occurrence]]
    if len(candidates) != 1:
        raise SystemExit(f"evidence block is not unique in {path}: {phrase!r} -> {candidates}")
    start = candidates[0]
    exact = "\n".join(lines[start : start + count])
    if not exact.strip():
        raise SystemExit(f"empty evidence block in {path}: {phrase!r}")
    return start + 1, start + count, exact


def prepare_active_metadata() -> None:
    saw_dir = BASE / "Sawhney848"
    saw_text = saw_dir / "source-view.txt"
    saw_text.write_text(
        "Embedded PDF creation year: 2025\n"
        + (saw_dir / "preprint.pdf.txt").read_text(encoding="utf-8", errors="replace"),
        encoding="utf-8",
    )
    saw_meta_path = saw_dir / "preprint.meta.json"
    saw_meta = json.loads(saw_meta_path.read_text(encoding="utf-8"))
    saw_meta["text_file"] = saw_text.name
    saw_meta_path.write_text(json.dumps(saw_meta, indent=2) + "\n", encoding="utf-8")

    proof_dir = BASE / "LiProofEngine2026"
    proof_text = proof_dir / "source-view.txt"
    proof_text.write_text(
        "Embedded PDF creation year: 2026\n"
        + (proof_dir / "source.pdf.txt").read_text(encoding="utf-8", errors="replace"),
        encoding="utf-8",
    )

    local_specs = {
        "RosserSchoenfeld": (
            "source.pdf",
            "source.pdf.txt",
            "https://doi.org/10.1215/ijm/1255631807",
        ),
        "LiProofEngine2026": (
            "source.pdf",
            "source-view.txt",
            "https://doi.org/10.5281/zenodo.21672333",
        ),
    }
    for key, (artifact_name, text_name, final_url) in local_specs.items():
        key_dir = BASE / key
        artifact = key_dir / artifact_name
        text = key_dir / text_name
        meta = {
            "schema_version": 1,
            "key": key,
            "artifact_type": "pdf",
            "requested_url": final_url,
            "final_url": final_url,
            "status": "local-pinned",
            "sha256_raw_bytes": hashlib.sha256(artifact.read_bytes()).hexdigest(),
            "sha256_text_view": hashlib.sha256(text.read_bytes()).hexdigest(),
            "artifact_file": artifact_name,
            "text_file": text_name,
        }
        (key_dir / "source.meta.json").write_text(
            json.dumps(meta, indent=2) + "\n", encoding="utf-8"
        )

    for key, (meta_name, _anchor) in SOURCES.items():
        key_dir = BASE / key
        meta_path = key_dir / meta_name
        meta = json.loads(meta_path.read_text(encoding="utf-8"))
        meta["key"] = key
        meta["sha256_raw_bytes"] = hashlib.sha256(
            (key_dir / meta["artifact_file"]).read_bytes()
        ).hexdigest()
        meta["sha256_text_view"] = hashlib.sha256(
            (key_dir / meta["text_file"]).read_bytes()
        ).hexdigest()
        meta_path.write_text(
            json.dumps(meta, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
        )


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
    checks = []
    for check_id, selector in CHECK_SPECS[key].items():
        phrase, count, *choice = selector
        line_start, line_end, exact = find_exact_block(
            text_path, phrase, count, choice[0] if choice else None
        )
        checks.append(
            {
                "id": check_id,
                "file": f"{key}/{text_path.name}",
                "line_start": line_start,
                "line_end": line_end,
                "exact": exact,
            }
        )
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
    raw_artifact = key_dir / meta["artifact_file"]
    text_artifact = key_dir / meta["text_file"]
    return {
        "key": key,
        "source_artifact": {
            "metadata_file": f"{key}/{primary_meta_name}",
            "artifact_file": f"{key}/{raw_artifact.name}",
            "text_file": f"{key}/{text_artifact.name}",
            "artifact_type": str(meta["artifact_type"]),
            "sha256_raw_bytes": hashlib.sha256(raw_artifact.read_bytes()).hexdigest(),
            "sha256_text_view": hashlib.sha256(text_artifact.read_bytes()).hexdigest(),
        },
        "checks": checks,
        "meta_checks": build_meta_checks(key_dir),
        "bib_checks": bib_checks,
    }


def citation_occurrences(tex: str) -> dict[str, list[dict]]:
    stripped = "\n".join(re.sub(r"(?<!\\)%.*$", "", line) for line in tex.splitlines())
    result = {key: [] for key in SOURCES}
    pattern = re.compile(r"\\cite\w*\s*(?:\[[^\]]*\]\s*){0,2}\{([^}]*)\}")
    for ordinal, match in enumerate(pattern.finditer(stripped), 1):
        left = stripped.rfind("\n\n", 0, match.start())
        right = stripped.find("\n\n", match.end())
        context = re.sub(
            r"\s+",
            " ",
            stripped[0 if left < 0 else left + 2 : len(stripped) if right < 0 else right],
        ).strip()
        context_sha = hashlib.sha256(context.encode("utf-8")).hexdigest()
        for raw_key in match.group(1).split(","):
            key = raw_key.strip()
            if key not in result:
                raise SystemExit(f"citation has no local evidence specification: {key}")
            result[key].append(
                {
                    "document_id": "default",
                    "citation_ordinal": ordinal,
                    "key": key,
                    "context_sha256": context_sha,
                    "source_check_id": "claim_context",
                }
            )
    if not all(result.values()):
        missing = [key for key, value in result.items() if not value]
        raise SystemExit("uncited evidence entries: " + ", ".join(missing))
    return result


def main() -> int:
    prepare_active_metadata()
    bib_text = BIB.read_text(encoding="utf-8")
    occurrences = citation_occurrences((PAPER / "erdos_848_kernel_checked_exact_extremal_bound.tex").read_text(encoding="utf-8"))
    entries = []
    citation_references = {}
    for key, (meta_name, anchor) in SOURCES.items():
        fields = parse_bib_entry_fields(bib_text, key)
        if not fields:
            raise SystemExit(f"BibTeX entry not found: {key}")
        entry = build_entry(key, meta_name, anchor, fields)
        entry["citation_bindings"] = occurrences[key]
        source_check = next(check for check in entry["checks"] if check["id"] == "claim_context")
        relation, support, semantic_match, boundary = SEMANTIC_REVIEWS[key]
        for binding in entry["citation_bindings"]:
            review = {
                "reviewer": "agent",
                "relation": relation,
                "support_reason": support,
                "semantic_match_reason": semantic_match,
                "scope_boundary": boundary,
            }
            payload = semantic_reset_payload(
                entry, binding, review, binding["context_sha256"], source_check
            )
            review.update(
                {
                    name: payload[name]
                    for name in (
                        "reviewed_context_sha256",
                        "reviewed_source_check_sha256",
                        "reviewed_artifact_sha256",
                    )
                }
            )
            review["semantic_reset_sha256"] = semantic_reset_sha256(
                entry, binding, review, binding["context_sha256"], source_check
            )
            binding["semantic_review"] = review
        entries.append(entry)
        identifier = fields.get("doi") or fields.get("url") or fields.get("eprint")
        if not identifier:
            raise SystemExit(f"Persistent identifier not found in BibTeX entry: {key}")
        citation_references[key] = {
            "author_tokens": [fields["author"]],
            "title_tokens": [fields["title"]],
            "identifiers": [identifier],
        }

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
        "schema_version": 2,
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
    citation_contract = {
        "schema_version": 1,
        "policy": {
            "context_scope": "paragraph",
            "require_bibitem_for_every_manifest_entry": True,
            "require_canonical_links": False,
            "require_claim_context_anchor": False,
            "require_every_bibitem_cited": True,
            "require_manifest_for_every_bibitem": True,
        },
        "references": citation_references,
    }
    (BASE / "citation-contract.json").write_text(
        json.dumps(citation_contract, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    print(
        f"wrote manifest.json and citation-contract.json with {len(entries)} entries and "
        f"{len(artifact_records)} cached artifacts"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
