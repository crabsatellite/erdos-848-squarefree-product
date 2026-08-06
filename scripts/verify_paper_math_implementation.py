#!/usr/bin/env python3
"""Bind the manuscript's mathematical route to the Lean declarations that use it.

This gate is deliberately stricter than a repository-wide text search.  Every
paper marker is tied to a named declaration block, every declaration is in the
final theorem's import closure, and every designated consumer imports all of
the producers listed for that mathematical step.
"""

from __future__ import annotations

import argparse
import json
import os
import re
from pathlib import Path, PurePosixPath


ROOT = Path(
    os.environ.get(
        "ERDOS848_PUBLICATION_ROOT",
        str(Path(__file__).resolve().parents[1]),
    )
).resolve()
DEFAULT_MANIFEST = ROOT / "paper" / "math-implementation-map.json"
IMPORT_PATTERN = re.compile(
    r"(?m)^\s*import\s+(Erdos848(?:\.[A-Za-z0-9_']+)*)\s*$"
)
DECLARATION_PATTERN = re.compile(
    r"(?m)^(?:(?:private|protected|noncomputable|opaque)\s+)*"
    r"(?:def|theorem|lemma|structure|inductive|abbrev|instance|class)\b"
)


def fail(message: str) -> None:
    raise SystemExit(f"paper mathematics/implementation gate failed: {message}")


def repo_path(value: object, label: str) -> Path:
    if not isinstance(value, str) or not value:
        fail(f"{label} must be a nonempty repository-relative path")
    pure = PurePosixPath(value)
    if pure.is_absolute() or ".." in pure.parts or "\\" in value:
        fail(f"unsafe {label}: {value!r}")
    path = ROOT.joinpath(*pure.parts).resolve()
    try:
        path.relative_to(ROOT)
    except ValueError:
        fail(f"{label} escapes the repository: {value!r}")
    if not path.is_file():
        fail(f"missing {label}: {value}")
    return path


def read_text(path: Path) -> str:
    try:
        return path.read_text(encoding="utf-8-sig")
    except OSError as exc:
        fail(f"cannot read {path.relative_to(ROOT)}: {exc}")


def local_module_path(module: str) -> Path:
    return ROOT / "lean4" / Path(*module.split(".")).with_suffix(".lean")


def direct_imports(path: Path) -> tuple[Path, ...]:
    imports: list[Path] = []
    for module in IMPORT_PATTERN.findall(read_text(path)):
        imported = local_module_path(module).resolve()
        if not imported.is_file():
            fail(
                f"{path.relative_to(ROOT)} imports missing local module {module}"
            )
        imports.append(imported)
    return tuple(imports)


def import_closure(
    entrypoint: Path,
    cache: dict[Path, tuple[Path, ...]],
) -> set[Path]:
    pending = [entrypoint.resolve()]
    seen: set[Path] = set()
    while pending:
        path = pending.pop()
        if path in seen:
            continue
        seen.add(path)
        dependencies = cache.get(path)
        if dependencies is None:
            dependencies = direct_imports(path)
            cache[path] = dependencies
        pending.extend(item for item in dependencies if item not in seen)
    return seen


def declaration_block(path: Path, anchor: str) -> str:
    text = read_text(path)
    occurrences = [match.start() for match in re.finditer(re.escape(anchor), text)]
    if len(occurrences) != 1:
        fail(
            f"{path.relative_to(ROOT)}: declaration anchor {anchor!r} "
            f"occurs {len(occurrences)} times"
        )
    anchor_index = occurrences[0]
    starts = [match.start() for match in DECLARATION_PATTERN.finditer(text)]
    preceding = [start for start in starts if start <= anchor_index]
    if not preceding:
        fail(
            f"{path.relative_to(ROOT)}: {anchor!r} is not inside a declaration"
        )
    start = preceding[-1]
    end = next((item for item in starts if item > anchor_index), len(text))
    block = text[start:end]
    if anchor not in block:
        fail(
            f"{path.relative_to(ROOT)}: {anchor!r} escaped its declaration block"
        )
    return block


