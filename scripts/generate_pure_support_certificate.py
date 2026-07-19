#!/usr/bin/env python3
"""Generate small kernel shards for the 676-bit pure-support check."""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LEAN_ROOT = ROOT / "lean4" / "Erdos848"
OUTPUT = LEAN_ROOT / "GeneratedTailPureSupportCoverage"


@dataclass(frozen=True)
class Family:
    key: str
    bound: int
    source_dir: str
    glob: str
    source_namespace: str
    certified_name: str
    certified_eq: str
    feasible_name: str


FAMILIES = (
    Family("k2", 83, "GeneratedTailSupportProfileCoverage", "K2PrefixGroup*.lean",
           "GeneratedTailSupportProfileCoverage", "k2CertifiedPrefixes",
           "k2CertifiedPrefixes_eq", "fiveMillionOddRootK2FeasiblePrefixes"),
    Family("k3", 47, "GeneratedTailSupportProfileCoverage", "K3PrefixGroup*.lean",
           "GeneratedTailSupportProfileCoverage", "k3CertifiedPrefixes",
           "k3CertifiedPrefixes_eq", "fiveMillionOddRootK3FeasiblePrefixes"),
    Family("k4", 27, "GeneratedTailSupportProfileCoverage", "K4PrefixGroup*.lean",
           "GeneratedTailSupportProfileCoverage", "k4CertifiedPrefixes",
           "k4CertifiedPrefixes_eq", "fiveMillionOddRootK4FeasiblePrefixes"),
    Family("k5", 13, "GeneratedTailSupportCoverage", "PrefixGroup*.lean",
           "GeneratedTailSupportCoverage", "certifiedSupportPrefixes",
           "certifiedSupportPrefixes_eq", "fiveMillionOddRootFeasiblePrefixes"),
    Family("k6", 6, "GeneratedTailSupportProfileCoverage", "K6PrefixGroup*.lean",
           "GeneratedTailSupportProfileCoverage", "k6CertifiedPrefixes",
           "k6CertifiedPrefixes_eq", "fiveMillionOddRootK6FeasiblePrefixes"),
)


def lower_first(value: str) -> str:
    return value[:1].lower() + value[1:]


def module_for(path: Path) -> str:
    relative = path.relative_to(ROOT / "lean4").with_suffix("")
    return ".".join(relative.parts)


def write_if_changed(path: Path, content: str) -> None:
    if path.exists() and path.read_text(encoding="utf-8") == content:
        return
    path.write_text(content, encoding="utf-8", newline="\n")


def generate_group(family: Family, source: Path) -> tuple[Path, str]:
    stem = source.stem
    source_def = lower_first(stem)
    theorem = f"{source_def}_pure_passes"
    target = OUTPUT / f"{stem}.lean"
    write_if_changed(
        target,
        f"""import Erdos848.TailPureSupportChecker
import {module_for(source)}

namespace Erdos848.GeneratedTailPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem {theorem} :
    Erdos848.{family.source_namespace}.{source_def}.all
      (Erdos848.pureFiveMillionSupportPrefixPasses {family.bound}) = true := by
  decide

end Erdos848.GeneratedTailPureSupportCoverage
""",
    )
    return target, theorem


def main() -> None:
    OUTPUT.mkdir(parents=True, exist_ok=True)
    generated: list[Path] = []
    family_rows: list[tuple[Family, list[tuple[Path, str]]]] = []
    for family in FAMILIES:
        source_root = LEAN_ROOT / family.source_dir
        sources = sorted(source_root.glob(family.glob))
        if not sources:
            raise SystemExit(f"no source groups for {family.key}")
        rows = [generate_group(family, source) for source in sources]
        generated.extend(path for path, _ in rows)
        family_rows.append((family, rows))

    imports = [f"import {module_for(path)}" for path in generated]
    imports.extend(
        [
            "import Erdos848.GeneratedTailSupportCoverage.Certificate",
            "import Erdos848.GeneratedTailSupportProfileCoverage.Certificate",
        ]
    )
    body: list[str] = [
        *imports,
        "",
        "namespace Erdos848.GeneratedTailPureSupportCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
    ]
    for family, rows in family_rows:
        source = f"Erdos848.{family.source_namespace}"
        body.extend(
            [
                f"theorem {family.key}CertifiedPrefixes_pass :",
                f"    {source}.{family.certified_name}.all",
                f"      (Erdos848.pureFiveMillionSupportPrefixPasses {family.bound}) = true := by",
                f"  simp only [{source}.{family.certified_name}, List.all_append]",
            ]
        )
        body.extend(f"  rw [{theorem}]" for _, theorem in rows)
        body.extend(
            [
                "  decide",
                "",
                f"theorem {family.key}FeasiblePrefixes_pass :",
                f"    Erdos848.{family.feasible_name}.all",
                f"      (Erdos848.pureFiveMillionSupportPrefixPasses {family.bound}) = true := by",
                f"  rw [← {source}.{family.certified_eq}]",
                f"  exact {family.key}CertifiedPrefixes_pass",
                "",
                f"#print axioms {family.key}FeasiblePrefixes_pass",
                "",
            ]
        )
    body.append("end Erdos848.GeneratedTailPureSupportCoverage")
    body.append("")
    certificate = OUTPUT / "Certificate.lean"
    write_if_changed(certificate, "\n".join(body))
    print(f"generated groups={len(generated)} certificate={certificate}")


if __name__ == "__main__":
    main()
