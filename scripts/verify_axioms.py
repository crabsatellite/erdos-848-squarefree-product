#!/usr/bin/env python3
"""Run the publication-root trust-zero audit and enforce its exact axiom set."""

from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"
AUDIT = "Erdos848/CertificateBoundaryAxiomAudit.lean"
PUBLICATION_ROOT = LEAN / "Erdos848" / "PublicationRoot.lean"
GENERATED_ASSEMBLY_ROOT = (
    LEAN / "Erdos848" / "PaperGeneratedCertificateProvider.lean"
)
ENDPOINTS = [
    "NonSquarefreeProductProp",
    "OriginalProblem848Statement",
    "originalA7_has_property",
    "erdos848_prefix_close",
    "erdos848_first_low_close",
    "erdos848_second_low_close",
    "PaperCertificateProvider.fiveToTenMillion",
    "PaperCertificateProvider.tenToTwentyMillion",
    "PaperCertificateProvider.twentyToFortyMillion",
    "PaperCertificateProvider.fortyMillionTail",
    "erdos848_paper_tail_close",
    "erdos848_all_N_of_certificates",
    "PaperGeneratedCertificateProvider.numericalCertificates",
    "PaperGeneratedCertificateProvider.tailClose",
    "PaperGeneratedCertificateProvider.all_N",
]
ALLOWED = {"propext", "Classical.choice", "Quot.sound"}
FORBIDDEN_SOURCE_TOKENS = (
    "axiom",
    "sorry",
    "admit",
    "native_decide",
    "opaque",
    "unsafe",
    "extern",
    "run_tac",
    "Lean.ofReduceBool",
    "Lean.trustCompiler",
)
LOCAL_IMPORT = re.compile(
    r"^\s*import\s+(Erdos848(?:\.[A-Za-z0-9_']+)+)\s*$",
    re.MULTILINE,
)
FORBIDDEN_PATTERN = re.compile(
    rf"(?<![A-Za-z0-9_'.])(?:"
    + "|".join(re.escape(token) for token in FORBIDDEN_SOURCE_TOKENS)
    + rf")(?![A-Za-z0-9_'.])"
)


def strip_comments_and_strings(source: str) -> str:
    """Preserve line numbers while removing nested comments and strings."""
    result: list[str] = []
    index = 0
    block_depth = 0
    in_string = False
    escaped = False
    while index < len(source):
        pair = source[index : index + 2]
        char = source[index]
        if block_depth:
            if pair == "/-":
                block_depth += 1
                result.extend("  ")
                index += 2
            elif pair == "-/":
                block_depth -= 1
                result.extend("  ")
                index += 2
            else:
                result.append("\n" if char == "\n" else " ")
                index += 1
            continue
        if in_string:
            result.append("\n" if char == "\n" else " ")
            if escaped:
                escaped = False
            elif char == "\\":
                escaped = True
            elif char == '"':
                in_string = False
            index += 1
            continue
        if pair == "--":
            while index < len(source) and source[index] != "\n":
                result.append(" ")
                index += 1
            continue
        if pair == "/-":
            block_depth = 1
            result.extend("  ")
            index += 2
            continue
        if char == '"':
            in_string = True
            result.append(" ")
            index += 1
            continue
        result.append(char)
        index += 1
    if block_depth or in_string:
        raise ValueError("unterminated Lean comment or string")
    return "".join(result)


def local_import_path(module: str) -> Path:
    return LEAN.joinpath(*module.split(".")).with_suffix(".lean")


def publication_dependency_sources() -> tuple[list[Path], list[str]]:
    # Audit both the mathematical publication root and the concrete generated
    # specialization consumed by the unconditional all-N theorem.
    pending = [PUBLICATION_ROOT, GENERATED_ASSEMBLY_ROOT]
    seen: set[Path] = set()
    failures: list[str] = []
    while pending:
        path = pending.pop()
        path = path.resolve()
        if path in seen:
            continue
        if not path.is_file():
            raise SystemExit(f"[source:error] missing local source: {path}")
        seen.add(path)
        source = path.read_text(encoding="utf-8-sig")
        for match in LOCAL_IMPORT.finditer(source):
            pending.append(local_import_path(match.group(1)))
        if FORBIDDEN_PATTERN.search(source) is None:
            continue
        stripped = strip_comments_and_strings(source)
        for match in FORBIDDEN_PATTERN.finditer(stripped):
            failures.append(
                f"{path.relative_to(ROOT)}:"
                f"{stripped.count(chr(10), 0, match.start()) + 1}: "
                f"{match.group(0)}"
            )
    return sorted(seen), failures


def verify_publication_sources() -> int:
    sources, failures = publication_dependency_sources()
    if failures:
        raise SystemExit(
            "[source:error] forbidden tokens in publication dependency cone:\n"
            + "\n".join(failures)
        )
    return len(sources)


def main() -> int:
    source_count = verify_publication_sources()
    proc = subprocess.run(
        [
            sys.executable,
            str(ROOT / "scripts" / "run_lean_guarded.py"),
            "--direct-lean",
            "--trim-working-set-at-mb",
            "12000",
            "--memory-mb",
            "16384",
            "--timeout-seconds",
            "1800",
            AUDIT,
        ],
        cwd=ROOT,
        text=True,
        encoding="utf-8",
        errors="replace",
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        timeout=1900,
    )
    output = proc.stdout
    if proc.returncode != 0:
        raise SystemExit(output or f"Lean audit failed with exit code {proc.returncode}")
    normalized_output = re.sub(r"\s+", " ", output)
    for endpoint in ENDPOINTS:
        qualified = re.escape("Erdos848." + endpoint)
        depends = re.search(
            rf"'{qualified}' depends on axioms: \[([^\]]*)\]",
            normalized_output,
        )
        independent = re.search(
            rf"'{qualified}' does not depend on any axioms",
            normalized_output,
        )
        if depends is None and independent is None:
            raise SystemExit(
                f"[axioms:error] missing audit line for {endpoint}\n{output}"
            )
        if depends is not None:
            actual = {
                axiom.strip()
                for axiom in depends.group(1).split(",")
                if axiom.strip()
            }
            unexpected = actual - ALLOWED
            if unexpected:
                raise SystemExit(
                    f"[axioms:error] forbidden axioms for {endpoint}: "
                    f"{sorted(unexpected)}"
                )
    print(
        f"[axioms:ok] endpoints={len(ENDPOINTS)} "
        f"sources={source_count} allowed={sorted(ALLOWED)}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
