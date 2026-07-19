#!/usr/bin/env python3
"""Generate the five grouped trust-zero certificates for the E1 root row."""

from __future__ import annotations

import argparse
import re
from pathlib import Path


PROFILES = {
    "k2": (
        "GeneratedTailSupportProfileCoverage",
        "K2PrefixGroup*.lean",
        "k2PrefixGroup",
        2,
        "fiveMillionOddRootK2FeasiblePrefixes",
    ),
    "k3": (
        "GeneratedTailSupportProfileCoverage",
        "K3PrefixGroup*.lean",
        "k3PrefixGroup",
        3,
        "fiveMillionOddRootK3FeasiblePrefixes",
    ),
    "k4": (
        "GeneratedTailSupportProfileCoverage",
        "K4PrefixGroup*.lean",
        "k4PrefixGroup",
        4,
        "fiveMillionOddRootK4FeasiblePrefixes",
    ),
    "k5": (
        "GeneratedTailSupportCoverage",
        "PrefixGroup*.lean",
        "prefixGroup",
        5,
        "fiveMillionOddRootFeasiblePrefixes",
    ),
    "k6": (
        "GeneratedTailSupportProfileCoverage",
        "K6PrefixGroup*.lean",
        "k6PrefixGroup",
        6,
        "fiveMillionOddRootK6FeasiblePrefixes",
    ),
}


def group_number(path: Path, stem: str) -> int:
    match = re.fullmatch(
        rf"{re.escape(stem)}(\d{{4}})\.lean",
        path.name,
        flags=re.IGNORECASE,
    )
    if match is None:
        raise ValueError(f"unexpected group filename: {path}")
    return int(match.group(1))


def extract_group_definition(path: Path, name: str) -> str:
    source = path.read_text(encoding="utf-8")
    start = source.index(f"def {name} ")
    stop = source.index(f"\ntheorem {name}_passes", start)
    return source[start:stop].rstrip()


def render_profile(lean_root: Path, key: str) -> str:
    directory, pattern, stem, k, feasible = PROFILES[key]
    source_dir = lean_root / "Erdos848" / directory
    paths = sorted(
        source_dir.glob(pattern), key=lambda path: group_number(path, stem)
    )
    if not paths:
        raise ValueError(f"no source groups found for {key}")

    names = [f"{stem}{group_number(path, stem):04d}" for path in paths]
    chunks = [
        "import Erdos848.TailR263EvenOneRoot23Checker",
        "import Erdos848.TailSupportProfileChecker",
        "",
        "namespace Erdos848.GeneratedTailR263EvenOneRoot23",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
    ]
    for path, name in zip(paths, names, strict=True):
        chunks.append(extract_group_definition(path, name))
        chunks.extend(
            [
                "",
                f"theorem {name}_root23_passes :",
                f"    {name}.all",
                "      (Erdos848.fiveMillionR263EvenOneRoot23PrefixPasses "
                f"{k}) = true := by",
                "  decide",
                "",
            ]
        )

    certified = f"{key}CertifiedPrefixes"
    chunks.extend(
        [
            f"def {certified} : List (List Nat) :=",
            "  " + " ++\n  ".join(names),
            "",
            f"theorem {certified}_eq :",
            f"    {certified} = Erdos848.{feasible} := by",
            "  decide",
            "",
            f"theorem {certified}_pass :",
            f"    {certified}.all",
            "      (Erdos848.fiveMillionR263EvenOneRoot23PrefixPasses "
            f"{k}) = true := by",
            f"  simp only [{certified}, List.all_append]",
        ]
    )
    chunks.extend(f"  rw [{name}_root23_passes]" for name in names)
    chunks.extend(
        [
            "  decide",
            "",
            f"theorem {key}FeasiblePrefixes_root23_pass :",
            f"    Erdos848.{feasible}.all",
            "      (Erdos848.fiveMillionR263EvenOneRoot23PrefixPasses "
            f"{k}) = true := by",
            f"  rw [← {certified}_eq]",
            f"  exact {certified}_pass",
            "",
            f"#print axioms {key}FeasiblePrefixes_root23_pass",
            "",
            "end Erdos848.GeneratedTailR263EvenOneRoot23",
            "",
        ]
    )
    return "\n".join(chunks)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--lean-root",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "lean4",
    )
    parser.add_argument(
        "--profile",
        choices=[*PROFILES, "all"],
        default="all",
    )
    args = parser.parse_args()

    output_dir = (
        args.lean_root / "Erdos848" / "GeneratedTailR263EvenOneRoot23"
    )
    output_dir.mkdir(parents=True, exist_ok=True)
    profiles = PROFILES if args.profile == "all" else [args.profile]
    for key in profiles:
        output = output_dir / f"{key.upper()}Certificate.lean"
        output.write_text(render_profile(args.lean_root, key), encoding="utf-8")
        print(f"WROTE={output}")


if __name__ == "__main__":
    main()