def string_list(value: object, label: str) -> list[str]:
    if not (
        isinstance(value, list)
        and value
        and all(isinstance(item, str) and item for item in value)
    ):
        fail(f"{label} must be a nonempty list of strings")
    return value


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("manifest", nargs="?", default=str(DEFAULT_MANIFEST))
    parser.add_argument("--quiet", action="store_true")
    args = parser.parse_args()

    manifest_path = Path(args.manifest)
    if not manifest_path.is_absolute():
        manifest_path = ROOT / manifest_path
    payload = json.loads(read_text(manifest_path))
    if payload.get("schema_version") != 1:
        fail("unsupported manifest schema")

    manuscript = repo_path(payload.get("manuscript"), "manuscript")
    tex = read_text(manuscript)
    final_entrypoint = repo_path(
        payload.get("lean_entrypoint"), "lean_entrypoint"
    )
    cache: dict[Path, tuple[Path, ...]] = {}
    final_closure = import_closure(final_entrypoint, cache)

    entries = payload.get("entries")
    if not isinstance(entries, list) or not entries:
        fail("manifest has no entries")
    seen_ids: set[str] = set()
    declarations_checked = 0
    for entry in entries:
        if not isinstance(entry, dict):
            fail("entry must be an object")
        entry_id = entry.get("id")
        if not isinstance(entry_id, str) or not entry_id or entry_id in seen_ids:
            fail(f"invalid or duplicate entry id: {entry_id!r}")
        seen_ids.add(entry_id)

        for marker in string_list(
            entry.get("paper_markers"), f"{entry_id}.paper_markers"
        ):
            if marker not in tex:
                fail(f"{entry_id}: manuscript marker {marker!r} is absent")

        bindings = entry.get("bindings")
        if not isinstance(bindings, list) or not bindings:
            fail(f"{entry_id}: bindings are absent")
        producer_paths: set[Path] = set()
        consumer_paths: set[Path] = set()
        for index, binding in enumerate(bindings):
            if not isinstance(binding, dict):
                fail(f"{entry_id}.bindings[{index}] must be an object")
            role = binding.get("role")
            if role not in {"producer", "consumer"}:
                fail(f"{entry_id}.bindings[{index}]: invalid role {role!r}")
            path = repo_path(
                binding.get("path"), f"{entry_id}.bindings[{index}].path"
            )
            if path not in final_closure:
                fail(
                    f"{entry_id}: {path.relative_to(ROOT)} is outside the "
                    "final theorem import closure"
                )
            anchor = binding.get("declaration")
            if not isinstance(anchor, str) or not anchor:
                fail(f"{entry_id}.bindings[{index}]: declaration is absent")
            block = declaration_block(path, anchor)
            for exact in string_list(
                binding.get("contains"),
                f"{entry_id}.bindings[{index}].contains",
            ):
                if exact not in block:
                    fail(
                        f"{entry_id}: {exact!r} is not inside declaration "
                        f"{anchor!r} in {path.relative_to(ROOT)}"
                    )
            declarations_checked += 1
            (producer_paths if role == "producer" else consumer_paths).add(path)

        if not producer_paths or not consumer_paths:
            fail(f"{entry_id}: both producer and consumer bindings are required")
        for consumer in consumer_paths:
            consumer_closure = import_closure(consumer, cache)
            missing = sorted(
                producer.relative_to(ROOT).as_posix()
                for producer in producer_paths
                if producer not in consumer_closure
            )
            if missing:
                fail(
                    f"{entry_id}: consumer {consumer.relative_to(ROOT)} does not "
                    f"import producers {missing}"
                )

    if not args.quiet:
        print(
            "paper mathematics/implementation gate passed: "
            f"{len(entries)} mathematical steps, "
            f"{declarations_checked} declaration-local bindings"
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
