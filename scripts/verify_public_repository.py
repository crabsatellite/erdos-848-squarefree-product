#!/usr/bin/env python3
"""Verify the clean public Erdos 848 source tree and its source manifest."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import subprocess
import sys


ROOT = Path(__file__).resolve().parents[1]
MANIFEST_PATH = ROOT / "PUBLICATION_MANIFEST.json"
EXPECTED_THEOREM = "Erdos848.PaperGeneratedCertificateProvider.all_N"
EXPECTED_AXIOMS = ["propext", "Classical.choice", "Quot.sound"]
EXPECTED_GITATTRIBUTES = b"""* -text whitespace=cr-at-eol
*.bib diff
*.gitignore diff
*.json diff
*.lean diff
*.md diff
*.ps1 diff
*.py diff
*.tex diff
*.toml diff
*.txt diff
paper/reference-evidence/** -diff
"""
IGNORED_DIRECTORIES = {".git", ".lake", "__pycache__"}
IGNORED_SUFFIXES = {
    ".aux",
    ".ilean",
    ".log",
    ".olean",
    ".out",
    ".pyc",
    ".toc",
    ".trace",
}


def fail(message: str) -> None:
    raise SystemExit(f"[public:error] {message}")


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1 << 20), b""):
            digest.update(block)
    return digest.hexdigest()


def safe_relative(value: str) -> PurePosixPath:
    if not value or "\\" in value:
        fail(f"unsafe manifest path: {value!r}")
    path = PurePosixPath(value)
    if path.is_absolute() or ".." in path.parts:
        fail(f"unsafe manifest path: {value!r}")
    if any(part in IGNORED_DIRECTORIES for part in path.parts):
        fail(f"ignored directory entered source manifest: {value}")
    return path


def load_manifest() -> dict:
    try:
        value = json.loads(MANIFEST_PATH.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as exc:
        fail(f"cannot read PUBLICATION_MANIFEST.json: {exc}")
    if not isinstance(value, dict) or value.get("schema_version") != 1:
        fail("unsupported publication manifest schema")
    if value.get("main_theorem") != EXPECTED_THEOREM:
        fail("publication manifest names the wrong main theorem")
    if value.get("allowed_axioms") != EXPECTED_AXIOMS:
        fail("publication manifest has the wrong exact axiom policy")
    commit = value.get("internal_source_commit")
    if not isinstance(commit, str) or re.fullmatch(r"[0-9a-f]{40}", commit) is None:
        fail("publication manifest lacks a full internal source commit")
    return value


def actual_source_files() -> set[str]:
    result: set[str] = set()
    for directory, names, files in os.walk(ROOT):
        names[:] = sorted(name for name in names if name not in IGNORED_DIRECTORIES)
        base = Path(directory)
        for name in files:
            path = base / name
            relative = path.relative_to(ROOT).as_posix()
            if relative == MANIFEST_PATH.name:
                continue
            if relative.endswith(".synctex.gz") or path.suffix in IGNORED_SUFFIXES:
                continue
            result.add(relative)
    return result


def verify_files(manifest: dict) -> int:
    records = manifest.get("files")
    if not isinstance(records, list):
        fail("publication manifest files must be a list")
    paths: list[str] = []
    for record in records:
        if not isinstance(record, dict) or set(record) != {
            "path",
            "bytes",
            "sha256",
        }:
            fail("malformed publication manifest file record")
        relative = record["path"]
        if not isinstance(relative, str):
            fail("publication manifest contains a non-string path")
        pure = safe_relative(relative)
        paths.append(relative)
        path = ROOT.joinpath(*pure.parts)
        if not path.is_file():
            fail(f"manifested file is missing: {relative}")
        if path.stat().st_size != record["bytes"]:
            fail(f"byte count mismatch: {relative}")
        if sha256(path) != record["sha256"]:
            fail(f"SHA-256 mismatch: {relative}")
    if paths != sorted(paths) or len(paths) != len(set(paths)):
        fail("publication manifest paths must be sorted and unique")
    actual = actual_source_files()
    expected = set(paths)
    if actual != expected:
        missing = sorted(expected - actual)
        extra = sorted(actual - expected)
        fail(f"public source set mismatch: missing={missing}, extra={extra}")
    return len(paths)


def run_contract_gate() -> None:
    completed = subprocess.run(
        [
            sys.executable,
            "-B",
            "scripts/check_proof_state.py",
            "--require-release-ready",
            "--audit-sources",
        ],
        cwd=ROOT,
        check=False,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )
    print(completed.stdout, end="" if completed.stdout.endswith("\n") else "\n")
    if completed.returncode != 0:
        fail(f"paper/Lean contract gate failed with exit code {completed.returncode}")


def run_manuscript_gates() -> None:
    commands = [
        [sys.executable, "-B", "scripts/verify_paper_lean_correspondence.py"],
        [sys.executable, "-B", "scripts/verify_paper_lean_numbers.py"],
        [
            sys.executable,
            "-B",
            "scripts/verify_reference_evidence.py",
            "--require-cited-coverage",
            "--require-entry-checks",
        ],
    ]
    for command in commands:
        completed = subprocess.run(
            command,
            cwd=ROOT,
            check=False,
            text=True,
            encoding="utf-8",
            errors="replace",
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )
        print(completed.stdout, end="" if completed.stdout.endswith("\n") else "\n")
        if completed.returncode != 0:
            fail(f"manuscript gate failed: {' '.join(command[2:])}")


def require_clean_git() -> str:
    head = subprocess.run(
        ["git", "rev-parse", "HEAD"],
        cwd=ROOT,
        check=True,
        text=True,
        encoding="utf-8",
        stdout=subprocess.PIPE,
    ).stdout.strip()
    if re.fullmatch(r"[0-9a-f]{40}", head) is None:
        fail("public repository HEAD is not a full Git commit")
    status = subprocess.run(
        ["git", "status", "--porcelain=v1", "--untracked-files=all"],
        cwd=ROOT,
        check=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE,
    ).stdout
    if status.strip():
        fail("public Git worktree is dirty")
    attributes_path = ROOT / ".gitattributes"
    if attributes_path.read_bytes() != EXPECTED_GITATTRIBUTES:
        fail("public .gitattributes does not freeze release bytes")
    attribute = subprocess.run(
        [
            "git",
            "check-attr",
            "text",
            "--",
            "PUBLICATION_MANIFEST.json",
            "lean4/Erdos848/PublicationRoot.lean",
        ],
        cwd=ROOT,
        check=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE,
    ).stdout
    lines = [line.strip() for line in attribute.splitlines() if line.strip()]
    if len(lines) != 2 or any(not line.endswith(": text: unset") for line in lines):
        fail("Git text conversion is not disabled for publication bytes")
    return head


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--allow-dirty",
        action="store_true",
        help="skip the clean public Git checkpoint requirement",
    )
    args = parser.parse_args()
    manifest = load_manifest()
    count = verify_files(manifest)
    run_contract_gate()
    run_manuscript_gates()
    public_head = "not-required"
    if not args.allow_dirty:
        public_head = require_clean_git()
    print(
        f"[public:ok] files={count} "
        f"internal_source_commit={manifest['internal_source_commit']} "
        f"public_commit={public_head}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
