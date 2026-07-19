#!/usr/bin/env python3
"""Generate bounded Lean certificate leaves for the Erdős 848 five-twist row.

The existing support-profile certificates already partition every feasible
support list into small explicit groups.  This generator reuses those exact
groups and emits one kernel `decide` per group for the corrected `g = 5`
predicate.  No mathematical result is computed or trusted in Python: the
generated Lean sources contain the complete check and are accepted only after
Lean compiles them.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path
import re


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"
ERDOS = LEAN / "Erdos848"
TARGET = ERDOS / "GeneratedTailFiveTwistSupportCoverage"


@dataclass(frozen=True)
class Family:
    key: str
    bound: int
    source_dir: str
    source_stem: str
    source_namespace: str
    certified_name: str
    equality_theorem: str
    feasible_name: str


FAMILIES = (
    Family(
        "k3", 278, "GeneratedTailSupportProfileCoverage", "K3PrefixGroup",
        "GeneratedTailSupportProfileCoverage", "k3CertifiedPrefixes",
        "k3CertifiedPrefixes_eq", "fiveMillionOddRootK3FeasiblePrefixes",
    ),
    Family(
        "k4", 143, "GeneratedTailSupportProfileCoverage", "K4PrefixGroup",
        "GeneratedTailSupportProfileCoverage", "k4CertifiedPrefixes",
        "k4CertifiedPrefixes_eq", "fiveMillionOddRootK4FeasiblePrefixes",
    ),
    Family(
        "k5", 70, "GeneratedTailSupportCoverage", "PrefixGroup",
        "GeneratedTailSupportCoverage", "certifiedSupportPrefixes",
        "certifiedSupportPrefixes_eq", "fiveMillionOddRootFeasiblePrefixes",
    ),
    Family(
        "k6", 30, "GeneratedTailSupportProfileCoverage", "K6PrefixGroup",
        "GeneratedTailSupportProfileCoverage", "k6CertifiedPrefixes",
        "k6CertifiedPrefixes_eq", "fiveMillionOddRootK6FeasiblePrefixes",
    ),
)


def module_name(directory: str, stem: str) -> str:
    return f"Erdos848.{directory}.{stem}"


def source_groups(family: Family) -> list[str]:
    directory = ERDOS / family.source_dir
    groups = sorted(path.stem for path in directory.glob(f"{family.source_stem}*.lean"))
    if not groups:
        raise RuntimeError(f"no source groups found for {family.key}")
    return groups


def leaf_name(family: Family, source_stem: str) -> str:
    suffix = source_stem.removeprefix(family.source_stem)
    return f"{family.key.upper()}FiveTwistGroup{suffix}"


def source_group_name(source_stem: str) -> str:
    return source_stem[0].lower() + source_stem[1:]


def extract_group_body(family: Family, source_stem: str) -> str:
    source = (ERDOS / family.source_dir / f"{source_stem}.lean").read_text(
        encoding="utf-8-sig"
    )
    match = re.search(
        r"def\s+\w+\s*:\s*List \(List ℕ\)\s*:=\s*\n(.*?)\n\ntheorem",
        source,
        flags=re.DOTALL,
    )
    if match is None:
        raise RuntimeError(f"cannot extract explicit list from {source_stem}")
    return match.group(1)


def render_leaf(family: Family, source_stem: str, group_body: str) -> str:
    leaf = leaf_name(family, source_stem)
    group = leaf[0].lower() + leaf[1:]
    theorem = f"{leaf[0].lower() + leaf[1:]}_passes"
    return f"""import Erdos848.TailFiveMillionFiveTwistCore

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def {group} : List (List ℕ) :=
{group_body}

theorem {theorem} :
    {group}.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses {family.bound}) = true := by
  decide

#print axioms {theorem}

end Erdos848.GeneratedTailFiveTwistSupportCoverage
"""


def render_certificate(groups_by_family: dict[str, list[str]]) -> str:
    imports: list[str] = []
    proofs: list[str] = []
    for family in FAMILIES:
        leaves = [leaf_name(family, group) for group in groups_by_family[family.key]]
        imports.extend(module_name(TARGET.name, leaf) for leaf in leaves)
        certified_name = f"{family.key}CertifiedPrefixes"
        equality_theorem = f"{certified_name}_eq"
        concatenation = " ++\n  ".join(
            leaf[0].lower() + leaf[1:] for leaf in leaves
        )
        rw_lines = "\n".join(
            f"  rw [{leaf[0].lower() + leaf[1:]}_passes]" for leaf in leaves
        )
        proofs.append(f"""def {certified_name} : List (List ℕ) :=
  {concatenation}

theorem {equality_theorem} :
    {certified_name} = Erdos848.{family.feasible_name} := by
  decide

theorem {family.key}FeasiblePrefixes_pass :
    Erdos848.{family.feasible_name}.all
      (Erdos848.fiveMillionOddRootFiveTwistProfilePasses {family.bound}) = true := by
  rw [← {equality_theorem}]
  simp only [{certified_name}, List.all_append]
{rw_lines}
  decide

#print axioms {family.key}FeasiblePrefixes_pass
""")
    return "\n".join(f"import {item}" for item in imports) + """

namespace Erdos848.GeneratedTailFiveTwistSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

""" + "\n".join(proofs) + """
end Erdos848.GeneratedTailFiveTwistSupportCoverage
"""


def main() -> None:
    TARGET.mkdir(parents=True, exist_ok=True)
    groups_by_family = {family.key: source_groups(family) for family in FAMILIES}
    expected = {"Certificate.lean"}
    for family in FAMILIES:
        for group in groups_by_family[family.key]:
            name = leaf_name(family, group) + ".lean"
            expected.add(name)
            (TARGET / name).write_text(
                render_leaf(family, group, extract_group_body(family, group)),
                encoding="utf-8",
            )
    (TARGET / "Certificate.lean").write_text(
        render_certificate(groups_by_family), encoding="utf-8"
    )
    for path in TARGET.glob("*.lean"):
        if path.name not in expected:
            path.unlink()
    counts = ", ".join(
        f"{family.key}={len(groups_by_family[family.key])}" for family in FAMILIES
    )
    print(f"generated {counts}; total leaves={len(expected) - 1}")


if __name__ == "__main__":
    main()
