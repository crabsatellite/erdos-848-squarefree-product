#!/usr/bin/env python3
"""Verify an exact per-result manuscript-to-Lean correspondence."""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_MANIFEST = ROOT / "paper" / "lean-proof-components.json"
THEOREM_PATTERN = re.compile(
    r"\\begin\{(?:theorem|proposition|lemma|corollary)\}"
    r"(?:\[[^\]]*\])?\s*\\label\{([^}]+)\}"
)
IMPORT_PATTERN = re.compile(
    r"(?m)^\s*import\s+(Erdos848(?:\.[A-Za-z0-9_']+)*)\s*$"
)


def fail(message: str) -> None:
    raise SystemExit(f"paper/Lean correspondence gate failed: {message}")


def read_text(path: Path) -> str:
    if not path.is_file():
        fail(f"missing file: {path.relative_to(ROOT)}")
    return path.read_text(encoding="utf-8-sig")


def local_module_path(module: str) -> Path:
    parts = module.split(".")
    return ROOT / "lean4" / Path(*parts).with_suffix(".lean")


def import_closure(
    entrypoints: list[Path],
    dependency_cache: dict[Path, tuple[Path, ...]],
) -> set[Path]:
    pending = [entrypoint.resolve() for entrypoint in entrypoints]
    seen: set[Path] = set()
    while pending:
        path = pending.pop()
        if path in seen:
            continue
        seen.add(path)
        dependencies = dependency_cache.get(path)
        if dependencies is None:
            text = read_text(path)
            dependencies = tuple(
                local_module_path(module).resolve()
                for module in IMPORT_PATTERN.findall(text)
            )
            dependency_cache[path] = dependencies
        for dependency in dependencies:
            if dependency not in seen:
                pending.append(dependency)
    return seen


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("manifest", nargs="?", default=str(DEFAULT_MANIFEST))
    parser.add_argument("--quiet", action="store_true")
    args = parser.parse_args()

    manifest_path = Path(args.manifest)
    if not manifest_path.is_absolute():
        manifest_path = ROOT / manifest_path
    payload = json.loads(read_text(manifest_path))
    if payload.get("schema_version") != 2:
        fail("unsupported manifest schema")

    tex_path = ROOT / payload["manuscript"]
    tex = read_text(tex_path)
    numbered_labels = THEOREM_PATTERN.findall(tex)
    if len(numbered_labels) != len(set(numbered_labels)):
        fail("duplicate numbered-result label in manuscript")

    theorem_map_path = ROOT / payload["theorem_map"]
    theorem_map = json.loads(read_text(theorem_map_path))
    mapped_endpoint_labels = {item["label"] for item in theorem_map}
    endpoints = [name for item in theorem_map for name in item["lean"]]
    expected_endpoint_count = payload.get("published_endpoint_count")
    if len(endpoints) != expected_endpoint_count:
        fail(
            "published endpoint count drift: "
            f"expected={expected_endpoint_count}, actual={len(endpoints)}"
        )
    if payload.get("paper_endpoint_count_marker") not in tex:
        fail("manuscript endpoint-count marker is absent")

    results = payload.get("results")
    if not isinstance(results, list) or not results:
        fail("manifest has no result mappings")
    covered_labels: list[str] = []
    module_paths: set[Path] = set()
    anchors_checked = 0
    for result in results:
        label = result.get("label")
        if not isinstance(label, str) or not label:
            fail(f"invalid result label: {label!r}")
        anchors = result.get("anchors")
        if not isinstance(anchors, list) or not anchors:
            fail(f"{label}: source anchors are absent")
        covered_labels.append(label)
        for item in anchors:
            if (
                not isinstance(item, list)
                or len(item) != 2
                or not all(isinstance(value, str) for value in item)
            ):
                fail(f"{label}: malformed source anchor")
            path = (ROOT / item[0]).resolve()
            module_paths.add(path)
            if item[1] not in read_text(path):
                fail(f"{label}: missing Lean source anchor {item[1]!r}")
            anchors_checked += 1

    if len(covered_labels) != len(set(covered_labels)):
        fail("a manuscript label has more than one result-map entry")
    expected_labels = set(numbered_labels) | {"eq:target"}
    actual_labels = set(covered_labels)
    missing = sorted(expected_labels - actual_labels)
    extra = sorted(actual_labels - expected_labels)
    if missing or extra:
        fail(f"result-map label drift: missing={missing}, extra={extra}")
    unmapped_endpoints = sorted(mapped_endpoint_labels - actual_labels)
    if unmapped_endpoints:
        fail(f"theorem-map endpoints lack proof components: {unmapped_endpoints}")

    entrypoint = (ROOT / payload["lean_entrypoint"]).resolve()
    dependency_cache: dict[Path, tuple[Path, ...]] = {}
    closure = import_closure([entrypoint], dependency_cache)
    outside = sorted(
        path.relative_to(ROOT).as_posix()
        for path in module_paths
        if path not in closure
    )
    if outside:
        fail(f"component modules are outside the publication cone: {outside}")

    publication_entrypoints = payload.get("publication_entrypoints")
    if not isinstance(publication_entrypoints, list) or not publication_entrypoints:
        fail("publication entrypoints are absent")
    publication_closure = import_closure(
        [(ROOT / relative).resolve() for relative in publication_entrypoints],
        dependency_cache,
    )
    expected_module_count = payload.get("published_module_count")
    if len(publication_closure) != expected_module_count:
        fail(
            "publication module count drift: "
            f"expected={expected_module_count}, actual={len(publication_closure)}"
        )
    if payload.get("paper_module_count_marker") not in tex:
        fail("manuscript publication-module-count marker is absent")

    if not args.quiet:
        print(
            "paper/Lean correspondence gate passed: "
            f"{len(numbered_labels)} numbered results, "
            f"{len(module_paths)} exact source files, "
            f"{anchors_checked} per-result declaration anchors, "
            f"{len(publication_closure)} publication modules"
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
