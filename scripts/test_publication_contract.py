#!/usr/bin/env python3
"""Positive and fail-closed tests for the paper/machine version contract."""

from __future__ import annotations

import json
import os
import shutil
import stat
import subprocess
import sys
import tempfile
from pathlib import Path

import check_proof_state
import run_lean_guarded


ROOT = Path(__file__).resolve().parents[1]
CHECKER = Path(__file__).resolve().with_name("check_proof_state.py")
FIXTURE_FILES = [
    "proof-state.json",
    "certificate-pipeline.json",
    "release-manifest.json",
    "paper/proof-contract.json",
    "paper/erdos_848_kernel_asymptotic.tex",
    "paper/Li_Erdos_848_Kernel_Asymptotic_2026.pdf",
    "paper/theorem-map.json",
    "lean4/lean-toolchain",
    "lean4/lake-manifest.json",
    "lean4/.lake/erdos848-Erdos848-status.json",
    "lean4/Erdos848/PublicationContract.lean",
    "lean4/Erdos848/PublicationRoot.lean",
    "lean4/Erdos848/PaperGeneratedCertificateProvider.lean",
    "lean4/Erdos848/PublicationTheoremMap.lean",
    "lean4/Erdos848/PublicationAxiomAudit.lean",
]


def remove_readonly(function, path, _exc_info) -> None:
    os.chmod(path, stat.S_IWRITE)
    function(path)


def run_gate(tree: Path) -> subprocess.CompletedProcess[str]:
    env = os.environ.copy()
    env["ERDOS848_PUBLICATION_ROOT"] = str(tree)
    return subprocess.run(
        [sys.executable, "-B", str(CHECKER)],
        cwd=tree,
        env=env,
        check=False,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )


def require_pass(tree: Path, label: str) -> None:
    result = run_gate(tree)
    if result.returncode != 0:
        raise SystemExit(f"[contract-test:error] {label} should pass:\n{result.stdout}")
    print(f"[contract-test:pass] {label}")


def require_failure(tree: Path, label: str, expected: str) -> None:
    result = run_gate(tree)
    if result.returncode == 0 or expected not in result.stdout:
        raise SystemExit(
            f"[contract-test:error] {label} did not fail as expected "
            f"({expected!r}):\n{result.stdout}"
        )
    print(f"[contract-test:pass] {label} -> {expected}")


def copy_fixture(tree: Path) -> None:
    for relative in FIXTURE_FILES:
        source = ROOT / relative
        target = tree / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, target)


def test_import_gates(tree: Path) -> None:
    long_header = tree / "long-import-header.lean"
    modules = [f"Erdos848.GeneratedBoundary.Module{index:04d}" for index in range(400)]
    long_header.write_text(
        "".join(f"import {module}\n" for module in modules) + "\ndef marker := 1\n",
        encoding="utf-8",
    )
    parsed = check_proof_state.lean_header_imports(long_header)
    if parsed != modules:
        raise SystemExit(
            "[contract-test:error] bounded import reader truncated a long header"
        )
    print("[contract-test:pass] long generated import header is complete")

    missing_import = tree / "missing-local-import.lean"
    missing_import.write_text(
        "import Erdos848.ContractTestDefinitelyMissing\n",
        encoding="utf-8",
    )
    try:
        run_lean_guarded.local_imports(missing_import)
    except SystemExit as exc:
        if "missing local Lean source" not in str(exc):
            raise
    else:
        raise SystemExit(
            "[contract-test:error] guarded preflight accepted a missing local source"
        )
    print("[contract-test:pass] missing local import fails closed")


def main() -> int:
    drive_root = Path(ROOT.anchor)
    tree = Path(tempfile.mkdtemp(prefix="e848-contract-test-", dir=drive_root))
    try:
        copy_fixture(tree)
        test_import_gates(tree)
        require_pass(tree, "exact current paper-complete/kernel-closed checkpoint")

        paper_path = tree / "paper" / "proof-contract.json"
        original_paper = paper_path.read_bytes()
        paper = json.loads(original_paper)
        paper["proof_contract_version"] = "erdos-848-mismatched-version"
        paper_path.write_text(json.dumps(paper), encoding="utf-8")
        require_failure(
            tree,
            "paper contract version drift",
            "paper and machine proof contract versions differ",
        )
        paper_path.write_bytes(original_paper)

        tex_path = tree / "paper" / "erdos_848_kernel_asymptotic.tex"
        original_tex = tex_path.read_bytes()
        tex_path.write_bytes(original_tex + b"\n% drift\n")
        require_failure(tree, "TeX byte drift", "paper artifact hash mismatch")
        tex_path.write_bytes(original_tex)

        lean_path = tree / "lean4" / "Erdos848" / "PublicationContract.lean"
        original_lean = lean_path.read_text(encoding="utf-8")
        lean_path.write_text(
            original_lean.replace(
                "erdos-848-all-n-four-range-v1",
                "erdos-848-mismatched-version",
            ),
            encoding="utf-8",
        )
        require_failure(
            tree,
            "Lean contract version drift",
            "Lean and proof-state contract versions differ",
        )
        lean_path.write_text(original_lean, encoding="utf-8")

        theorem_map_path = (
            tree / "lean4" / "Erdos848" / "PublicationTheoremMap.lean"
        )
        original_theorem_map = theorem_map_path.read_text(encoding="utf-8")
        theorem_map_path.write_text(
            original_theorem_map.replace(
                "#check Erdos848.PaperGeneratedCertificateProvider.all_N\n",
                "",
            ),
            encoding="utf-8",
        )
        require_failure(
            tree,
            "final publication endpoint omitted from Lean theorem map",
            "Lean publication theorem map differs from paper/theorem-map.json",
        )
        theorem_map_path.write_text(original_theorem_map, encoding="utf-8")

        state_path = tree / "proof-state.json"
        state = json.loads(state_path.read_text(encoding="utf-8"))
        state["manuscript_alignment_status"] = "open"
        state["manuscript_alignment_blockers"] = ["fixture alignment drift"]
        state_path.write_text(json.dumps(state), encoding="utf-8")
        require_failure(
            tree,
            "closed machine with open alignment",
            "closed machine theorem requires a complete, aligned manuscript",
        )
        state_path.write_bytes((ROOT / "proof-state.json").read_bytes())

        status_path = (
            tree / "lean4" / ".lake" / "erdos848-Erdos848-status.json"
        )
        original_status = status_path.read_bytes()
        status = json.loads(original_status)
        status["build_input_signature"] = "0" * 64
        status_path.write_text(json.dumps(status), encoding="utf-8")
        require_failure(
            tree,
            "controlled-builder signature drift",
            "proof-state kernel evidence differs from controlled builder status",
        )
        status_path.write_bytes(original_status)

        pipeline_path = tree / "certificate-pipeline.json"
        original_pipeline = pipeline_path.read_bytes()
        pipeline = json.loads(original_pipeline)
        pipeline["certificate_boundary"]["kernel_evidence"][
            "build_input_signature"
        ] = "0" * 64
        pipeline_path.write_text(json.dumps(pipeline), encoding="utf-8")
        require_failure(
            tree,
            "certificate-pipeline evidence drift",
            "certificate-pipeline kernel evidence differs from controlled builder status",
        )
        pipeline_path.write_bytes(original_pipeline)
    finally:
        if tree.parent == drive_root and tree.name.startswith("e848-contract-test-"):
            shutil.rmtree(tree, onerror=remove_readonly)
    print("[contract-test:ok] all positive and fail-closed cases passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
