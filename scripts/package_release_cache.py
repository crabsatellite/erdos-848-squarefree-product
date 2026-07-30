#!/usr/bin/env python3
"""Package the exact public Erdos 848 OLean closure as release-safe ZIP shards."""

from __future__ import annotations

import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import sys
import zipfile

from cache_release_common import (
    CACHE_MANIFEST_NAME,
    CACHE_SCHEMA_VERSION,
    CHECKSUMS_NAME,
    DEFAULT_MAX_RAW_SHARD_BYTES,
    MAX_GITHUB_ASSET_BYTES,
    CacheReleaseError,
    clean_commit,
    load_json,
    publication_manifest,
    run,
    safe_posix_path,
    sha256_file,
    source_modules,
    source_to_olean,
)


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"
DEFAULT_PUBLIC = ROOT.parent / "848-squarefree-product"
DEFAULT_CACHE_ROOT = LEAN / ".lake" / "build" / "lib" / "lean"
SIDECAR_SUFFIX = ".resume.json"


def fail(message: str) -> None:
    raise SystemExit(f"[cache-pack:error] {message}")


def cache_source(cache_root: Path, archive_path: str) -> Path:
    pure = safe_posix_path(archive_path)
    prefix = PurePosixPath("lean4/.lake/build/lib/lean")
    if tuple(pure.parts[: len(prefix.parts)]) != prefix.parts:
        raise CacheReleaseError(f"unexpected cache path: {archive_path}")
    relative = PurePosixPath(*pure.parts[len(prefix.parts) :])
    path = cache_root.joinpath(*relative.parts).resolve()
    root = cache_root.resolve()
    try:
        path.relative_to(root)
    except ValueError as exc:
        raise CacheReleaseError(f"cache source escaped root: {path}") from exc
    return path


def shard_plan(
    records: list[dict[str, object]],
    max_raw_bytes: int,
) -> list[list[dict[str, object]]]:
    shards: list[list[dict[str, object]]] = []
    current: list[dict[str, object]] = []
    current_bytes = 0
    for record in records:
        size = int(record["cache_bytes"])
        if size > max_raw_bytes:
            raise CacheReleaseError(
                f"single OLean exceeds shard bound: {record['cache_path']}"
            )
        if current and current_bytes + size > max_raw_bytes:
            shards.append(current)
            current = []
            current_bytes = 0
        current.append(record)
        current_bytes += size
    if current:
        shards.append(current)
    return shards


def shard_fingerprint(
    *,
    public_commit: str,
    publication_manifest_sha256: str,
    records: list[dict[str, object]],
) -> str:
    digest = hashlib.sha256()
    digest.update(public_commit.encode("ascii"))
    digest.update(publication_manifest_sha256.encode("ascii"))
    for record in records:
        digest.update(str(record["cache_path"]).encode("utf-8"))
        digest.update(b"\0")
        digest.update(str(record["cache_bytes"]).encode("ascii"))
        digest.update(b"\n")
    return digest.hexdigest()


