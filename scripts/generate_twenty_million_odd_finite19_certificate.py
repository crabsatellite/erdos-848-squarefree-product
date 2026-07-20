#!/usr/bin/env python3
"""Generate kernel-reduced cutoff-19 odd finite certificate leaves."""

from __future__ import annotations

from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "lean4" / "Erdos848" / "GeneratedTailTwentyMillionOddFinite19"

PATTERNS = [
    ("AllEqual", "allEqual"),
    ("FirstSecond", "firstSecond"),
    ("FirstThird", "firstThird"),
    ("SecondThird", "secondThird"),
    ("AllDistinct", "allDistinct"),
]
PAIR_PATTERNS = [
    ("FirstSecond", "firstSecond"),
    ("FirstThird", "firstThird"),
    ("SecondThird", "secondThird"),
]
NONCOMMON_PATTERNS = PATTERNS[1:]


def header() -> str:
    return """import Erdos848.TailTwentyMillionOddFinite19Checker

namespace Erdos848.GeneratedTailTwentyMillionOddFinite19

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

"""


def leaf(
    theorem: str,
    body: str,
) -> str:
    return header() + f"""theorem {theorem} :
    {body} := by
  decide

end Erdos848.GeneratedTailTwentyMillionOddFinite19
"""


def write(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8", newline="\n")


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    expected: set[Path] = set()
    imports: list[str] = []
    o2_generic: list[tuple[str, str, str, str, str]] = []
    o2_common: list[tuple[str, str, str, str]] = []
    o1_generic: list[tuple[str, str, str, str]] = []
    o1_common: list[tuple[str, str, str]] = []

    for p2_name, p2 in PAIR_PATTERNS:
        for p3_name, p3 in NONCOMMON_PATTERNS:
            for p7_name, p7 in PATTERNS:
                for p11_name, p11 in PATTERNS:
                    stem = (
                        f"OddTwoGenericP2{p2_name}P3{p3_name}"
                        f"P7{p7_name}P11{p11_name}"
                    )
                    theorem = (
                        f"oddTwo_generic_p2_{p2}_p3_{p3}_p7_{p7}"
                        f"_p11_{p11}"
                    )
                    write(
                        OUT / f"{stem}.lean",
                        leaf(
                            theorem,
                            "Erdos848."
                            "twentyMillionOddTwoFinite19SubBlockPasses "
                            f"19_420 .{p2} .{p3} .{p7} .{p11} = true",
                        ),
                    )
                    expected.add(OUT / f"{stem}.lean")
                    imports.append(stem)
                    o2_generic.append((p2, p3, p7, p11, theorem))

        for p7_name, p7 in PATTERNS:
            for p11_name, p11 in PATTERNS:
                stem = (
                    f"OddTwoCommonP2{p2_name}P7{p7_name}P11{p11_name}"
                )
                theorem = (
                    f"oddTwo_common_p2_{p2}_p7_{p7}_p11_{p11}"
                )
                write(
                    OUT / f"{stem}.lean",
                    leaf(
                        theorem,
                        "Erdos848."
                        "twentyMillionOddTwoFinite19SubBlockPasses "
                        f"20_878 .{p2} .allEqual .{p7} .{p11} = true",
                    ),
                )
                expected.add(OUT / f"{stem}.lean")
                imports.append(stem)
                o2_common.append((p2, p7, p11, theorem))

    for p3_name, p3 in NONCOMMON_PATTERNS:
        for p7_name, p7 in PATTERNS:
            for p11_name, p11 in PATTERNS:
                stem = (
                    f"OddOneGenericP3{p3_name}P7{p7_name}P11{p11_name}"
                )
                theorem = (
                    f"oddOne_generic_p3_{p3}_p7_{p7}_p11_{p11}"
                )
                write(
                    OUT / f"{stem}.lean",
                    leaf(
                        theorem,
                        "Erdos848."
                        "twentyMillionOddOneFinite19SubBlockPasses "
                        f"26_643 .{p3} .{p7} .{p11} = true",
                    ),
                )
                expected.add(OUT / f"{stem}.lean")
                imports.append(stem)
                o1_generic.append((p3, p7, p11, theorem))

    for p7_name, p7 in PATTERNS:
        for p11_name, p11 in PATTERNS:
            stem = f"OddOneCommonP7{p7_name}P11{p11_name}"
            theorem = f"oddOne_common_p7_{p7}_p11_{p11}"
            write(
                OUT / f"{stem}.lean",
                leaf(
                    theorem,
                    "Erdos848."
                    "twentyMillionOddOneFinite19SubBlockPasses "
                    f"29_459 .allEqual .{p7} .{p11} = true",
                ),
            )
            expected.add(OUT / f"{stem}.lean")
            imports.append(stem)
            o1_common.append((p7, p11, theorem))

    import_text = "\n".join(
        "import "
        f"Erdos848.GeneratedTailTwentyMillionOddFinite19.{stem}"
        for stem in imports
    )

    exact_o2_generic = "\n".join(
        f"      | exact {theorem}"
        for _p2, _p3, _p7, _p11, theorem in o2_generic
    )
    exact_o2_common = "\n".join(
        f"      | exact {theorem}"
        for _p2, _p7, _p11, theorem in o2_common
    )
    exact_o1_generic = "\n".join(
        f"      | exact {theorem}"
        for _p3, _p7, _p11, theorem in o1_generic
    )
    exact_o1_common = "\n".join(
        f"      | exact {theorem}"
        for _p7, _p11, theorem in o1_common
    )

    certificate = f"""{import_text}

namespace Erdos848.GeneratedTailTwentyMillionOddFinite19

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem oddTwo_generic_all
    (p2 p3 p7 p11 p13 p17 p19 : Erdos848.E1FiniteRootPattern)
    (hp2 : p2 = .firstSecond ∨ p2 = .firstThird ∨
      p2 = .secondThird)
    (hp3 : p3 ≠ .allEqual) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 p2 p3 p7 p11 p13 p17 p19 := by
  have hpass :
      Erdos848.twentyMillionOddTwoFinite19SubBlockPasses
        19_420 p2 p3 p7 p11 = true := by
    cases p2 <;> cases p3 <;> cases p7 <;> cases p11 <;> simp_all
    all_goals first
{exact_o2_generic}
  exact Erdos848.twentyMillionOddTwoFinite19SubBlockPasses_sound
    hpass p13 p17 p19

theorem oddTwo_common_all
    (p2 p7 p11 p13 p17 p19 : Erdos848.E1FiniteRootPattern)
    (hp2 : p2 = .firstSecond ∨ p2 = .firstThird ∨
      p2 = .secondThird) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      20_878 p2 .allEqual p7 p11 p13 p17 p19 := by
  have hpass :
      Erdos848.twentyMillionOddTwoFinite19SubBlockPasses
        20_878 p2 .allEqual p7 p11 = true := by
    cases p2 <;> cases p7 <;> cases p11 <;> simp_all
    all_goals first
{exact_o2_common}
  exact Erdos848.twentyMillionOddTwoFinite19SubBlockPasses_sound
    hpass p13 p17 p19

theorem oddOne_generic_all
    (p3 p7 p11 p13 p17 p19 : Erdos848.E1FiniteRootPattern)
    (hp3 : p3 ≠ .allEqual) :
    Erdos848.twentyMillionOddOneFinite19CrossInequality
      26_643 p3 p7 p11 p13 p17 p19 := by
  have hpass :
      Erdos848.twentyMillionOddOneFinite19SubBlockPasses
        26_643 p3 p7 p11 = true := by
    cases p3 <;> cases p7 <;> cases p11 <;> simp_all
    all_goals first
{exact_o1_generic}
  exact Erdos848.twentyMillionOddOneFinite19SubBlockPasses_sound
    hpass p13 p17 p19

theorem oddOne_common_all
    (p7 p11 p13 p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddOneFinite19CrossInequality
      29_459 .allEqual p7 p11 p13 p17 p19 := by
  have hpass :
      Erdos848.twentyMillionOddOneFinite19SubBlockPasses
        29_459 .allEqual p7 p11 = true := by
    cases p7 <;> cases p11 <;> simp_all
    all_goals first
{exact_o1_common}
  exact Erdos848.twentyMillionOddOneFinite19SubBlockPasses_sound
    hpass p13 p17 p19

end Erdos848.GeneratedTailTwentyMillionOddFinite19
"""
    write(OUT / "Certificate.lean", certificate)
    expected.add(OUT / "Certificate.lean")

    for path in OUT.glob("*.lean"):
        if path not in expected:
            path.unlink()

    print(f"generated {len(expected)} Lean files in {OUT}")


if __name__ == "__main__":
    main()
