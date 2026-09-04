#!/usr/bin/env python3
"""Verify the deterministic all-N kernel source package against local policy."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import shutil
import stat
import subprocess
import sys
import tempfile
import zipfile
from pathlib import Path, PurePosixPath


ROOT = Path(__file__).resolve().parents[1]
POLICY_PATH = ROOT / "release-manifest.json"
CHECKER_PATH = Path(__file__).resolve().with_name("check_proof_state.py")
MAX_FILE_BYTES = 512 * 1024 * 1024
MAX_ARCHIVE_BYTES = 8 * 1024 * 1024 * 1024


def fail(message: str) -> None:
    raise SystemExit(f"[package:error] {message}")


def sha256_bytes(payload: bytes) -> str:
    return hashlib.sha256(payload).hexdigest()


def load_json_bytes(payload: bytes, label: str) -> dict:
    try:
        value = json.loads(payload.decode("utf-8"))
    except (UnicodeDecodeError, json.JSONDecodeError) as exc:
        fail(f"cannot decode {label}: {exc}")
    if not isinstance(value, dict):
        fail(f"{label} must contain a JSON object")
    return value


def load_policy(path: Path = POLICY_PATH) -> dict:
    try:
        policy = load_json_bytes(path.read_bytes(), str(path))
    except OSError as exc:
        fail(f"cannot read trusted release policy: {exc}")
    if policy.get("schema_version") != 1:
        fail("trusted release policy schema_version must be 1")
    return policy


def safe_relative_path(relative: str, policy: dict) -> PurePosixPath:
    if not relative or "\\" in relative:
        fail(f"unsafe package path: {relative!r}")
    pure = PurePosixPath(relative)
    if pure.is_absolute() or ".." in pure.parts:
        fail(f"unsafe package path: {relative!r}")
    source_policy = policy["source_policy"]
    if any(part in source_policy["forbidden_path_components"] for part in pure.parts):
        fail(f"forbidden package path component: {relative}")
    if pure.suffix in source_policy["forbidden_suffixes"]:
        fail(f"forbidden package suffix: {relative}")
    return pure


def archive_blobs(archive: Path, policy: dict) -> dict[str, bytes]:
    package_name = policy["release"]["package_name"]
    prefix = package_name + "/"
    blobs: dict[str, bytes] = {}
    total = 0
    try:
        with zipfile.ZipFile(archive) as bundle:
            for info in bundle.infolist():
                if info.is_dir():
                    fail(f"ZIP contains a directory entry: {info.filename}")
                if info.flag_bits & 1:
                    fail(f"ZIP contains an encrypted entry: {info.filename}")
                mode = (info.external_attr >> 16) & 0xFFFF
                if mode and stat.S_ISLNK(mode):
                    fail(f"ZIP contains a symbolic link: {info.filename}")
                if not info.filename.startswith(prefix):
                    fail(f"ZIP entry is outside {package_name}: {info.filename}")
                relative = info.filename[len(prefix) :]
                safe_relative_path(relative, policy)
                if relative in blobs:
                    fail(f"duplicate ZIP entry: {relative}")
                if info.file_size > MAX_FILE_BYTES:
                    fail(f"ZIP entry is too large: {relative}")
                total += info.file_size
                if total > MAX_ARCHIVE_BYTES:
                    fail("uncompressed ZIP exceeds the package size limit")
                blobs[relative] = bundle.read(info)
    except (OSError, zipfile.BadZipFile) as exc:
        fail(f"cannot read release ZIP: {exc}")
    return blobs


def validate_content_manifest(
    content: dict, blobs: dict[str, bytes], policy: dict
) -> None:
    if content.get("schema_version") != 1:
        fail("release-content.json schema_version must be 1")
    release = policy["release"]
    for key in (
        "kind",
        "main_theorem_status",
        "manuscript_claim_status",
        "manuscript_alignment_status",
    ):
        content_key = "release_kind" if key == "kind" else key
        if content.get(content_key) != release[key]:
            fail(f"release-content.json disagrees with policy on {key}")
    if content.get("proof_contract_version") != policy["expected_proof_state"][
        "proof_contract_version"
    ]:
        fail("release-content.json has the wrong proof contract version")
    source_git = content.get("source_git")
    if not isinstance(source_git, dict):
        fail("release-content.json has no source_git object")
    commit = source_git.get("commit")
    if not isinstance(commit, str) or re.fullmatch(r"[0-9a-f]{40}", commit) is None:
        fail("release-content.json lacks a full source commit")
    if source_git.get("worktree_clean") is not True:
        fail("final release must come from a clean worktree")

    records = content.get("files")
    if not isinstance(records, list):
        fail("release-content.json.files must be a list")
    paths: list[str] = []
    for record in records:
        if not isinstance(record, dict) or set(record) != {
            "path",
            "bytes",
            "sha256",
        }:
            fail("malformed release-content.json file record")
        relative = record["path"]
        if not isinstance(relative, str):
            fail("release-content.json contains a non-string path")
        safe_relative_path(relative, policy)
        paths.append(relative)
        if relative not in blobs:
            fail(f"manifested source is missing from ZIP: {relative}")
        payload = blobs[relative]
        if record["bytes"] != len(payload):
            fail(f"byte count mismatch for {relative}")
        if record["sha256"] != sha256_bytes(payload):
            fail(f"SHA-256 mismatch for {relative}")
    if paths != sorted(paths) or len(paths) != len(set(paths)):
        fail("release-content.json paths must be sorted and unique")
    if set(paths) != set(blobs):
        missing = sorted(set(paths) - set(blobs))
        extra = sorted(set(blobs) - set(paths))
        fail(f"content manifest does not match ZIP sources: missing={missing}, extra={extra}")


def remove_readonly(function, path, _exc_info) -> None:
    os.chmod(path, stat.S_IWRITE)
    function(path)


def run_checker_on_tree(tree: Path) -> list[str]:
    env = os.environ.copy()
    env["ERDOS848_PUBLICATION_ROOT"] = str(tree)
    command = [
        sys.executable,
        str(CHECKER_PATH),
        "--require-release-ready",
        "--audit-sources",
        "--emit-source-list",
    ]
    print(f"[package:run] {tree}> {' '.join(command)}", flush=True)
    completed = subprocess.run(
        command,
        cwd=tree,
        env=env,
        check=False,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )
    print(completed.stdout, end="" if completed.stdout.endswith("\n") else "\n")
    if completed.returncode != 0:
        fail(f"trusted proof-state checker failed with exit code {completed.returncode}")
    prefix = "[proof-state:source-list] "
    payloads = [
        line[len(prefix) :]
        for line in completed.stdout.splitlines()
        if line.startswith(prefix)
    ]
    if len(payloads) != 1:
        fail("proof-state checker did not emit one source whitelist")
    try:
        paths = json.loads(payloads[0])
    except json.JSONDecodeError as exc:
        fail(f"cannot decode source whitelist: {exc}")
    if not isinstance(paths, list) or not all(isinstance(path, str) for path in paths):
        fail("source whitelist is malformed")
    return paths


def run(command: list[str], cwd: Path) -> str:
    print(f"[package:run] {cwd}> {' '.join(command)}", flush=True)
    completed = subprocess.run(
        command,
        cwd=cwd,
        check=False,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )
    print(completed.stdout, end="" if completed.stdout.endswith("\n") else "\n")
    if completed.returncode != 0:
        fail(f"command failed with exit code {completed.returncode}")
    return completed.stdout


def audit_axioms(output: str, allowed: set[str]) -> None:
    seen: set[str] = set()
    for payload in re.findall(r"depends on axioms:\s*\[([^\]]*)\]", output):
        seen.update(name.strip() for name in payload.split(",") if name.strip())
    unexpected = seen - allowed
    if unexpected:
        fail(f"fresh build has unexpected axioms: {sorted(unexpected)}")


def fresh_kernel_build(tree: Path, memory_mib: int) -> None:
    lean = tree / "lean4"
    state = load_json_bytes((tree / "proof-state.json").read_bytes(), "proof-state.json")
    acceptance = state["acceptance"]
    map_path = Path(acceptance["theorem_map"]).relative_to("lean4").as_posix()
    audit_path = Path(acceptance["axiom_audit"]).relative_to("lean4").as_posix()
    run(["lake", "exe", "cache", "get-"], lean)
    unpack_env = os.environ.copy()
    unpack_env["RAYON_NUM_THREADS"] = "1"
    print(f"[package:run] {lean}> lake exe cache unpack", flush=True)
    completed = subprocess.run(
        ["lake", "exe", "cache", "unpack"],
        cwd=lean,
        env=unpack_env,
        check=False,
    )
    if completed.returncode != 0:
        fail(f"Mathlib cache unpack failed with exit code {completed.returncode}")
    run(["lake", "build", "Erdos848.PublicationRoot"], lean)
    base = ["lake", "env", "lean", "--trust=0", "-M", str(memory_mib)]
    run(base + [map_path], lean)
    audit = run(base + [audit_path], lean)
    audit_axioms(audit, set(acceptance["allowed_axioms"]))


def verify_archive(
    archive: Path,
    *,
    fresh_build: bool = False,
    memory_mib: int = 24576,
) -> tuple[dict, dict[str, bytes]]:
    if not archive.is_file():
        fail(f"release archive is missing: {archive}")
    policy = load_policy()
    archived = archive_blobs(archive, policy)
    generated = policy["source_policy"]["generated_metadata"]
    try:
        content = load_json_bytes(archived.pop(generated), generated)
    except KeyError:
        fail(f"release archive lacks {generated}")
    archived_policy = load_json_bytes(
        archived.get("release-manifest.json", b""), "release-manifest.json"
    )
    if archived_policy != policy:
        fail("archived release policy differs from trusted local policy")
    validate_content_manifest(content, archived, policy)

    drive_root = Path(archive.resolve().anchor)
    temp_root = Path(
        tempfile.mkdtemp(prefix="e848-package-", dir=drive_root)
    ).resolve()
    if temp_root.parent != drive_root or not temp_root.name.startswith("e848-package-"):
        fail(f"unsafe temporary verification directory: {temp_root}")
    try:
        for relative, payload in archived.items():
            target = temp_root.joinpath(*PurePosixPath(relative).parts)
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(payload)
        expected = run_checker_on_tree(temp_root)
        if set(expected) != set(archived):
            missing = sorted(set(expected) - set(archived))
            extra = sorted(set(archived) - set(expected))
            fail(f"release source whitelist mismatch: missing={missing}, extra={extra}")
        if fresh_build:
            fresh_kernel_build(temp_root, memory_mib)
    finally:
        if (
            temp_root.parent == drive_root
            and temp_root.name.startswith("e848-package-")
        ):
            shutil.rmtree(temp_root, onerror=remove_readonly)
    return content, archived


def main() -> int:
    policy = load_policy()
    default = (
        ROOT
        / "lean4"
        / ".lake"
        / "releases"
        / policy["release"]["archive_name"]
    )
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--archive", type=Path, default=default)
    parser.add_argument("--fresh-lake-build", action="store_true")
    parser.add_argument("--memory-mib", type=int, default=24576)
    args = parser.parse_args()
    content, blobs = verify_archive(
        args.archive.resolve(),
        fresh_build=args.fresh_lake_build,
        memory_mib=args.memory_mib,
    )
    print(
        "[package:ok] "
        f"contract={content['proof_contract_version']} "
        f"files={len(blobs)} sha256={sha256_bytes(args.archive.resolve().read_bytes())}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
