#!/usr/bin/env python3
"""Generate the small kernel-only E1 cutoff-23 arithmetic certificate blocks."""

from __future__ import annotations

from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "lean4" / "Erdos848" / "GeneratedTailR263EvenOneFinite23"

PATTERNS = (
    ("AllEqual", "allEqual"),
    ("FirstSecond", "firstSecond"),
    ("FirstThird", "firstThird"),
    ("SecondThird", "secondThird"),
    ("AllDistinct", "allDistinct"),
)

FOUR_P3 = PATTERNS[1:]


def header() -> str:
    return """import Erdos848.TailR263EvenOneFinite23Checker

namespace Erdos848.GeneratedTailR263EvenOneFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

"""


def four_block(p3_name: str, p3_ctor: str, p7_name: str, p7_ctor: str) -> str:
    theorem = f"four_p3_{p3_ctor}_p7_{p7_ctor}"
    return (
        header()
        + f"""theorem {theorem} :
    Erdos848.e1FiniteFourBlockPasses
      .{p3_ctor} .{p7_ctor} = true := by
  decide

end Erdos848.GeneratedTailR263EvenOneFinite23
"""
    )


def three_block(p7_name: str, p7_ctor: str) -> str:
    theorem = f"three_p7_{p7_ctor}"
    return (
        header()
        + f"""theorem {theorem} :
    Erdos848.e1FiniteThreeBlockPasses .{p7_ctor} = true := by
  decide

end Erdos848.GeneratedTailR263EvenOneFinite23
"""
    )


def aggregate() -> str:
    imports = []
    for p3_name, _ in FOUR_P3:
        for p7_name, _ in PATTERNS:
            imports.append(
                f"import Erdos848.GeneratedTailR263EvenOneFinite23."
                f"FourP3{p3_name}P7{p7_name}"
            )
    for p7_name, _ in PATTERNS:
        imports.append(
            f"import Erdos848.GeneratedTailR263EvenOneFinite23."
            f"ThreeP7{p7_name}"
        )
    return (
        "\n".join(imports)
        + """

namespace Erdos848.GeneratedTailR263EvenOneFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem four_all
    (p3 p7 p11 p13 p17 p19 p23 : Erdos848.E1FiniteRootPattern)
    (hp3 : p3 ≠ .allEqual) :
    Erdos848.e1FiniteFourPaymentCrossInequality
      p3 p7 p11 p13 p17 p19 p23 := by
  have hpass : Erdos848.e1FiniteFourBlockPasses p3 p7 = true := by
    cases p3 <;> cases p7 <;> simp_all
    all_goals first
      | exact four_p3_firstSecond_p7_allEqual
      | exact four_p3_firstSecond_p7_firstSecond
      | exact four_p3_firstSecond_p7_firstThird
      | exact four_p3_firstSecond_p7_secondThird
      | exact four_p3_firstSecond_p7_allDistinct
      | exact four_p3_firstThird_p7_allEqual
      | exact four_p3_firstThird_p7_firstSecond
      | exact four_p3_firstThird_p7_firstThird
      | exact four_p3_firstThird_p7_secondThird
      | exact four_p3_firstThird_p7_allDistinct
      | exact four_p3_secondThird_p7_allEqual
      | exact four_p3_secondThird_p7_firstSecond
      | exact four_p3_secondThird_p7_firstThird
      | exact four_p3_secondThird_p7_secondThird
      | exact four_p3_secondThird_p7_allDistinct
      | exact four_p3_allDistinct_p7_allEqual
      | exact four_p3_allDistinct_p7_firstSecond
      | exact four_p3_allDistinct_p7_firstThird
      | exact four_p3_allDistinct_p7_secondThird
      | exact four_p3_allDistinct_p7_allDistinct
  exact Erdos848.e1FiniteFourBlockPasses_sound
    hpass p11 p13 p17 p19 p23

theorem three_all
    (p7 p11 p13 p17 p19 p23 : Erdos848.E1FiniteRootPattern) :
    Erdos848.e1FiniteThreePaymentCrossInequality
      p7 p11 p13 p17 p19 p23 := by
  have hpass : Erdos848.e1FiniteThreeBlockPasses p7 = true := by
    cases p7
    · exact three_p7_allEqual
    · exact three_p7_firstSecond
    · exact three_p7_firstThird
    · exact three_p7_secondThird
    · exact three_p7_allDistinct
  exact Erdos848.e1FiniteThreeBlockPasses_sound
    hpass p11 p13 p17 p19 p23

end Erdos848.GeneratedTailR263EvenOneFinite23
"""
    )


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    expected: set[str] = set()

    for p3_name, p3_ctor in FOUR_P3:
        for p7_name, p7_ctor in PATTERNS:
            name = f"FourP3{p3_name}P7{p7_name}.lean"
            expected.add(name)
            (OUT / name).write_text(
                four_block(p3_name, p3_ctor, p7_name, p7_ctor),
                encoding="utf-8",
                newline="\n",
            )

    for p7_name, p7_ctor in PATTERNS:
        name = f"ThreeP7{p7_name}.lean"
        expected.add(name)
        (OUT / name).write_text(
            three_block(p7_name, p7_ctor),
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
