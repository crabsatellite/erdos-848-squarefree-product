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
        internal_commit = clean_commit(ROOT)
        if manifest.get("internal_source_commit") != internal_commit:
            raise CacheReleaseError(
                "public manifest is not bound to the current internal source commit"
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
