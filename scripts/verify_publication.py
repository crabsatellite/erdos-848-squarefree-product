#!/usr/bin/env python3
"""Fail closed on the public manuscript, theorem map, and Lean source boundary."""

from __future__ import annotations

import hashlib
import json
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
PAPER = ROOT / "paper"
TEX = PAPER / "erdos_848_kernel_asymptotic.tex"
PDF = PAPER / "Li_Erdos_848_Kernel_Asymptotic_2026.pdf"
THEOREM_MAP = PAPER / "theorem-map.json"
LEAN = ROOT / "lean4"
LEAN_MAP = LEAN / "Erdos848" / "MainTheoremTheoremMap.lean"
UPSTREAM = LEAN / "Erdos848" / "Asymptotic.lean"
UPSTREAM_SHA256 = "47B404412933FFEB0FACAB47598D8EC14373C204A3673A83D92004810D023B0B"


def fail(message: str) -> None:
    raise SystemExit(f"[publication:error] {message}")


def strip_lean_comments(text: str) -> str:
    """Remove nested block comments and line comments while preserving strings."""
    # Generated certificate leaves overwhelmingly contain no comments.  Avoid a
    # Python-level character walk for that common case; membership tests run in
    # optimized native code and preserve exactly the same result.
    if "/-" not in text and "--" not in text:
        return text
    out: list[str] = []
    i = 0
    depth = 0
    in_string = False
    while i < len(text):
        if depth:
            if text.startswith("/-", i):
                depth += 1
                i += 2
            elif text.startswith("-/", i):
                depth -= 1
                i += 2
            else:
                if text[i] == "\n":
                    out.append("\n")
                i += 1
            continue
        if in_string:
            out.append(text[i])
            if text[i] == "\\" and i + 1 < len(text):
                out.append(text[i + 1])
                i += 2
                continue
            if text[i] == '"':
                in_string = False
            i += 1
            continue
        if text.startswith("/-", i):
            depth = 1
            i += 2
        elif text.startswith("--", i):
            end = text.find("\n", i)
            if end == -1:
                break
            out.append("\n")
            i = end + 1
        else:
            if text[i] == '"':
                in_string = True
            out.append(text[i])
            i += 1
    if depth:
        fail("unterminated Lean block comment")
    return "".join(out)


def cite_keys(text: str) -> set[str]:
    keys: set[str] = set()
    for match in re.finditer(r"\\cite(?:\[[^]]*\])?\{([^}]*)\}", text):
        keys.update(key.strip() for key in match.group(1).split(",") if key.strip())
    return keys


