#!/usr/bin/env python3
"""Generate split kernel leaves for the ten-million cutoff-29 checker."""

from __future__ import annotations

from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT = (
    ROOT
    / "lean4"
    / "Erdos848"
    / "GeneratedTailTenMillionEvenFinite29"
)

PATTERNS = (
    ("AllEqual", "allEqual"),
    ("FirstSecond", "firstSecond"),
    ("FirstThird", "firstThird"),
    ("SecondThird", "secondThird"),
    ("AllDistinct", "allDistinct"),
)

NONCOMMON_P3 = PATTERNS[1:]
PATTERN_INDEX = {name: index for index, (name, _ctor) in enumerate(PATTERNS)}


def module_name(
    p3_name: str,
    p7_name: str,
    p11_name: str,
    p13_name: str,
) -> str:
    return "B" + "".join(
        str(PATTERN_INDEX[name])
        for name in (p3_name, p7_name, p11_name, p13_name)
    )


def leaf(
    p3_name: str,
    p3_ctor: str,
    p7_name: str,
    p7_ctor: str,
    p11_name: str,
    p11_ctor: str,
    p13_name: str,
    p13_ctor: str,
) -> str:
    theorem = (
        f"block_p3_{p3_ctor}_p7_{p7_ctor}"
        f"_p11_{p11_ctor}_p13_{p13_ctor}"
    )
    return f"""import Erdos848.TailTenMillionEvenFinite29Checker

namespace Erdos848.GeneratedTailTenMillionEvenFinite29

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem {theorem} :
    Erdos848.tenMillionEvenFinite29WideBlockPasses
      .{p3_ctor} .{p7_ctor} .{p11_ctor} .{p13_ctor} = true := by
  decide

end Erdos848.GeneratedTailTenMillionEvenFinite29
"""


def aggregate() -> str:
    imports: list[str] = []
    alternatives: list[str] = []
    for p3_name, p3_ctor in NONCOMMON_P3:
        for p7_name, p7_ctor in PATTERNS:
            for p11_name, p11_ctor in PATTERNS:
                for p13_name, p13_ctor in PATTERNS:
                    module = module_name(
                        p3_name, p7_name, p11_name, p13_name
                    )
                    imports.append(
                        "import "
                        "Erdos848.GeneratedTailTenMillionEvenFinite29."
                        f"{module}"
                    )
                    alternatives.append(
                        "      | exact "
                        f"block_p3_{p3_ctor}_p7_{p7_ctor}"
                        f"_p11_{p11_ctor}_p13_{p13_ctor}"
                    )
    return (
        "\n".join(imports)
        + """

namespace Erdos848.GeneratedTailTenMillionEvenFinite29

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem all
    (p3 p7 p11 p13 p17 p19 p23 p29 :
      Erdos848.E1FiniteRootPattern)
    (hp3 : p3 != .allEqual) :
    Erdos848.TenMillionEvenFinite29CrossInequality
      p3 p7 p11 p13 p17 p19 p23 p29 := by
  have hpass :
      Erdos848.tenMillionEvenFinite29WideBlockPasses
        p3 p7 p11 p13 = true := by
    cases p3 <;> cases p7 <;> cases p11 <;> cases p13 <;>
      simp_all
    all_goals first
"""
        + "\n".join(alternatives)
        + """
  exact Erdos848.tenMillionEvenFinite29WideBlockPasses_sound
    hpass p17 p19 p23 p29

#print axioms all

end Erdos848.GeneratedTailTenMillionEvenFinite29
"""
    )


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    expected: set[str] = set()
    for p3_name, p3_ctor in NONCOMMON_P3:
        for p7_name, p7_ctor in PATTERNS:
            for p11_name, p11_ctor in PATTERNS:
                for p13_name, p13_ctor in PATTERNS:
                    module = module_name(
                        p3_name, p7_name, p11_name, p13_name
                    )
                    filename = f"{module}.lean"
                    expected.add(filename)
                    (OUT / filename).write_text(
                        leaf(
                            p3_name,
                            p3_ctor,
                            p7_name,
                            p7_ctor,
                            p11_name,
                            p11_ctor,
                            p13_name,
                            p13_ctor,
                        ),
                        encoding="utf-8",
                        newline="\n",
                    )

    expected.add("Certificate.lean")
    (OUT / "Certificate.lean").write_text(
        aggregate(), encoding="utf-8", newline="\n"
    )

    for path in OUT.glob("*.lean"):
        if path.name not in expected:
            path.unlink()

    print(f"generated {len(expected)} Lean files in {OUT}")


if __name__ == "__main__":
    main()
