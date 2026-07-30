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


ROOT = Path(__file__).resolve().parents[1]
CHECKER = Path(__file__).resolve().with_name("check_proof_state.py")
FIXTURE_FILES = [
    "proof-state.json",
    "release-manifest.json",
    "paper/proof-contract.json",
    "paper/erdos_848_kernel_asymptotic.tex",
    "paper/Li_Erdos_848_Kernel_Asymptotic_2026.pdf",
    "paper/theorem-map.json",
    "lean4/lean-toolchain",
    "lean4/lake-manifest.json",
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


def main() -> int:
    drive_root = Path(ROOT.anchor)
    tree = Path(tempfile.mkdtemp(prefix="e848-contract-test-", dir=drive_root))
    try:
        copy_fixture(tree)
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
    finally:
        if tree.parent == drive_root and tree.name.startswith("e848-contract-test-"):
            shutil.rmtree(tree, onerror=remove_readonly)
    print("[contract-test:ok] all positive and fail-closed cases passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
