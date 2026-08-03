#!/usr/bin/env python3
"""Offline, fail-closed verifier for the paper's reference evidence."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import unicodedata
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def fail(message: str) -> None:
    raise SystemExit(f"reference-evidence gate failed: {message}")


def normalize(value: str) -> str:
    value = unicodedata.normalize("NFKC", value).casefold()
    return re.sub(r"\s+", " ", value).strip()


def normalize_bib_value(value: str) -> str:
    return re.sub(r"\s+", " ", value.strip())


def parse_bib_entries(text: str) -> dict[str, dict[str, str]]:
    entries: dict[str, dict[str, str]] = {}
    for match in re.finditer(r"@\w+\s*\{\s*([^,\s]+)\s*,", text):
        key = match.group(1)
        start = match.end()
        depth = 1
        index = start
        while index < len(text) and depth:
            if text[index] == "{":
                depth += 1
            elif text[index] == "}":
                depth -= 1
            index += 1
        if depth:
            fail(f"unbalanced BibTeX entry: {key}")
        body = text[start : index - 1]
        fields: dict[str, str] = {}
        pos = 0
        while pos < len(body):
            field_match = re.search(
                r"([A-Za-z][A-Za-z0-9_-]*)\s*=", body[pos:]
            )
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
        entries[key] = fields
    return entries


def cited_keys(tex: str) -> set[str]:
    keys: set[str] = set()
    for match in re.finditer(r"\\cite(?:\[[^\]]*\])?\{([^}]+)\}", tex):
        keys.update(key.strip() for key in match.group(1).split(",") if key.strip())
    return keys


def check_text(base: Path, key: str, check: dict) -> None:
    path = base / check["file"]
    if not path.is_file():
        fail(f"{key}:{check['id']}: missing {path}")
    lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
    if "line" in check:
        line_number = int(check["line"])
        if line_number < 1 or line_number > len(lines):
            fail(f"{key}:{check['id']}: line out of range")
        actual = lines[line_number - 1]
    else:
        start = int(check["line_start"])
        end = int(check["line_end"])
        if start < 1 or end < start or end > len(lines):
            fail(f"{key}:{check['id']}: line range out of bounds")
        actual = "\n".join(lines[start - 1 : end])
    if actual != check["exact"]:
        fail(f"{key}:{check['id']}: exact evidence text drift")
    contains = check.get("normalized_contains")
    if contains is not None and normalize(contains) not in normalize(actual):
        fail(f"{key}:{check['id']}: normalized anchor drift")


def check_metadata(base: Path, key: str, check: dict) -> None:
    path = base / check["file"]
    if not path.is_file():
        fail(f"{key}:{check['id']}: missing {path}")
    meta = json.loads(path.read_text(encoding="utf-8"))
    actual = str(meta.get(check["field"]))
    if actual != check["exact"]:
        fail(f"{key}:{check['id']}: metadata drift")


def verify_cached_artifacts(base: Path, manifest: dict) -> int:
    artifact_manifest = base / manifest["artifact_manifest"]
    payload = artifact_manifest.read_bytes()
    if hashlib.sha256(payload).hexdigest() != manifest["artifact_manifest_sha256"]:
        fail("cached-artifact manifest hash drift")
    index = json.loads(payload)
    if index.get("schema_version") != 1:
        fail("unsupported cached-artifact manifest schema")
    records = index.get("artifacts")
    if not isinstance(records, list):
        fail("cached-artifact records are absent")
    expected_paths: set[str] = set()
    for record in records:
        if not isinstance(record, dict) or set(record) != {"path", "bytes", "sha256"}:
            fail("malformed cached-artifact record")
        relative = record["path"]
        if relative in expected_paths:
            fail(f"duplicate cached-artifact path: {relative}")
        expected_paths.add(relative)
        artifact = base / relative
        if not artifact.is_file():
            fail(f"missing cached artifact: {relative}")
        artifact_payload = artifact.read_bytes()
        if len(artifact_payload) != record["bytes"]:
            fail(f"cached artifact byte-count drift: {relative}")
        if hashlib.sha256(artifact_payload).hexdigest() != record["sha256"]:
            fail(f"cached artifact hash drift: {relative}")

    meta_paths: set[str] = set()
    for path in base.glob("*/*.meta.json"):
        meta = json.loads(path.read_text(encoding="utf-8"))
        artifact = path.parent / meta["artifact_file"]
        if not artifact.is_file():
            fail(f"missing cached artifact for {path}")
        meta_paths.add(artifact.relative_to(base).as_posix())
    if meta_paths != expected_paths:
        fail(
            "cached-artifact manifest coverage drift: "
            f"missing={sorted(meta_paths - expected_paths)}, "
            f"extra={sorted(expected_paths - meta_paths)}"
        )
    return len(records)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "manifest",
        nargs="?",
        default="paper/reference-evidence/manifest.json",
    )
    parser.add_argument(
        "--tex",
        default="paper/erdos_848_kernel_asymptotic.tex",
    )
    parser.add_argument("--require-cited-coverage", action="store_true")
    parser.add_argument("--require-entry-checks", action="store_true")
    parser.add_argument("--quiet", action="store_true")
    args = parser.parse_args()

    manifest_path = Path(args.manifest)
    if not manifest_path.is_absolute():
        manifest_path = ROOT / manifest_path
    base = manifest_path.parent
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    if manifest.get("schema_version") != 1:
        fail("unsupported manifest schema")

    bib_path = base / manifest["bib_file"]
    bib = parse_bib_entries(bib_path.read_text(encoding="utf-8"))
    entries = manifest.get("entries")
    if not isinstance(entries, list):
        fail("manifest entries are absent")
    manifest_keys = [entry.get("key") for entry in entries]
    if any(not isinstance(key, str) or not key for key in manifest_keys):
        fail("invalid manifest key")
    if len(set(manifest_keys)) != len(manifest_keys):
        fail("duplicate manifest key")

    tex_path = Path(args.tex)
    if not tex_path.is_absolute():
        tex_path = ROOT / tex_path
    citations = cited_keys(tex_path.read_text(encoding="utf-8"))
    if args.require_cited_coverage:
        missing = sorted(citations - set(manifest_keys))
        if missing:
            fail(f"cited keys lack evidence: {', '.join(missing)}")
        missing_bib = sorted(citations - set(bib))
        if missing_bib:
            fail(f"cited keys lack BibTeX entries: {', '.join(missing_bib)}")

    checks = 0
    for entry in entries:
        key = entry["key"]
        if key not in bib:
            fail(f"{key}: BibTeX entry missing")
        if args.require_entry_checks:
            for field in ("checks", "meta_checks", "bib_checks"):
                if not entry.get(field):
                    fail(f"{key}: {field} are absent")
        for check in entry.get("checks", []):
            check_text(base, key, check)
            checks += 1
        for check in entry.get("meta_checks", []):
            check_metadata(base, key, check)
            checks += 1
        for check in entry.get("bib_checks", []):
            actual = bib[key].get(check["field"])
            if actual != check["exact"]:
                fail(f"{key}:{check['id']}: BibTeX field drift")
            checks += 1

    raw_artifacts = verify_cached_artifacts(base, manifest)
    if not args.quiet:
        print(
            "reference-evidence gate passed: "
            f"{len(entries)} entries, {len(citations)} cited keys, "
            f"{checks} checks, {raw_artifacts} cached artifacts"
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
