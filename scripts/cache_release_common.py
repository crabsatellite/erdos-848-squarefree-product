#!/usr/bin/env python3
"""Shared fail-closed helpers for the Erdos 848 OLean cache release."""

from __future__ import annotations

import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import subprocess


CACHE_SCHEMA_VERSION = 1
CACHE_MANIFEST_NAME = "ERDOS848_OLEAN_CACHE_MANIFEST.json"
CHECKSUMS_NAME = "ERDOS848_OLEAN_CACHE_SHA256SUMS.txt"
PUBLICATION_MANIFEST_NAME = "PUBLICATION_MANIFEST.json"
MAX_GITHUB_ASSET_BYTES = 2 * 1024 * 1024 * 1024
DEFAULT_MAX_RAW_SHARD_BYTES = 1_750_000_000


class CacheReleaseError(RuntimeError):
    """A release-integrity or safety check failed."""


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1 << 20), b""):
            digest.update(block)
    return digest.hexdigest()


def load_json(path: Path) -> dict:
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as exc:
        raise CacheReleaseError(f"cannot read JSON {path}: {exc}") from exc
    if not isinstance(value, dict):
        raise CacheReleaseError(f"expected a JSON object in {path}")
    return value


def safe_posix_path(value: str) -> PurePosixPath:
    if not value or "\\" in value:
        raise CacheReleaseError(f"unsafe relative path: {value!r}")
    path = PurePosixPath(value)
    if path.is_absolute() or ".." in path.parts or ".git" in path.parts:
        raise CacheReleaseError(f"unsafe relative path: {value!r}")
    return path


def run(
    command: list[str],
    *,
    cwd: Path,
    capture: bool = True,
) -> str:
    completed = subprocess.run(
        command,
        cwd=cwd,
        check=False,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE if capture else None,
        stderr=subprocess.STDOUT if capture else None,
    )
    output = completed.stdout or ""
    if completed.returncode != 0:
        raise CacheReleaseError(
            f"command failed ({completed.returncode}): {' '.join(command)}\n{output}"
        )
    return output.strip()


def clean_commit(repository: Path) -> str:
    commit = run(["git", "rev-parse", "HEAD"], cwd=repository)
    if re.fullmatch(r"[0-9a-f]{40}", commit) is None:
        raise CacheReleaseError(f"not a full Git commit: {commit!r}")
    status = run(
        ["git", "status", "--porcelain=v1", "--untracked-files=all"],
        cwd=repository,
    )
    if status:
        raise CacheReleaseError(f"Git worktree is not clean: {repository}")
    return commit


def publication_manifest(repository: Path) -> tuple[dict, Path, str]:
    path = repository / PUBLICATION_MANIFEST_NAME
    manifest = load_json(path)
    if manifest.get("schema_version") != 1:
        raise CacheReleaseError("unsupported publication manifest schema")
    if manifest.get("package_role") != "clean-public-kernel-source":
        raise CacheReleaseError("not a clean public kernel source manifest")
    return manifest, path, sha256_file(path)


def source_modules(manifest: dict) -> list[dict[str, object]]:
    modules: list[dict[str, object]] = []
    records = manifest.get("files")
    if not isinstance(records, list):
        raise CacheReleaseError("publication manifest files must be a list")
    for record in records:
        if not isinstance(record, dict):
            raise CacheReleaseError("malformed publication file record")
        path = record.get("path")
        digest = record.get("sha256")
        size = record.get("bytes")
        if (
            isinstance(path, str)
            and path.startswith("lean4/")
            and path.endswith(".lean")
        ):
            safe_posix_path(path)
            if (
                not isinstance(digest, str)
                or re.fullmatch(r"[0-9a-f]{64}", digest) is None
                or not isinstance(size, int)
                or size < 0
            ):
                raise CacheReleaseError(f"malformed Lean source record: {path}")
            modules.append(
                {"path": path, "sha256": digest, "bytes": size}
            )
    modules.sort(key=lambda item: str(item["path"]))
    if not modules:
        raise CacheReleaseError("publication manifest has no Lean modules")
    return modules


def source_to_olean(source: str) -> str:
    source_path = safe_posix_path(source)
    if source_path.parts[0] != "lean4" or source_path.suffix != ".lean":
        raise CacheReleaseError(f"not a publication Lean source: {source}")
    relative = PurePosixPath(*source_path.parts[1:]).with_suffix(".olean")
    return (PurePosixPath("lean4/.lake/build/lib/lean") / relative).as_posix()


def cache_path_from_archive(repository: Path, archive_path: str) -> Path:
    pure = safe_posix_path(archive_path)
    expected = PurePosixPath("lean4/.lake/build/lib/lean")
    if tuple(pure.parts[: len(expected.parts)]) != expected.parts:
        raise CacheReleaseError(
            f"cache entry is outside the public OLean root: {archive_path}"
        )
    destination = repository.joinpath(*pure.parts).resolve()
    lean_root = (repository / "lean4" / ".lake" / "build" / "lib" / "lean").resolve()
    try:
        destination.relative_to(lean_root)
    except ValueError as exc:
        raise CacheReleaseError(
            f"cache destination escaped OLean root: {destination}"
        ) from exc
    return destination

