#!/usr/bin/env python3
"""Refresh or check the manuscript artifact hashes in proof-contract.json."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import tempfile
from pathlib import Path, PurePosixPath


ROOT = Path(
    os.environ.get(
        "ERDOS848_PUBLICATION_ROOT",
        str(Path(__file__).resolve().parents[1]),
    )
).resolve()
CONTRACT_PATH = ROOT / "paper" / "proof-contract.json"


def fail(message: str) -> None:
    raise SystemExit(f"[proof-contract:error] {message}")


def repo_path(value: object, label: str) -> Path:
    if not isinstance(value, str) or not value:
        fail(f"{label} must be a nonempty repository-relative path")
    pure = PurePosixPath(value)
    if pure.is_absolute() or ".." in pure.parts or "\\" in value:
        fail(f"unsafe {label}: {value!r}")
    path = ROOT.joinpath(*pure.parts).resolve()
    try:
        path.relative_to(ROOT)
    except ValueError:
        fail(f"{label} escapes the repository: {value!r}")
    if not path.is_file():
        fail(f"missing artifact for {label}: {value}")
    return path


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def refreshed_contract(contract: dict) -> tuple[dict, list[str]]:
    fields = [
        ("tex_path", "tex_sha256"),
        ("pdf_path", "pdf_sha256"),
        ("theorem_map_path", "theorem_map_sha256"),
    ]
    changed: list[str] = []
    for path_key, hash_key in fields:
        digest = sha256(repo_path(contract.get(path_key), path_key))
        if contract.get(hash_key) != digest:
            contract[hash_key] = digest
            changed.append(hash_key)

    artifacts = contract.get("additional_artifacts")
    if not isinstance(artifacts, list) or not artifacts:
        fail("additional_artifacts must be a nonempty list")
    seen: set[str] = set()
    for index, artifact in enumerate(artifacts):
        if not isinstance(artifact, dict):
            fail(f"additional_artifacts[{index}] must be an object")
        relative = artifact.get("path")
        if not isinstance(relative, str) or relative in seen:
            fail(f"additional_artifacts[{index}].path is absent or duplicated")
        seen.add(relative)
        digest = sha256(repo_path(relative, f"additional_artifacts[{index}].path"))
        if artifact.get("sha256") != digest:
            artifact["sha256"] = digest
            changed.append(relative)
    return contract, changed


def atomic_write(path: Path, payload: bytes) -> None:
    descriptor, temporary = tempfile.mkstemp(
        prefix=f".{path.name}.", suffix=".tmp", dir=path.parent
    )
    try:
        with os.fdopen(descriptor, "wb") as stream:
            stream.write(payload)
            stream.flush()
            os.fsync(stream.fileno())
        os.replace(temporary, path)
    finally:
        try:
            os.unlink(temporary)
        except FileNotFoundError:
            pass


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--write",
        action="store_true",
        help="atomically update proof-contract.json instead of only checking it",
    )
    args = parser.parse_args()

    try:
        original = CONTRACT_PATH.read_bytes()
        contract = json.loads(original.decode("utf-8"))
    except (OSError, UnicodeDecodeError, json.JSONDecodeError) as exc:
        fail(f"cannot read {CONTRACT_PATH.relative_to(ROOT)}: {exc}")
    if not isinstance(contract, dict):
        fail("proof-contract.json must contain a JSON object")

    contract, changed = refreshed_contract(contract)
    if not changed:
        print("[proof-contract:ok] artifact hashes are current")
        return 0
    if not args.write:
        fail("stale artifact hashes: " + ", ".join(changed))

    payload = (json.dumps(contract, indent=2, ensure_ascii=False) + "\n").encode("utf-8")
    atomic_write(CONTRACT_PATH, payload)
    print("[proof-contract:updated] " + ", ".join(changed))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
