#!/usr/bin/env python3
"""Build the deterministic closed all-N kernel proof and matching-paper ZIP."""

from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
import zipfile
from pathlib import Path

import check_proof_state
import verify_publication_package as verifier


ROOT = Path(__file__).resolve().parents[1]
FIXED_ZIP_TIME = (1980, 1, 1, 0, 0, 0)


def run(command: list[str], *, capture: bool = False) -> str:
    print(f"[release:run] {ROOT}> {' '.join(command)}", flush=True)
    completed = subprocess.run(
        command,
        cwd=ROOT,
        check=False,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE if capture else None,
        stderr=subprocess.STDOUT if capture else None,
    )
    output = completed.stdout or ""
    if capture and output:
        print(output, end="" if output.endswith("\n") else "\n")
    if completed.returncode != 0:
        verifier.fail(f"command failed with exit code {completed.returncode}")
    return output


def git_provenance() -> str:
    commit = run(["git", "rev-parse", "HEAD"], capture=True).strip().splitlines()[-1]
    if re.fullmatch(r"[0-9a-f]{40}", commit) is None:
        verifier.fail("git rev-parse did not return a full commit hash")
    status = run(
        ["git", "status", "--porcelain=v1", "--untracked-files=all"],
        capture=True,
    )
    if status.strip():
        verifier.fail(
            "worktree is dirty; commit the exact paper/proof checkpoint before release"
        )
    return commit


def content_manifest(
    policy: dict, state: dict, blobs: dict[str, bytes], commit: str
) -> bytes:
    records = [
        {
            "path": relative,
            "bytes": len(blobs[relative]),
            "sha256": verifier.sha256_bytes(blobs[relative]),
        }
        for relative in sorted(blobs)
    ]
    release = policy["release"]
    content = {
        "schema_version": 1,
        "release_kind": release["kind"],
        "proof_contract_version": state["proof_contract_version"],
        "main_theorem_status": state["main_theorem_status"],
        "manuscript_claim_status": state["manuscript_claim_status"],
        "manuscript_alignment_status": state["manuscript_alignment_status"],
        "source_git": {
            "commit": commit,
            "worktree_clean": True,
        },
        "files": records,
    }
    return (json.dumps(content, indent=2, sort_keys=True) + "\n").encode("utf-8")


def write_zip(output: Path, package_name: str, blobs: dict[str, bytes]) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    temporary = output.with_name(output.name + ".tmp")
    if temporary.exists():
        temporary.unlink()
    try:
        with zipfile.ZipFile(
            temporary,
            mode="w",
            compression=zipfile.ZIP_DEFLATED,
            compresslevel=9,
        ) as bundle:
            for relative in sorted(blobs):
                info = zipfile.ZipInfo(
                    f"{package_name}/{relative}", FIXED_ZIP_TIME
                )
                info.compress_type = zipfile.ZIP_DEFLATED
                info.create_system = 3
                info.external_attr = 0o100644 << 16
                info.flag_bits |= 0x800
                bundle.writestr(
                    info,
                    blobs[relative],
                    compress_type=zipfile.ZIP_DEFLATED,
                    compresslevel=9,
                )
        temporary.replace(output)
    finally:
        if temporary.exists():
            temporary.unlink()


def is_within(child: Path, parent: Path) -> bool:
    try:
        child.relative_to(parent)
        return True
    except ValueError:
        return False


def main() -> int:
    policy = verifier.load_policy()
    default = (
        ROOT
        / "lean4"
        / ".lake"
        / "releases"
        / policy["release"]["archive_name"]
    )
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, default=default)
    parser.add_argument("--memory-mib", type=int, default=24576)
    args = parser.parse_args()
    output = args.output.resolve()
    if output.suffix.casefold() != ".zip":
        verifier.fail("release output must have a .zip suffix")
    if is_within(output, ROOT) and not is_within(output, ROOT / "lean4" / ".lake"):
        verifier.fail("in-repository release artifacts must stay under lean4/.lake")

    result = check_proof_state.validate_state(
        require_release_ready=True,
        audit_sources=True,
    )
    run(
        [
            sys.executable,
            "scripts/run_kernel_gates.py",
            "--memory-mib",
            str(args.memory_mib),
        ]
    )
    commit = git_provenance()
    relatives = check_proof_state.release_source_relatives(result)
    blobs = {relative: (ROOT / relative).read_bytes() for relative in relatives}
    generated = policy["source_policy"]["generated_metadata"]
    blobs[generated] = content_manifest(policy, result["state"], blobs, commit)
    write_zip(output, policy["release"]["package_name"], blobs)
    content, sources = verifier.verify_archive(output)
    print(
        "[release:ok] "
        f"contract={content['proof_contract_version']} files={len(sources)} "
        f"sha256={verifier.sha256_bytes(output.read_bytes())} archive={output}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
