#!/usr/bin/env python3
"""Fail closed when the paper and kernel proof describe different versions."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import subprocess
from pathlib import Path, PurePosixPath


ROOT = Path(
    os.environ.get(
        "ERDOS848_PUBLICATION_ROOT",
        str(Path(__file__).resolve().parents[1]),
    )
).resolve()
STATE_PATH = ROOT / "proof-state.json"
POLICY_PATH = ROOT / "release-manifest.json"
SHA256_RE = re.compile(r"[0-9a-f]{64}")
LEAN_NAME_RE = re.compile(r"[A-Za-z_][A-Za-z0-9_'.?!]*")


def fail(message: str) -> None:
    raise SystemExit(f"[proof-state:error] {message}")


def load_json(path: Path, label: str | None = None) -> dict:
    name = label or path.relative_to(ROOT).as_posix()
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as exc:
        fail(f"cannot read {name}: {exc}")
    if not isinstance(value, dict):
        fail(f"{name} must contain a JSON object")
    return value


def sha256_bytes(payload: bytes) -> str:
    return hashlib.sha256(payload).hexdigest()


def repo_path(relative: object, label: str) -> Path:
    if not isinstance(relative, str) or not relative:
        fail(f"{label} must be a nonempty relative path")
    pure = PurePosixPath(relative)
    if pure.is_absolute() or ".." in pure.parts or "\\" in relative:
        fail(f"{label} is not a safe repository-relative path: {relative!r}")
    path = ROOT.joinpath(*pure.parts).resolve()
    try:
        path.relative_to(ROOT.resolve())
    except ValueError:
        fail(f"{label} escapes the repository: {relative!r}")
    return path


def require_sha256(value: object, label: str) -> str:
    if not isinstance(value, str) or SHA256_RE.fullmatch(value) is None:
        fail(f"{label} must be a lowercase SHA-256 digest")
    return value


def require_unique_strings(values: object, label: str, *, allow_empty: bool = False) -> list[str]:
    if not isinstance(values, list) or (not values and not allow_empty):
        fail(f"{label} must be {'a ' if not allow_empty else ''}list"
             + (" with at least one entry" if not allow_empty else ""))
    if not all(isinstance(value, str) and value for value in values):
        fail(f"{label} must contain only nonempty strings")
    if len(values) != len(set(values)):
        fail(f"{label} contains duplicates")
    return values


def strip_lean_comments(text: str) -> str:
    """Remove nested Lean comments while preserving strings and line breaks."""
    out: list[str] = []
    index = 0
    depth = 0
    in_string = False
    while index < len(text):
        if depth:
            if text.startswith("/-", index):
                depth += 1
                index += 2
            elif text.startswith("-/", index):
                depth -= 1
                index += 2
            else:
                if text[index] == "\n":
                    out.append("\n")
                index += 1
            continue
        if in_string:
            out.append(text[index])
            if text[index] == "\\" and index + 1 < len(text):
                out.append(text[index + 1])
                index += 2
                continue
            if text[index] == '"':
                in_string = False
            index += 1
            continue
        if text.startswith("/-", index):
            depth = 1
            index += 2
        elif text.startswith("--", index):
            end = text.find("\n", index)
            if end < 0:
                break
            out.append("\n")
            index = end + 1
        else:
            if text[index] == '"':
                in_string = True
            out.append(text[index])
            index += 1
    if depth:
        fail("unterminated Lean block comment")
    return "".join(out)


def lean_module_path(module: str, lean_root: Path, prefix: str) -> Path | None:
    if module == prefix:
        return lean_root / f"{prefix}.lean"
    if not module.startswith(prefix + "."):
        return None
    suffix = module[len(prefix) + 1 :].split(".")
    return lean_root / prefix / Path(*suffix).with_suffix(".lean")


def lean_header_imports(path: Path) -> list[str]:
    """Read only the import header, never a multi-megabyte certificate body."""
    size = 8 * 1024
    limit = 1024 * 1024
    while size <= limit:
        try:
            with path.open("r", encoding="utf-8-sig") as stream:
                header = stream.read(size)
                truncated = stream.read(1) != ""
        except OSError as exc:
            fail(f"cannot read Lean header {path}: {exc}")
        try:
            stripped = strip_lean_comments(header)
        except SystemExit:
            if truncated and size < limit:
                size *= 4
                continue
            raise
        imports: list[str] = []
        reached_code = False
        for line in stripped.splitlines():
            line = line.strip()
            if not line:
                continue
            match = re.fullmatch(r"import\s+(.+)", line)
            if match is None:
                reached_code = True
                break
            imports.extend(match.group(1).split())
        if reached_code or not truncated:
            return imports
        size *= 4
    fail(f"Lean import header exceeds {limit} bytes: {path}")


def local_lean_closure(
    roots: list[Path], lean_root: Path, prefix: str
) -> set[Path]:
    closure: set[Path] = set()
    pending = list(roots)
    while pending:
        path = pending.pop().resolve()
        if path in closure:
            continue
        if not path.is_file():
            try:
                relative = path.relative_to(ROOT)
            except ValueError:
                relative = path
            fail(f"missing Lean source: {relative}")
        try:
            path.relative_to(lean_root.resolve())
        except ValueError:
            fail(f"Lean source is outside the Lean project: {path}")
        closure.add(path)
        for module in lean_header_imports(path):
            dependency = lean_module_path(module, lean_root, prefix)
            if dependency is not None:
                pending.append(dependency)
    return closure


def scan_forbidden_tokens(
    closure: set[Path], lean_root: Path, forbidden: list[str]
) -> None:
    """Use one native scan, then parse comments only in the few candidate files."""
    alternation = "|".join(re.escape(token) for token in forbidden)
    pattern = rf"(?<![A-Za-z0-9_.])(?:{alternation})(?![A-Za-z0-9_.])"
    try:
        completed = subprocess.run(
            [
                "rg",
                "--pcre2",
                "-l",
                "-g",
                "*.lean",
                pattern,
                str(lean_root),
            ],
            cwd=ROOT,
            check=False,
            text=True,
            encoding="utf-8",
            errors="replace",
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        )
    except OSError as exc:
        fail(f"cannot run rg for the forbidden-token audit: {exc}")
    if completed.returncode not in {0, 1}:
        fail(f"rg forbidden-token audit failed: {completed.stderr.strip()}")
    closure_resolved = {path.resolve() for path in closure}
    candidates = {
        Path(line).resolve()
        for line in completed.stdout.splitlines()
        if line.strip()
    } & closure_resolved
    for path in sorted(candidates):
        source = strip_lean_comments(path.read_text(encoding="utf-8-sig"))
        for token in forbidden:
            if re.search(
                rf"(?<![A-Za-z0-9_.]){re.escape(token)}(?![A-Za-z0-9_.])",
                source,
            ):
                fail(
                    f"forbidden Lean token {token!r} in "
                    f"{path.relative_to(ROOT).as_posix()}"
                )


def checked_symbols(source: str, directive: str) -> list[str]:
    pattern = (
        rf"(?m)^\s*{re.escape(directive)}\s+"
        rf"({LEAN_NAME_RE.pattern})\s*$"
    )
    return re.findall(pattern, source)


def normalized_symbol(symbol: str, prefix: str) -> str:
    return symbol if symbol.startswith(prefix + ".") else f"{prefix}.{symbol}"


def paper_endpoints(theorem_map: object, prefix: str) -> list[str]:
    if not isinstance(theorem_map, list) or not theorem_map:
        fail("paper theorem map must be a nonempty JSON list")
    labels: list[str] = []
    endpoints: list[str] = []
    for index, claim in enumerate(theorem_map):
        if not isinstance(claim, dict):
            fail(f"paper theorem map entry {index} must be an object")
        label = claim.get("label")
        if not isinstance(label, str) or not label:
            fail(f"paper theorem map entry {index} has no label")
        labels.append(label)
        names = require_unique_strings(
            claim.get("lean"), f"paper theorem map entry {label}.lean"
        )
        endpoints.extend(normalized_symbol(name, prefix) for name in names)
    if len(labels) != len(set(labels)):
        fail("paper theorem map contains duplicate labels")
    if len(endpoints) != len(set(endpoints)):
        fail("paper theorem map contains duplicate Lean endpoints")
    return endpoints


def extract_string_def(source: str, name: str) -> str:
    pattern = (
        rf"\bdef\s+{re.escape(name)}\s*:\s*String\s*:=\s*"
        r'"([^"\r\n]*)"'
    )
    matches = re.findall(pattern, strip_lean_comments(source))
    if len(matches) != 1:
        fail(f"expected exactly one String definition {name}; found {len(matches)}")
    return matches[0]


def validate_pins(policy: dict) -> None:
    pins = policy.get("pins")
    if not isinstance(pins, dict):
        fail("release-manifest.pins must be an object")
    toolchain_path = ROOT / "lean4" / "lean-toolchain"
    manifest_path = ROOT / "lean4" / "lake-manifest.json"
    toolchain = toolchain_path.read_text(encoding="utf-8-sig").strip()
    if toolchain != pins.get("lean_toolchain"):
        fail("Lean toolchain differs from release-manifest.json")
    if sha256_bytes(toolchain_path.read_bytes()) != require_sha256(
        pins.get("lean_toolchain_sha256"), "pins.lean_toolchain_sha256"
    ):
        fail("lean-toolchain SHA-256 differs from release-manifest.json")
    if sha256_bytes(manifest_path.read_bytes()) != require_sha256(
        pins.get("lake_manifest_sha256"), "pins.lake_manifest_sha256"
    ):
        fail("lake-manifest.json SHA-256 differs from release-manifest.json")
    lake = load_json(manifest_path, "lean4/lake-manifest.json")
    packages = lake.get("packages")
    if not isinstance(packages, list):
        fail("lake-manifest.json has no packages list")
    actual: dict[str, str] = {}
    for package in packages:
        if not isinstance(package, dict):
            fail("lake-manifest.json contains a non-object package")
        name, revision = package.get("name"), package.get("rev")
        if not isinstance(name, str) or not isinstance(revision, str):
            fail("lake-manifest package lacks name or revision")
        if name in actual:
            fail(f"duplicate Lake package {name}")
        actual[name] = revision
    if actual != pins.get("packages"):
        fail("Lake package revisions differ from release-manifest.json")


def validate_state(
    *, require_release_ready: bool = False, audit_sources: bool = False
) -> dict:
    state = load_json(STATE_PATH)
    policy = load_json(POLICY_PATH)
    if state.get("schema_version") != 1:
        fail("proof-state schema_version must be 1")
    if policy.get("schema_version") != 1:
        fail("release-manifest schema_version must be 1")
    if state.get("formalization_mode") != "kernel-only":
        fail("formalization_mode must be kernel-only")

    machine_status = state.get("main_theorem_status")
    claim_status = state.get("manuscript_claim_status")
    alignment_status = state.get("manuscript_alignment_status")
    if machine_status not in {"open", "closed"}:
        fail("main_theorem_status must be open or closed")
    if claim_status not in {"partial", "complete"}:
        fail("manuscript_claim_status must be partial or complete")
    if alignment_status not in {"open", "aligned"}:
        fail("manuscript_alignment_status must be open or aligned")
    blockers = state.get("manuscript_alignment_blockers")
    if alignment_status == "open":
        require_unique_strings(blockers, "manuscript_alignment_blockers")
    elif blockers not in (None, []):
        fail("aligned state must not retain manuscript alignment blockers")
    if machine_status == "closed" and (
        claim_status != "complete" or alignment_status != "aligned"
    ):
        fail("closed machine theorem requires a complete, aligned manuscript")
    if alignment_status == "aligned" and (
        machine_status != "closed" or claim_status != "complete"
    ):
        fail("aligned manuscript requires a closed machine theorem and complete claim")

    contract_version = state.get("proof_contract_version")
    if not isinstance(contract_version, str) or not re.fullmatch(
        r"[a-z0-9][a-z0-9._-]+", contract_version
    ):
        fail("proof_contract_version is malformed")
    paper_contract_path = repo_path(
        state.get("paper_contract_path"), "paper_contract_path"
    )
    paper = load_json(paper_contract_path)
    if paper.get("schema_version") != 1:
        fail("paper contract schema_version must be 1")
    if paper.get("proof_contract_version") != contract_version:
        fail("paper and machine proof contract versions differ")
    if paper.get("claim_status") != claim_status:
        fail("paper contract claim status differs from proof-state.json")

    tex_path = repo_path(paper.get("tex_path"), "paper contract tex_path")
    pdf_path = repo_path(paper.get("pdf_path"), "paper contract pdf_path")
    map_path = repo_path(
        paper.get("theorem_map_path"), "paper contract theorem_map_path"
    )
    for path, digest_key in (
        (tex_path, "tex_sha256"),
        (pdf_path, "pdf_sha256"),
        (map_path, "theorem_map_sha256"),
    ):
        if not path.is_file():
            fail(f"paper artifact is missing: {path.relative_to(ROOT).as_posix()}")
        expected = require_sha256(
            paper.get(digest_key), f"paper contract {digest_key}"
        )
        actual = sha256_bytes(path.read_bytes())
        if actual != expected:
            fail(
                f"paper artifact hash mismatch for "
                f"{path.relative_to(ROOT).as_posix()}: expected={expected}, actual={actual}"
            )
    scope = paper.get("scope")
    if not isinstance(scope, dict):
        fail("paper contract scope must be an object")
    if scope.get("all_n_claimed") is not (claim_status == "complete"):
        fail("paper scope all_n_claimed disagrees with manuscript claim status")

    acceptance = state.get("acceptance")
    if not isinstance(acceptance, dict):
        fail("proof-state.acceptance must be an object")
    required_paths = {}
    for key in ("minimal_root", "theorem_map", "axiom_audit"):
        path = repo_path(acceptance.get(key), f"acceptance.{key}")
        if not path.is_file():
            fail(f"acceptance.{key} is missing: {path.relative_to(ROOT)}")
        required_paths[key] = path
    contract_lean = ROOT / "lean4" / "Erdos848" / "PublicationContract.lean"
    if not contract_lean.is_file():
        fail("lean4/Erdos848/PublicationContract.lean is missing")
    contract_source = contract_lean.read_text(encoding="utf-8-sig")
    if extract_string_def(
        contract_source, "publicationProofContractVersion"
    ) != contract_version:
        fail("Lean and proof-state contract versions differ")
    if extract_string_def(
        contract_source, "publicationMachineStatus"
    ) != machine_status:
        fail("Lean publicationMachineStatus differs from proof-state.json")

    prefix = policy.get("source_policy", {}).get("local_module_prefix")
    if not isinstance(prefix, str) or not prefix:
        fail("release manifest has no local_module_prefix")
    theorem_map = json.loads(map_path.read_text(encoding="utf-8"))
    endpoints = paper_endpoints(theorem_map, prefix)
    tex = tex_path.read_text(encoding="utf-8-sig")
    tex_labels = set(re.findall(r"\\label\{([^}]+)\}", tex))
    for claim in theorem_map:
        label = claim["label"]
        if label not in tex_labels:
            fail(f"paper theorem-map label is absent from TeX: {label}")
        for name in claim["lean"]:
            if f"\\leanname{{{name}}}" not in tex:
                fail(f"paper endpoint is absent from TeX: {name}")

    map_source = strip_lean_comments(
        required_paths["theorem_map"].read_text(encoding="utf-8-sig")
    )
    audit_source = strip_lean_comments(
        required_paths["axiom_audit"].read_text(encoding="utf-8-sig")
    )
    checked = [
        normalized_symbol(symbol, prefix)
        for symbol in checked_symbols(map_source, "#check")
    ]
    audited = [
        normalized_symbol(symbol, prefix)
        for symbol in checked_symbols(audit_source, "#print axioms")
    ]
    if checked != endpoints:
        fail("Lean publication theorem map differs from paper/theorem-map.json")
    if audited != endpoints:
        fail("Lean publication axiom audit differs from paper/theorem-map.json")

    if require_release_ready:
        expected = policy.get("expected_proof_state")
        if not isinstance(expected, dict):
            fail("release manifest has no expected_proof_state")
        for key, value in expected.items():
            if state.get(key) != value:
                fail(
                    f"release requires proof-state.{key}={value!r}; "
                    f"found {state.get(key)!r}"
                )
        release = policy.get("release")
        if not isinstance(release, dict):
            fail("release-manifest.release must be an object")
        for state_key in (
            "main_theorem_status",
            "manuscript_claim_status",
            "manuscript_alignment_status",
        ):
            if state.get(state_key) != release.get(state_key):
                fail(f"release policy and proof state disagree on {state_key}")

    lean_root = ROOT / policy["source_policy"]["lean_project_root"]
    closure: set[Path] = set(required_paths.values()) | {contract_lean}
    if audit_sources or require_release_ready:
        closure = local_lean_closure(
            list(required_paths.values()), lean_root, prefix
        )
        forbidden = require_unique_strings(
            acceptance.get("forbidden_source_tokens"),
            "acceptance.forbidden_source_tokens",
        )
        scan_forbidden_tokens(closure, lean_root, forbidden)

    main_theorem = state.get("main_theorem")
    if not isinstance(main_theorem, str) or not main_theorem.startswith(prefix + "."):
        fail("main_theorem must be a fully qualified local Lean name")
    main_short = main_theorem.rsplit(".", 1)[-1]
    mapped = main_theorem in endpoints
    if machine_status == "closed" and not mapped:
        fail("closed status requires the final theorem in the paper map")
    if machine_status == "open" and mapped:
        fail("open status cannot expose the final theorem as a publication endpoint")

    validate_pins(policy)
    print(
        "[proof-state:ok] "
        f"contract={contract_version} machine={machine_status} "
        f"manuscript={claim_status} alignment={alignment_status} "
        f"paper_endpoints={len(endpoints)} lean_closure={len(closure)}"
    )
    return {
        "state": state,
        "policy": policy,
        "paper": paper,
        "endpoints": endpoints,
        "lean_closure": closure,
        "paper_paths": {paper_contract_path, tex_path, pdf_path, map_path},
        "full_source_audit": audit_sources or require_release_ready,
    }


def release_source_relatives(result: dict) -> list[str]:
    if not result.get("full_source_audit"):
        fail("release source list requires a full source audit")
    policy = result["policy"]
    source_policy = policy.get("source_policy")
    if not isinstance(source_policy, dict):
        fail("release-manifest.source_policy must be an object")
    paths = set(result["lean_closure"]) | set(result["paper_paths"])
    fixed = require_unique_strings(
        source_policy.get("fixed_files"), "source_policy.fixed_files"
    )
    paths.update(repo_path(item, f"source_policy.fixed_files[{item}]") for item in fixed)
    forbidden_parts = set(
        require_unique_strings(
            source_policy.get("forbidden_path_components"),
            "source_policy.forbidden_path_components",
        )
    )
    forbidden_suffixes = set(
        require_unique_strings(
            source_policy.get("forbidden_suffixes"),
            "source_policy.forbidden_suffixes",
        )
    )
    generated = source_policy.get("generated_metadata")
    if not isinstance(generated, str) or not generated:
        fail("source_policy.generated_metadata must be a nonempty path")
    relatives: list[str] = []
    for path in paths:
        if not path.is_file():
            fail(f"release source is missing: {path}")
        relative = path.relative_to(ROOT).as_posix()
        pure = PurePosixPath(relative)
        if any(part in forbidden_parts for part in pure.parts):
            fail(f"forbidden path component in release source: {relative}")
        if pure.suffix in forbidden_suffixes:
            fail(f"forbidden suffix in release source: {relative}")
        if relative == generated:
            fail("generated release metadata entered the source set")
        relatives.append(relative)
    if len(relatives) != len(set(relatives)):
        fail("release source list contains duplicate paths")
    return sorted(relatives)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--require-release-ready",
        action="store_true",
        help="Also require closed theorem, complete paper, and aligned status.",
    )
    parser.add_argument(
        "--audit-sources",
        action="store_true",
        help="Traverse the complete local Lean import closure and scan forbidden tokens.",
    )
    parser.add_argument(
        "--emit-source-list",
        action="store_true",
        help="Print the exact release source whitelist as one JSON line.",
    )
    args = parser.parse_args()
    result = validate_state(
        require_release_ready=args.require_release_ready,
        audit_sources=args.audit_sources or args.emit_source_list,
    )
    if args.emit_source_list:
        print(
            "[proof-state:source-list] "
            + json.dumps(release_source_relatives(result), separators=(",", ":"))
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