def main() -> int:
    for path in (TEX, PDF, THEOREM_MAP, LEAN_MAP, UPSTREAM):
        if not path.is_file():
            fail(f"missing publication artifact: {path.relative_to(ROOT)}")

    claims = json.loads(THEOREM_MAP.read_text(encoding="utf-8"))
    mapped_names = {
        name for claim in claims for name in claim["lean"]
    }
    mapped_declaration = re.compile(
        r"\b(?:def|lemma|theorem|structure)\s+("
        + "|".join(re.escape(name) for name in sorted(mapped_names, key=len, reverse=True))
        + r")\b"
    )

    forbidden_paths = [
        ".github",
        "audit",
        "data",
        "src",
        "build.py",
        "PROJECT_MANIFEST.json",
        "lean4/chain-status",
        "lean4/vendor",
    ]
    for relative in forbidden_paths:
        if (ROOT / relative).exists():
            fail(f"internal/exploratory path is present: {relative}")

    expected_core = {
        "Erdos848.lean",
        "Erdos848/Asymptotic.lean",
        "Erdos848/DiagonalArithmeticCore.lean",
        "Erdos848/FinitePrefixChecker.lean",
        "Erdos848/HallReduction.lean",
        "Erdos848/IndexedDiagonalChecker.lean",
        "Erdos848/LowRangeArithmetic.lean",
        "Erdos848/LowRangeCombinatorics.lean",
        "Erdos848/LowRangeDegreeReduction.lean",
        "Erdos848/LowRangeDiagonalChecker.lean",
        "Erdos848/LowRangeGeneratedDiagonal.lean",
        "Erdos848/LowRangePrefixTraceChecker.lean",
        "Erdos848/MainTheorem.lean",
        "Erdos848/MainTheoremAxiomAudit.lean",
        "Erdos848/MainTheoremTheoremMap.lean",
        "Erdos848/OutsideTraceChecker.lean",
        "Erdos848/PrattCore.lean",
        "Erdos848/PrattTableExtensionChecker.lean",
        "Erdos848/PrefixClose.lean",
        "Erdos848/PrefixTraceChecker.lean",
        "Erdos848/ProblemCore.lean",
        "Erdos848/TailCombinatorics.lean",
        "Erdos848/TailCRTCounting.lean",
        "Erdos848/TailDiagonalEnvelope.lean",
        "Erdos848/TailFiniteSieve.lean",
        "Erdos848/TailFiveMillionBudget.lean",
        "Erdos848/TailFiveMillionFiniteDensity.lean",
        "Erdos848/TailPrimeCountingChecker.lean",
        "Erdos848/TailPrimeIntervalTreeChecker.lean",
        "Erdos848/TailQuadraticResidue.lean",
        "Erdos848/TailRootEnvelope.lean",
    }
    expected_diagonal = {
        "Erdos848/GeneratedDiagonalCoverage/Data.lean",
        "Erdos848/GeneratedDiagonalCoverage/IndexedData.lean",
        "Erdos848/GeneratedDiagonalCoverage/Progressions.lean",
        "Erdos848/GeneratedDiagonalCoverage/Certificate.lean",
        *(f"Erdos848/GeneratedDiagonalCoverage/RootDataChunk{i:04d}.lean"
          for i in range(112)),
        *(f"Erdos848/GeneratedDiagonalCoverage/MarkerSequenceChunk{i:04d}.lean"
          for i in range(155)),
        *(f"Erdos848/GeneratedDiagonalCoverage/CodeBlock{i:04d}.lean"
          for i in range(370)),
        *(f"Erdos848/GeneratedDiagonalCoverage/ProgressionBlock{i:04d}.lean"
          for i in range(460)),
        *(f"Erdos848/GeneratedDiagonalCoverage/RootBlock{i:04d}.lean"
          for i in range(112)),
    }
    expected_low_diagonal = {
        "Erdos848/GeneratedLowDiagonalCoverage/Data.lean",
        "Erdos848/GeneratedLowDiagonalCoverage/IndexedData.lean",
        "Erdos848/GeneratedLowDiagonalCoverage/Progressions.lean",
        "Erdos848/GeneratedLowDiagonalCoverage/CoreCertificate.lean",
        "Erdos848/GeneratedLowDiagonalCoverage/Certificate.lean",
        *(f"Erdos848/GeneratedLowDiagonalCoverage/RootDataChunk{i:04d}.lean"
          for i in range(43)),
        *(f"Erdos848/GeneratedLowDiagonalCoverage/MarkerSequenceChunk{i:04d}.lean"
          for i in range(31)),
        *(f"Erdos848/GeneratedLowDiagonalCoverage/MarkerSequenceChunkOdd{i:04d}.lean"
          for i in range(16)),
        *(f"Erdos848/GeneratedLowDiagonalCoverage/MarkerSequenceChunkModOne{i:04d}.lean"
          for i in range(8)),
        *(f"Erdos848/GeneratedLowDiagonalCoverage/MarkerSequenceChunkModThree{i:04d}.lean"
          for i in range(8)),
        *(f"Erdos848/GeneratedLowDiagonalCoverage/CodeBlock{i:04d}.lean"
          for i in range(309)),
        *(f"Erdos848/GeneratedLowDiagonalCoverage/ProgressionBlock{i:04d}.lean"
          for i in range(72)),
        *(f"Erdos848/GeneratedLowDiagonalCoverage/RootBlock{i:04d}.lean"
          for i in range(43)),
        *(f"Erdos848/GeneratedLowDiagonalCoverage/OrderBlock{i:04d}.lean"
          for i in range(148)),
        *(f"Erdos848/GeneratedLowDiagonalCoverage/ProjectionBlock{i:04d}.lean"
          for i in range(198)),
        *(f"Erdos848/GeneratedLowDiagonalCoverage/EnvelopeBlock{i:04d}.lean"
          for i in range(15)),
    }
    expected_pratt = {
        "Erdos848/GeneratedPrattCoverage/Data.lean",
        "Erdos848/GeneratedPrattCoverage/Certificate.lean",
        *(f"Erdos848/GeneratedPrattCoverage/DataChunk{i:04d}.lean"
          for i in range(388)),
        *(f"Erdos848/GeneratedPrattCoverage/Block{i:04d}.lean"
          for i in range(775)),
    }
    expected_factor = {
        "Erdos848/GeneratedFactorCoverage/Data.lean",
        "Erdos848/GeneratedFactorCoverage/Certificate.lean",
        *(f"Erdos848/GeneratedFactorCoverage/DataChunk{i:04d}.lean"
          for i in range(168)),
        *(f"Erdos848/GeneratedFactorCoverage/Block{i:04d}.lean"
          for i in range(168)),
    }
    expected_prefix_trace = {
        "Erdos848/GeneratedPrefixTraceCoverage/Oracle.lean",
        "Erdos848/GeneratedPrefixTraceCoverage/AnchorData.lean",
        "Erdos848/GeneratedPrefixTraceCoverage/AnchorCertificate.lean",
        "Erdos848/GeneratedPrefixTraceCoverage/CandidateData.lean",
        "Erdos848/GeneratedPrefixTraceCoverage/CandidateCertificate.lean",
        "Erdos848/GeneratedPrefixTraceCoverage/Certificate.lean",
        *(f"Erdos848/GeneratedPrefixTraceCoverage/AnchorDataChunk{i:04d}.lean"
          for i in range(118)),
        *(f"Erdos848/GeneratedPrefixTraceCoverage/AnchorBlock{i:04d}.lean"
          for i in range(118)),
        *(f"Erdos848/GeneratedPrefixTraceCoverage/CandidateDataChunk{i:04d}.lean"
          for i in range(617)),
        *(f"Erdos848/GeneratedPrefixTraceCoverage/CandidateBlock{i:04d}.lean"
          for i in range(617)),
    }
    expected_five_million_pratt = {
        "Erdos848/GeneratedFiveMillionPrattCoverage/Data.lean",
        "Erdos848/GeneratedFiveMillionPrattCoverage/Certificate.lean",
        *(f"Erdos848/GeneratedFiveMillionPrattCoverage/DataChunk{i:04d}.lean"
          for i in range(222)),
        *(f"Erdos848/GeneratedFiveMillionPrattCoverage/Block{i:04d}.lean"
          for i in range(2827)),
    }
    expected_five_million_factor = {
        "Erdos848/GeneratedFiveMillionFactorCoverage/Data.lean",
        "Erdos848/GeneratedFiveMillionFactorCoverage/Certificate.lean",
        *(f"Erdos848/GeneratedFiveMillionFactorCoverage/DataChunk{i:04d}.lean"
          for i in range(196)),
        *(f"Erdos848/GeneratedFiveMillionFactorCoverage/BlockLeft{i:04d}.lean"
          for i in range(196)),
        *(f"Erdos848/GeneratedFiveMillionFactorCoverage/BlockRight{i:04d}.lean"
          for i in range(196)),
    }
    expected_five_million_trace = {
        "Erdos848/GeneratedFiveMillionPrefixTrace/Oracle.lean",
        "Erdos848/GeneratedFiveMillionPrefixTrace/AnchorData.lean",
        "Erdos848/GeneratedFiveMillionPrefixTrace/AnchorCertificate.lean",
        "Erdos848/GeneratedFiveMillionPrefixTrace/OppositeData.lean",
        "Erdos848/GeneratedFiveMillionPrefixTrace/OppositeCertificate.lean",
        "Erdos848/GeneratedFiveMillionPrefixTrace/OutsideData.lean",
        "Erdos848/GeneratedFiveMillionPrefixTrace/OutsideCertificate.lean",
        "Erdos848/GeneratedFiveMillionPrefixTrace/Certificate.lean",
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/AnchorDataChunk{i:04d}.lean"
          for i in range(196)),
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/AnchorBlockPart{part}_{i:04d}.lean"
          for part in range(8) for i in range(196)),
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/AnchorBlockAssemble{i:04d}.lean"
          for i in range(196)),
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/OppositeDataChunk{i:04d}.lean"
          for i in range(196)),
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/OppositeBlockPart{part}_{i:04d}.lean"
          for part in range(2) for i in range(196)),
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/OppositeBlockAssemble{i:04d}.lean"
          for i in range(196)),
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/OutsideDataChunk{i:04d}.lean"
          for i in range(123)),
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/OutsideLocalBlockPart{part}_{i:04d}.lean"
          for part in range(2) for i in range(123)),
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/OutsideMarkerBlockPart{part}_{i:04d}.lean"
          for part in range(2) for i in range(123)),
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/OutsideLocalBlockAssemble{i:04d}.lean"
          for i in range(123)),
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/OutsideMarkerBlockAssemble{i:04d}.lean"
          for i in range(123)),
        *(f"Erdos848/GeneratedFiveMillionPrefixTrace/OutsideBlockAssemble{i:04d}.lean"
          for i in range(123)),
    }
    expected_tail_prime_pratt = {
        "Erdos848/GeneratedTailPrimePrattCoverage/Data.lean",
        "Erdos848/GeneratedTailPrimePrattCoverage/Certificate.lean",
        *(f"Erdos848/GeneratedTailPrimePrattCoverage/DataChunk{i:04d}.lean"
          for i in range(18)),
        *(f"Erdos848/GeneratedTailPrimePrattCoverage/ValidGroup{i:04d}.lean"
          for i in range(9)),
    }
    expected_tail_prime_interval = {
        "Erdos848/GeneratedTailPrimeIntervalCoverage/Certificate.lean",
        "Erdos848/GeneratedTailPrimeIntervalCoverage/WitnessTail.lean",
        *(f"Erdos848/GeneratedTailPrimeIntervalCoverage/Block{i:04d}.lean"
          for i in range(100)),
    }
    expected_lean = (
        expected_core | expected_diagonal | expected_low_diagonal
        | expected_pratt | expected_factor | expected_prefix_trace
        | expected_five_million_pratt | expected_five_million_factor
        | expected_five_million_trace | expected_tail_prime_pratt
        | expected_tail_prime_interval
    )
    actual_lean = {
        path.relative_to(LEAN).as_posix()
        for path in LEAN.rglob("*.lean")
        if ".lake" not in path.parts
    }
    if actual_lean != expected_lean:
        missing = sorted(expected_lean - actual_lean)
        unexpected = sorted(actual_lean - expected_lean)
        fail(
            "Lean publication closure drift: "
            f"missing={missing}, unexpected={unexpected}"
        )

    digest = hashlib.sha256(UPSTREAM.read_bytes()).hexdigest().upper()
    if digest != UPSTREAM_SHA256:
        fail(f"upstream source hash drift: {digest}")

    found_declarations: set[str] = set()
    for relative in sorted(actual_lean):
        path = LEAN / relative
        text = path.read_text(encoding="utf-8-sig")
        stripped = strip_lean_comments(text)
        found_declarations.update(mapped_declaration.findall(stripped))
        if re.search(r"\b(?:sorry|admit|native_decide)\b", stripped):
            fail(f"proof escape found in {relative}")
        if re.search(r"(?m)^\s*(?:axiom|unsafe)\b", stripped):
            fail(f"project axiom or unsafe declaration found in {relative}")
        for module in re.findall(r"(?m)^\s*import\s+([^\s]+)", stripped):
            if not (module == "Mathlib" or module.startswith("Mathlib.")
                    or module.startswith("Erdos848")):
                fail(f"non-public import {module!r} in {relative}")

    tex = TEX.read_text(encoding="utf-8")
    labels = set(re.findall(r"\\label\{([^}]+)\}", tex))
    lean_map = LEAN_MAP.read_text(encoding="utf-8")
    for claim in claims:
        label = claim["label"]
        if label not in labels:
            fail(f"theorem-map label absent from manuscript: {label}")
        for name in claim["lean"]:
            if name not in found_declarations:
                fail(f"mapped Lean declaration absent: {name}")
            if f"\\leanname{{{name}}}" not in tex:
                fail(f"mapped Lean declaration absent from manuscript: {name}")
            check = rf"(?m)^\s*#check\s+(?:Erdos848\.)?{re.escape(name)}\s*$"
            if re.search(check, lean_map) is None:
                fail(f"mapped Lean declaration lacks #check: {name}")

    cited = cite_keys(tex)
    bibitems = set(re.findall(r"\\bibitem\{([^}]+)\}", tex))
    if cited != bibitems:
        fail(f"citation drift: cited={sorted(cited)}, bibitems={sorted(bibitems)}")

    required_scope_sentences = [
        "This note does not claim a complete all-$N$ resolution",
        "the remaining tail",
        "No unchecked exploratory finite-search output is used",
    ]
    normalized_tex = " ".join(tex.split())
    for sentence in required_scope_sentences:
        if sentence not in normalized_tex:
            fail(f"missing scope boundary sentence: {sentence!r}")

    forbidden_tex = {
        r"chain-status": "internal chain-status language",
        r"\\input\{": "external TeX input",
        r"\\include\{": "external TeX include",
        r"thm:erdos-848-complete": "obsolete full-close label",
        r"prop:four-range-assembly": "obsolete four-range manuscript label",
        r"1\{,\}500\{,\}000": "obsolete prefix endpoint",
        r"5\\cdot10\^6": "obsolete exploratory threshold",
    }
    for pattern, description in forbidden_tex.items():
        if re.search(pattern, tex, re.IGNORECASE):
            fail(f"{description} found in manuscript")

    print(
        f"[publication:ok] theorem_map={len(claims)} citations={len(cited)} "
        f"lean_files={len(actual_lean)} upstream_sha256={digest[:12]}..."
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