def valid_resume(
    archive: Path,
    sidecar: Path,
    fingerprint: str,
) -> dict | None:
    if not archive.is_file() or not sidecar.is_file():
        return None
    try:
        value = json.loads(sidecar.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return None
    if not isinstance(value, dict) or value.get("fingerprint") != fingerprint:
        return None
    expected_size = value.get("archive_bytes")
    expected_hash = value.get("archive_sha256")
    files = value.get("files")
    if (
        not isinstance(expected_size, int)
        or archive.stat().st_size != expected_size
        or not isinstance(expected_hash, str)
        or not isinstance(files, list)
        or sha256_file(archive) != expected_hash
    ):
        return None
    return value


def package_shard(
    *,
    number: int,
    total: int,
    records: list[dict[str, object]],
    public_commit: str,
    publication_manifest_sha256: str,
    cache_root: Path,
    output: Path,
    compression_level: int,
) -> dict:
    name = (
        "erdos848-olean-cache-lean-4.30.0-rc2-windows-x86_64-"
        f"{public_commit[:12]}-part-{number:03d}-of-{total:03d}.zip"
    )
    archive = output / name
    sidecar = output / f"{name}{SIDECAR_SUFFIX}"
    fingerprint = shard_fingerprint(
        public_commit=public_commit,
        publication_manifest_sha256=publication_manifest_sha256,
        records=records,
    )
    resumed = valid_resume(archive, sidecar, fingerprint)
    if resumed is not None:
        print(f"[cache-pack:resume] {name}", flush=True)
        return resumed

    temporary = archive.with_suffix(f"{archive.suffix}.partial-{os.getpid()}")
    temporary.unlink(missing_ok=True)
    file_records: list[dict[str, object]] = []
    try:
        with zipfile.ZipFile(
            temporary,
            mode="w",
            compression=zipfile.ZIP_DEFLATED,
            compresslevel=compression_level,
            allowZip64=True,
        ) as bundle:
            for record in records:
                cache_path = str(record["cache_path"])
                source = cache_source(cache_root, cache_path)
                if not source.is_file():
                    raise CacheReleaseError(f"missing OLean: {source}")
                expected_size = int(record["cache_bytes"])
                if source.stat().st_size != expected_size:
                    raise CacheReleaseError(
                        f"OLean size changed while packaging: {source}"
                    )
                info = zipfile.ZipInfo(
                    filename=cache_path,
                    date_time=(1980, 1, 1, 0, 0, 0),
                )
                info.compress_type = zipfile.ZIP_DEFLATED
                info._compresslevel = compression_level
                info.create_system = 3
                info.external_attr = 0o100644 << 16
                digest = hashlib.sha256()
                copied = 0
                with source.open("rb") as source_stream, bundle.open(
                    info, mode="w", force_zip64=True
                ) as destination_stream:
                    for block in iter(lambda: source_stream.read(1 << 20), b""):
                        digest.update(block)
                        destination_stream.write(block)
                        copied += len(block)
                if copied != expected_size:
                    raise CacheReleaseError(
                        f"short read while packaging OLean: {source}"
                    )
                file_records.append(
                    {
                        "cache_path": cache_path,
                        "cache_bytes": copied,
                        "cache_sha256": digest.hexdigest(),
                        "source_path": record["source_path"],
                        "source_sha256": record["source_sha256"],
                    }
                )
        archive_size = temporary.stat().st_size
        if archive_size >= MAX_GITHUB_ASSET_BYTES:
            raise CacheReleaseError(
                f"archive is not under GitHub's 2 GiB limit: {temporary}"
            )
        os.replace(temporary, archive)
        value = {
            "fingerprint": fingerprint,
            "archive": name,
            "archive_bytes": archive.stat().st_size,
            "archive_sha256": sha256_file(archive),
            "raw_bytes": sum(int(item["cache_bytes"]) for item in file_records),
            "files": file_records,
        }
        sidecar.write_text(
            json.dumps(value, indent=2, sort_keys=True) + "\n",
            encoding="utf-8",
        )
        print(
            f"[cache-pack:shard-ok] {number}/{total} {name} "
            f"raw={value['raw_bytes']} archive={value['archive_bytes']}",
            flush=True,
        )
        return value
    finally:
        temporary.unlink(missing_ok=True)


def rebind_existing_assets(
    *,
    output: Path,
    records: list[dict[str, object]],
    public_commit: str,
    internal_commit: str,
    publication_manifest_path: Path,
    publication_manifest_sha256: str,
    publication: dict,
    public: Path,
) -> None:
    """Rebind byte-identical cache archives to a metadata-only source update."""

    manifest_path = output / CACHE_MANIFEST_NAME
    if not output.is_dir() or not manifest_path.is_file():
        raise CacheReleaseError(
            "--rebind-existing-assets requires a complete existing asset directory"
        )
    previous = load_json(manifest_path)
    if (
        previous.get("schema_version") != CACHE_SCHEMA_VERSION
        or previous.get("package_role") != "derived-olean-cache"
    ):
        raise CacheReleaseError("existing cache manifest is not a supported release")

    previous_files = previous.get("files")
    if not isinstance(previous_files, list):
        raise CacheReleaseError("existing cache manifest has no files list")
    expected_sources = {
        (
            str(record["source_path"]),
            str(record["source_sha256"]),
            str(record["cache_path"]),
            int(record["cache_bytes"]),
        )
        for record in records
    }
    previous_sources: set[tuple[str, str, str, int]] = set()
    for record in previous_files:
        if not isinstance(record, dict):
            raise CacheReleaseError("existing cache manifest has a malformed file")
        try:
            previous_sources.add(
                (
                    str(record["source_path"]),
                    str(record["source_sha256"]),
                    str(record["cache_path"]),
                    int(record["cache_bytes"]),
                )
            )
        except (KeyError, TypeError, ValueError) as exc:
            raise CacheReleaseError(
                "existing cache manifest has an incomplete file record"
            ) from exc
    if (
        len(previous_files) != len(previous_sources)
        or previous_sources != expected_sources
    ):
        raise CacheReleaseError(
            "public Lean source/cache mapping changed; existing archives cannot be rebound"
        )

    archives = previous.get("archives")
    if not isinstance(archives, list) or not archives:
        raise CacheReleaseError("existing cache manifest has no archives")
    archive_names: set[str] = set()
    for record in archives:
        if not isinstance(record, dict):
            raise CacheReleaseError("existing cache manifest has a malformed archive")
        name = record.get("archive")
        expected_size = record.get("archive_bytes")
        expected_hash = record.get("archive_sha256")
        if not isinstance(name, str) or PurePosixPath(name).name != name:
            raise CacheReleaseError(f"unsafe existing archive name: {name!r}")
        if name in archive_names:
            raise CacheReleaseError(f"duplicate existing archive: {name}")
        archive_names.add(name)
        archive = output / name
        if (
            not archive.is_file()
            or not isinstance(expected_size, int)
            or archive.stat().st_size != expected_size
            or expected_size >= MAX_GITHUB_ASSET_BYTES
            or not isinstance(expected_hash, str)
            or sha256_file(archive) != expected_hash
        ):
            raise CacheReleaseError(f"existing archive failed size/hash audit: {name}")
    referenced_archives = {
        str(record.get("archive"))
        for record in previous_files
        if isinstance(record, dict)
    }
    if referenced_archives != archive_names:
        raise CacheReleaseError(
            "existing cache files and archive inventory do not agree"
        )

    toolchain = (public / "lean4" / "lean-toolchain").read_text(
        encoding="utf-8"
    ).strip()
    if previous.get("lean_toolchain") != toolchain:
        raise CacheReleaseError("Lean toolchain changed; archives cannot be rebound")
    if previous.get("main_theorem") != publication.get("main_theorem"):
        raise CacheReleaseError("main theorem changed; archives cannot be rebound")
    if previous.get("allowed_axioms") != publication.get("allowed_axioms"):
        raise CacheReleaseError("axiom policy changed; archives cannot be rebound")

    status_path = LEAN / ".lake" / "erdos848-Erdos848-status.json"
    status = load_json(status_path)
    if status.get("status") != "passed":
        raise CacheReleaseError("internal provider status is not passed")
    if (
        previous.get("provider_build_input_signature")
        != status.get("build_input_signature")
    ):
        raise CacheReleaseError(
            "controlled-builder signature changed; archives cannot be rebound"
        )

    rebound = dict(previous)
    rebound.update(
        {
            "public_commit": public_commit,
            "internal_source_commit": internal_commit,
            "publication_manifest": {
                "path": publication_manifest_path.name,
                "sha256": publication_manifest_sha256,
            },
            "created_at": datetime.now(timezone.utc).isoformat(),
        }
    )
    temporary = manifest_path.with_suffix(".json.partial")
    temporary.write_text(
        json.dumps(rebound, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )
    os.replace(temporary, manifest_path)
    checksum_lines = [
        f"{sha256_file(manifest_path)}  {CACHE_MANIFEST_NAME}",
        *[
            f"{record['archive_sha256']}  {record['archive']}"
            for record in archives
        ],
    ]
    (output / CHECKSUMS_NAME).write_text(
        "\n".join(checksum_lines) + "\n",
        encoding="utf-8",
    )
    print(
        f"[cache-pack:rebind-ok] modules={len(previous_files)} "
        f"archives={len(archives)} public_commit={public_commit} "
        f"manifest_sha256={sha256_file(manifest_path)}",
        flush=True,
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--public-repository",
        type=Path,
        default=DEFAULT_PUBLIC,
        help="clean committed public repository to bind",
    )
    parser.add_argument(
        "--cache-root",
        type=Path,
        default=DEFAULT_CACHE_ROOT,
        help="existing .lake/build/lib/lean cache root",
    )
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument(
        "--workers",
        type=int,
        default=max(1, min(8, os.cpu_count() or 1)),
    )
    parser.add_argument(
        "--max-raw-shard-bytes",
        type=int,
        default=DEFAULT_MAX_RAW_SHARD_BYTES,
    )
    parser.add_argument("--compression-level", type=int, default=6)
    parser.add_argument("--plan-only", action="store_true")
    parser.add_argument(
        "--rebind-existing-assets",
        action="store_true",
        help=(
            "Reuse existing byte-identical ZIPs after auditing every source "
            "mapping, archive size/hash, toolchain, theorem, axiom policy, "
            "and controlled-builder signature."
        ),
    )
    args = parser.parse_args()

    try:
        public = args.public_repository.resolve()
        cache_root = args.cache_root.resolve()
        output = args.output_dir.resolve()
        if args.workers < 1:
            raise CacheReleaseError("--workers must be positive")
        if not 0 <= args.compression_level <= 9:
            raise CacheReleaseError("--compression-level must be in [0, 9]")
        if not 1_000_000 <= args.max_raw_shard_bytes <= 1_900_000_000:
            raise CacheReleaseError("--max-raw-shard-bytes is outside safe bounds")
        if output == ROOT.resolve() or ROOT.resolve() in output.parents:
            raise CacheReleaseError("release assets must be outside the source repository")

        public_commit = clean_commit(public)
        run(
            [sys.executable, "-B", "scripts/verify_public_repository.py"],
            cwd=public,
        )
        manifest, manifest_path, manifest_sha = publication_manifest(public)
        internal_head = clean_commit(ROOT)
        internal_commit = manifest.get("internal_source_commit")
        if (
            not isinstance(internal_commit, str)
            or re.fullmatch(r"[0-9a-f]{40}", internal_commit) is None
        ):
            raise CacheReleaseError(
                "public manifest has no valid internal source commit"
            )
        if internal_commit != internal_head:
            run(
                ["git", "merge-base", "--is-ancestor", internal_commit, internal_head],
                cwd=ROOT,
            )
            changed = run(
                ["git", "diff", "--name-only", f"{internal_commit}..{internal_head}"],
                cwd=ROOT,
            ).splitlines()
            if changed != ["publication-binding.json"]:
                raise CacheReleaseError(
                    "internal source checkpoint has non-binding follow-up changes: "
                    f"{changed}"
                )

        records: list[dict[str, object]] = []
        missing: list[str] = []
        for source in source_modules(manifest):
            cache_path = source_to_olean(str(source["path"]))
            olean = cache_source(cache_root, cache_path)
            if not olean.is_file():
                missing.append(cache_path)
                continue
            records.append(
                {
                    "source_path": source["path"],
                    "source_sha256": source["sha256"],
                    "cache_path": cache_path,
                    "cache_bytes": olean.stat().st_size,
                }
            )
        if missing:
            raise CacheReleaseError(
                f"{len(missing)} publication OLeans are missing; first={missing[0]}"
            )
        shards = shard_plan(records, args.max_raw_shard_bytes)
        raw_bytes = sum(int(item["cache_bytes"]) for item in records)
        print(
            f"[cache-pack:plan] modules={len(records)} raw_bytes={raw_bytes} "
            f"shards={len(shards)} workers={args.workers} "
            f"public_commit={public_commit}",
            flush=True,
        )
        if args.plan_only:
            return 0
        if args.rebind_existing_assets:
            rebind_existing_assets(
                output=output,
                records=records,
                public_commit=public_commit,
                internal_commit=internal_commit,
                publication_manifest_path=manifest_path,
                publication_manifest_sha256=manifest_sha,
                publication=manifest,
                public=public,
            )
            return 0

        output.mkdir(parents=True, exist_ok=True)
        if not output.is_dir():
            raise CacheReleaseError(f"not an output directory: {output}")
        results: list[dict] = []
        with ThreadPoolExecutor(max_workers=args.workers) as executor:
            futures = [
                executor.submit(
                    package_shard,
                    number=index,
                    total=len(shards),
                    records=shard,
                    public_commit=public_commit,
                    publication_manifest_sha256=manifest_sha,
                    cache_root=cache_root,
                    output=output,
                    compression_level=args.compression_level,
                )
                for index, shard in enumerate(shards, start=1)
            ]
            for future in as_completed(futures):
                results.append(future.result())
        results.sort(key=lambda item: str(item["archive"]))
        all_files = [
            {**file_record, "archive": result["archive"]}
            for result in results
            for file_record in result["files"]
        ]
        all_files.sort(key=lambda item: str(item["cache_path"]))
        if len(all_files) != len(records):
            raise CacheReleaseError("packaged cache file count changed")

        toolchain = (public / "lean4" / "lean-toolchain").read_text(
            encoding="utf-8"
        ).strip()
        status_path = LEAN / ".lake" / "erdos848-Erdos848-status.json"
        status = json.loads(status_path.read_text(encoding="utf-8"))
        if status.get("status") != "passed":
            raise CacheReleaseError("internal provider status is not passed")
        release_manifest = {
            "schema_version": CACHE_SCHEMA_VERSION,
            "package_role": "derived-olean-cache",
            "cache_scope": "exact-publication-source-closure",
            "producer_platform": "windows-x86_64",
            "public_commit": public_commit,
            "internal_source_commit": internal_commit,
            "publication_manifest": {
                "path": manifest_path.name,
                "sha256": manifest_sha,
            },
            "lean_toolchain": toolchain,
            "main_theorem": manifest["main_theorem"],
            "allowed_axioms": manifest["allowed_axioms"],
            "provider_build_input_signature": status["build_input_signature"],
            "created_at": datetime.now(timezone.utc).isoformat(),
            "compression": {
                "format": "zip",
                "method": "deflate",
                "level": args.compression_level,
                "max_raw_shard_bytes": args.max_raw_shard_bytes,
                "github_asset_limit_bytes": MAX_GITHUB_ASSET_BYTES,
            },
            "dependency_bootstrap": {
                "command": "lake exe cache get",
                "forbidden_command": "lake update",
                "manifest": "lean4/lake-manifest.json",
            },
            "summary": {
                "modules": len(all_files),
                "raw_bytes": sum(int(item["cache_bytes"]) for item in all_files),
                "archive_bytes": sum(
                    int(item["archive_bytes"]) for item in results
                ),
                "archives": len(results),
            },
            "archives": [
                {
                    key: result[key]
                    for key in (
                        "archive",
                        "archive_bytes",
                        "archive_sha256",
                        "raw_bytes",
                    )
                }
                for result in results
            ],
            "files": all_files,
        }
        cache_manifest_path = output / CACHE_MANIFEST_NAME
        cache_manifest_path.write_text(
            json.dumps(release_manifest, indent=2, sort_keys=True) + "\n",
            encoding="utf-8",
        )
        checksum_lines = [
            f"{sha256_file(cache_manifest_path)}  {CACHE_MANIFEST_NAME}",
            *[
                f"{item['archive_sha256']}  {item['archive']}"
                for item in release_manifest["archives"]
            ],
        ]
        (output / CHECKSUMS_NAME).write_text(
            "\n".join(checksum_lines) + "\n",
            encoding="utf-8",
        )
        print(
            f"[cache-pack:ok] modules={len(all_files)} "
            f"archives={len(results)} raw_bytes={release_manifest['summary']['raw_bytes']} "
            f"archive_bytes={release_manifest['summary']['archive_bytes']} "
            f"manifest_sha256={sha256_file(cache_manifest_path)}",
            flush=True,
        )
        return 0
    except (CacheReleaseError, OSError, ValueError, KeyError) as exc:
        fail(str(exc))
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
