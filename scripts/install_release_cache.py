#!/usr/bin/env python3
"""Verify and install an Erdos 848 OLean cache release, then run kernel gates."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import time
import zipfile

from cache_release_common import (
    CACHE_MANIFEST_NAME,
    CACHE_SCHEMA_VERSION,
    MAX_GITHUB_ASSET_BYTES,
    CacheReleaseError,
    cache_path_from_archive,
    clean_commit,
    publication_manifest,
    run,
    safe_posix_path,
    sha256_file,
    source_modules,
    source_to_olean,
)


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"


def fail(message: str) -> None:
    raise SystemExit(f"[cache-install:error] {message}")


def verify_toolchain(expected: str) -> None:
    actual = (LEAN / "lean-toolchain").read_text(encoding="utf-8").strip()
    if actual != expected:
        raise CacheReleaseError(
            f"Lean toolchain mismatch: expected {expected!r}, found {actual!r}"
        )
    version = expected.rsplit(":", 1)[-1].lstrip("v")
    output = run(["lean", "--version"], cwd=LEAN)
    if version not in output:
        raise CacheReleaseError(
            f"active Lean does not match pinned {version}: {output}"
        )


def prepare_dependencies() -> None:
    manifest = LEAN / "lake-manifest.json"
    toolchain = LEAN / "lean-toolchain"
    before = (sha256_file(manifest), sha256_file(toolchain))
    dependency_cache = LEAN / ".lake" / "release-mathlib-cache"
    dependency_cache.mkdir(parents=True, exist_ok=True)
    environment = os.environ.copy()
    environment["MATHLIB_CACHE_DIR"] = str(dependency_cache)
    print(
        "[cache-install:dependencies] lake exe cache get "
        f"(isolated cache: {dependency_cache})",
        flush=True,
    )
    completed = subprocess.run(
        ["lake", "exe", "cache", "get"],
        cwd=LEAN,
        env=environment,
        check=False,
    )
    if completed.returncode != 0:
        raise CacheReleaseError(
            f"mathlib cache bootstrap failed ({completed.returncode})"
        )
    after = (sha256_file(manifest), sha256_file(toolchain))
    if before != after:
        raise CacheReleaseError(
            "dependency bootstrap changed a pinned manifest or toolchain"
        )


def manifest_records(
    cache_manifest: dict,
    publication: dict,
) -> tuple[dict[str, dict], dict[str, dict]]:
    expected_sources = {
        str(item["path"]): item for item in source_modules(publication)
    }
    archives_value = cache_manifest.get("archives")
    files_value = cache_manifest.get("files")
    if not isinstance(archives_value, list) or not isinstance(files_value, list):
        raise CacheReleaseError("cache archives/files must be lists")

    archives: dict[str, dict] = {}
    for record in archives_value:
        if not isinstance(record, dict):
            raise CacheReleaseError("malformed cache archive record")
        name = record.get("archive")
        digest = record.get("archive_sha256")
        size = record.get("archive_bytes")
        if (
            not isinstance(name, str)
            or Path(name).name != name
            or not name.endswith(".zip")
            or not isinstance(digest, str)
            or re.fullmatch(r"[0-9a-f]{64}", digest) is None
            or not isinstance(size, int)
            or size < 0
            or size >= MAX_GITHUB_ASSET_BYTES
            or name in archives
        ):
            raise CacheReleaseError(f"malformed cache archive: {name!r}")
        archives[name] = record

    files: dict[str, dict] = {}
    seen_sources: set[str] = set()
    for record in files_value:
        if not isinstance(record, dict):
            raise CacheReleaseError("malformed cache file record")
        cache_path = record.get("cache_path")
        source_path = record.get("source_path")
        archive = record.get("archive")
        cache_digest = record.get("cache_sha256")
        source_digest = record.get("source_sha256")
        size = record.get("cache_bytes")
        if (
            not isinstance(cache_path, str)
            or not isinstance(source_path, str)
            or not isinstance(archive, str)
            or archive not in archives
            or not isinstance(cache_digest, str)
            or re.fullmatch(r"[0-9a-f]{64}", cache_digest) is None
            or not isinstance(source_digest, str)
            or re.fullmatch(r"[0-9a-f]{64}", source_digest) is None
            or not isinstance(size, int)
            or size < 0
            or cache_path in files
            or source_path in seen_sources
        ):
            raise CacheReleaseError(f"malformed cache file: {cache_path!r}")
        safe_posix_path(cache_path)
        source = expected_sources.get(source_path)
        if source is None:
            raise CacheReleaseError(
                f"cache file has no publication source: {source_path}"
            )
        if source_digest != source["sha256"]:
            raise CacheReleaseError(f"source hash mismatch: {source_path}")
        if cache_path != source_to_olean(source_path):
            raise CacheReleaseError(f"source/OLean path mismatch: {cache_path}")
        files[cache_path] = record
        seen_sources.add(source_path)
    if seen_sources != set(expected_sources):
        missing = sorted(set(expected_sources) - seen_sources)
        raise CacheReleaseError(
            f"cache does not cover exact publication closure; first={missing[:1]}"
        )
    return archives, files


def verify_archives(asset_dir: Path, archives: dict[str, dict]) -> None:
    for index, name in enumerate(sorted(archives), start=1):
        record = archives[name]
        path = asset_dir / name
        if not path.is_file():
            raise CacheReleaseError(f"missing release asset: {name}")
        if path.stat().st_size != record["archive_bytes"]:
            raise CacheReleaseError(f"release asset size mismatch: {name}")
        digest = sha256_file(path)
        if digest != record["archive_sha256"]:
            raise CacheReleaseError(f"release asset hash mismatch: {name}")
        print(
            f"[cache-install:archive-ok] {index}/{len(archives)} {name}",
            flush=True,
        )


def install_archives(
    asset_dir: Path,
    archives: dict[str, dict],
    records: dict[str, dict],
) -> None:
    installed: set[str] = set()
    for index, name in enumerate(sorted(archives), start=1):
        expected = {
            path: record
            for path, record in records.items()
            if record["archive"] == name
        }
        with zipfile.ZipFile(asset_dir / name, mode="r") as bundle:
            names = bundle.namelist()
            if len(names) != len(set(names)) or set(names) != set(expected):
                raise CacheReleaseError(f"archive member set mismatch: {name}")
            for member in names:
                record = expected[member]
                destination = cache_path_from_archive(ROOT, member)
                destination.parent.mkdir(parents=True, exist_ok=True)
                temporary = destination.with_name(
                    f".{destination.name}.cache-install-{os.getpid()}.tmp"
                )
                temporary.unlink(missing_ok=True)
                digest = hashlib.sha256()
                copied = 0
                try:
                    with bundle.open(member, mode="r") as source, temporary.open(
                        "wb"
                    ) as target:
                        for block in iter(lambda: source.read(1 << 20), b""):
                            digest.update(block)
                            target.write(block)
                            copied += len(block)
                    if (
                        copied != record["cache_bytes"]
                        or digest.hexdigest() != record["cache_sha256"]
                    ):
                        raise CacheReleaseError(
                            f"decompressed OLean mismatch: {member}"
                        )
                    os.replace(temporary, destination)
                finally:
                    temporary.unlink(missing_ok=True)
                installed.add(member)
        print(
            f"[cache-install:shard-ok] {index}/{len(archives)} {name}",
            flush=True,
        )
    if installed != set(records):
        raise CacheReleaseError("installed OLean set is incomplete")

    newest_source = max(
        (ROOT / record["source_path"]).stat().st_mtime_ns
        for record in records.values()
    )
    installed_mtime = max(time.time_ns(), newest_source + 2_000_000_000)
    for cache_path in records:
        destination = cache_path_from_archive(ROOT, cache_path)
        os.utime(destination, ns=(installed_mtime, installed_mtime))


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--asset-dir",
        type=Path,
        required=True,
        help="directory containing the cache manifest and all ZIP shards",
    )
    parser.add_argument(
        "--prepare-dependencies",
        action="store_true",
        help="download pinned Mathlib dependency caches; never runs lake update",
    )
    parser.add_argument(
        "--verify-only",
        action="store_true",
        help="verify assets and bindings without extracting OLeans",
    )
    parser.add_argument(
        "--kernel",
        action="store_true",
        help="run the trust=0 theorem-map and axiom gate after installation",
    )
    parser.add_argument("--memory-mib", type=int, default=32768)
    args = parser.parse_args()

    try:
        asset_dir = args.asset_dir.resolve()
        cache_manifest_path = asset_dir / CACHE_MANIFEST_NAME
        cache_manifest = json.loads(
            cache_manifest_path.read_text(encoding="utf-8")
        )
        if (
            not isinstance(cache_manifest, dict)
            or cache_manifest.get("schema_version") != CACHE_SCHEMA_VERSION
            or cache_manifest.get("package_role") != "derived-olean-cache"
        ):
            raise CacheReleaseError("unsupported cache release manifest")

        public_commit = clean_commit(ROOT)
        if cache_manifest.get("public_commit") != public_commit:
            raise CacheReleaseError(
                "cache release is not bound to the checked-out public commit"
            )
        publication, publication_path, publication_sha = publication_manifest(
            ROOT
        )
        publication_binding = cache_manifest.get("publication_manifest")
        if (
            not isinstance(publication_binding, dict)
            or publication_binding.get("path") != publication_path.name
            or publication_binding.get("sha256") != publication_sha
        ):
            expected = publication_binding.get("sha256")
            raise CacheReleaseError(
                "publication manifest binding mismatch: "
                f"expected={expected}, actual={publication_sha}; "
                "check out the exact release tag with its .gitattributes"
            )
        if (
            cache_manifest.get("internal_source_commit")
            != publication.get("internal_source_commit")
            or cache_manifest.get("main_theorem")
            != publication.get("main_theorem")
            or cache_manifest.get("allowed_axioms")
            != publication.get("allowed_axioms")
        ):
            raise CacheReleaseError("cache/public proof identity mismatch")
        verify_toolchain(str(cache_manifest.get("lean_toolchain")))
        archives, records = manifest_records(cache_manifest, publication)
        verify_archives(asset_dir, archives)
        print(
            f"[cache-install:assets-ok] archives={len(archives)} "
            f"modules={len(records)}",
            flush=True,
        )
        if args.verify_only:
            if args.kernel:
                raise CacheReleaseError("--kernel requires installation")
            return 0
        if args.prepare_dependencies:
            prepare_dependencies()
        install_archives(asset_dir, archives, records)
        print(f"[cache-install:ok] modules={len(records)}", flush=True)
        if args.kernel:
            run(
                [
                    sys.executable,
                    "-B",
                    "scripts/run_kernel_gates.py",
                    "--memory-mib",
                    str(args.memory_mib),
                ],
                cwd=ROOT,
                capture=False,
            )
        return 0
    except (
        CacheReleaseError,
        OSError,
        ValueError,
        KeyError,
        json.JSONDecodeError,
        zipfile.BadZipFile,
    ) as exc:
        fail(str(exc))
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
