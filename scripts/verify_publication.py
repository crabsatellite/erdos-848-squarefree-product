#!/usr/bin/env python3
"""Fail closed on the manuscript and the exact Lean source dependency closure."""

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
LEAN_ROOT = LEAN / "Erdos848.lean"
LEAN_MAP = LEAN / "Erdos848" / "MainTheoremTheoremMap.lean"
AXIOM_AUDIT = LEAN / "Erdos848" / "MainTheoremAxiomAudit.lean"
UPSTREAM = LEAN / "Erdos848" / "Asymptotic.lean"
UPSTREAM_SHA256 = "47B404412933FFEB0FACAB47598D8EC14373C204A3673A83D92004810D023B0B"


def fail(message: str) -> None:
    raise SystemExit(f"[publication:error] {message}")


def strip_lean_comments(text: str) -> str:
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


def erdos_module_path(module: str) -> Path | None:
    if module == "Erdos848":
        return LEAN_ROOT
    prefix = "Erdos848."
    if not module.startswith(prefix):
        return None
    return LEAN / "Erdos848" / Path(*module[len(prefix):].split(".")).with_suffix(
        ".lean"
    )


def lean_dependency_closure(roots: list[Path]) -> set[Path]:
    closure: set[Path] = set()
    pending = list(roots)
    while pending:
        path = pending.pop()
        path = path.resolve()
        if path in closure:
            continue
        if not path.is_file():
            fail(f"missing Lean dependency: {path.relative_to(ROOT)}")
        closure.add(path)
        stripped = strip_lean_comments(path.read_text(encoding="utf-8-sig"))
        for module in re.findall(r"(?m)^\s*import\s+([^\s]+)", stripped):
            dependency = erdos_module_path(module)
            if dependency is not None:
                pending.append(dependency)
    return closure


def main() -> int:
    required = (
        TEX,
        PDF,
        THEOREM_MAP,
        LEAN_ROOT,
        LEAN_MAP,
        AXIOM_AUDIT,
        UPSTREAM,
    )
    for path in required:
        if not path.is_file():
            fail(f"missing publication artifact: {path.relative_to(ROOT)}")

    forbidden_paths = [
        ".github",
        "audit",
        "data",
        "src",
        "tmp",
        "build.py",
        "PROJECT_MANIFEST.json",
        "lean4/chain-status",
        "lean4/vendor",
    ]
    for relative in forbidden_paths:
        if (ROOT / relative).exists():
            fail(f"internal/exploratory path is present: {relative}")
    transient_paper = sorted(
        path.relative_to(ROOT).as_posix()
        for path in PAPER.iterdir()
        if path.suffix.lower() in {".aux", ".log", ".out"}
    )
    if transient_paper:
        fail(f"transient TeX files are present: {transient_paper}")

    expected_paths = lean_dependency_closure(
        [LEAN_ROOT, LEAN_MAP, AXIOM_AUDIT]
    )
    expected_lean = {
        path.relative_to(LEAN).as_posix() for path in expected_paths
    }
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

    claims = json.loads(THEOREM_MAP.read_text(encoding="utf-8"))
    mapped_names = {name for claim in claims for name in claim["lean"]}
    mapped_declaration = re.compile(
        r"\b(?:def|lemma|theorem|structure|inductive)\s+("
        + "|".join(
            re.escape(name)
            for name in sorted(mapped_names, key=len, reverse=True)
        )
        + r")\b"
    )

    found_declarations: set[str] = set()
    for relative in sorted(actual_lean):
        path = LEAN / relative
        stripped = strip_lean_comments(path.read_text(encoding="utf-8-sig"))
        found_declarations.update(mapped_declaration.findall(stripped))
        if re.search(r"\b(?:sorry|admit|native_decide)\b", stripped):
            fail(f"proof escape found in {relative}")
        if re.search(r"(?m)^\s*(?:axiom|unsafe)\b", stripped):
            fail(f"project axiom or unsafe declaration found in {relative}")
        for module in re.findall(r"(?m)^\s*import\s+([^\s]+)", stripped):
            if not (
                module == "Mathlib"
                or module.startswith("Mathlib.")
                or module == "Erdos848"
                or module.startswith("Erdos848.")
            ):
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

    normalized_tex = " ".join(tex.split())
    required_scope_sentences = [
        "This note does not claim a complete all-$N$ resolution",
        "two remaining mathematical obligations",
        "No unchecked exploratory finite-search output is used",
    ]
    for sentence in required_scope_sentences:
        if sentence not in normalized_tex:
            fail(f"missing scope boundary sentence: {sentence!r}")

    forbidden_tex = {
        r"chain-status": "internal chain-status language",
        r"\\input\{": "external TeX input",
        r"\\include\{": "external TeX include",
        r"thm:erdos-848-complete": "obsolete full-close label",
        r"prop:four-range-assembly": "obsolete four-range manuscript label",
    }
    for pattern, description in forbidden_tex.items():
        if re.search(pattern, tex, re.IGNORECASE):
            fail(f"{description} found in manuscript")

    digest = hashlib.sha256(UPSTREAM.read_bytes()).hexdigest().upper()
    if digest != UPSTREAM_SHA256:
        fail(f"upstream source hash drift: {digest}")

    print(
        f"[publication:ok] theorem_map={len(claims)} citations={len(cited)} "
        f"lean_files={len(actual_lean)} upstream_sha256={digest[:12]}..."
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
