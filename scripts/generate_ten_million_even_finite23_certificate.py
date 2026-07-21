#!/usr/bin/env python3
"""Generate split kernel leaves for the ten-million cutoff-23 checker."""

from __future__ import annotations

from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT = (
    ROOT
    / "lean4"
    / "Erdos848"
    / "GeneratedTailTenMillionEvenFinite23"
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


def write_if_changed(path: Path, content: str) -> None:
    if path.exists() and path.read_text(encoding="utf-8") == content:
        return
    path.write_text(content, encoding="utf-8", newline="\n")


def module_name(p3_name: str, p7_name: str, p11_name: str) -> str:
    return "B" + "".join(
        str(PATTERN_INDEX[name])
        for name in (p3_name, p7_name, p11_name)
    )


def leaf(
    p3_name: str,
    p3_ctor: str,
    p7_name: str,
    p7_ctor: str,
    p11_name: str,
    p11_ctor: str,
) -> str:
    theorem = (
        f"block_p3_{p3_ctor}_p7_{p7_ctor}_p11_{p11_ctor}"
    )
    return f"""import Erdos848.TailTenMillionEvenFinite23Checker

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem {theorem} :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .{p3_ctor} .{p7_ctor} .{p11_ctor} = true := by
  decide

end Erdos848.GeneratedTailTenMillionEvenFinite23
"""


def p3_p7_aggregate(
    p3_name: str,
    p3_ctor: str,
    p7_name: str,
    p7_ctor: str,
) -> str:
    imports: list[str] = []
    cases: list[str] = []
    for p11_name, p11_ctor in PATTERNS:
        module = module_name(p3_name, p7_name, p11_name)
        imports.append(
            "import "
            "Erdos848.GeneratedTailTenMillionEvenFinite23."
            f"{module}"
        )
        cases.append(
            f"    | {p11_ctor} => exact "
            f"block_p3_{p3_ctor}_p7_{p7_ctor}_p11_{p11_ctor}"
        )
    return (
        "\n".join(imports)
        + f"""

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem block_p3_{p3_ctor}_p7_{p7_ctor}_all
    (p11 : Erdos848.E1FiniteRootPattern) :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .{p3_ctor} .{p7_ctor} p11 = true := by
    cases p11 with
"""
        + "\n".join(cases)
        + """
#print axioms block_p3_"""
        + p3_ctor
        + "_p7_"
        + p7_ctor
        + """_all

end Erdos848.GeneratedTailTenMillionEvenFinite23
"""
    )


def p3_aggregate(p3_name: str, p3_ctor: str) -> str:
    imports = "\n".join(
        "import Erdos848.GeneratedTailTenMillionEvenFinite23."
        f"P3{p3_name}P7{p7_name}"
        for p7_name, _p7_ctor in PATTERNS
    )
    cases = "\n".join(
        f"    | {p7_ctor} => exact "
        f"block_p3_{p3_ctor}_p7_{p7_ctor}_all p11"
        for _p7_name, p7_ctor in PATTERNS
    )
    return (
        imports
        + f"""

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem block_p3_{p3_ctor}_all
    (p7 p11 : Erdos848.E1FiniteRootPattern) :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .{p3_ctor} p7 p11 = true := by
    cases p7 with
"""
        + cases
        + """

#print axioms block_p3_"""
        + p3_ctor
        + """_all

end Erdos848.GeneratedTailTenMillionEvenFinite23
"""
    )


def aggregate() -> str:
    imports = [
        "import "
        "Erdos848.GeneratedTailTenMillionEvenFinite23."
        f"P3{p3_name}"
        for p3_name, _p3_ctor in NONCOMMON_P3
    ]
    cases = "\n".join(
        f"    | {p3_ctor} => exact "
        f"block_p3_{p3_ctor}_all p7 p11"
        for _p3_name, p3_ctor in NONCOMMON_P3
    )
    return (
        "\n".join(imports)
        + """

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem all
    (p3 p7 p11 p13 p17 p19 p23 :
      Erdos848.E1FiniteRootPattern)
    (hp3 : p3 != .allEqual) :
    Erdos848.TenMillionEvenFinite23CrossInequality
      p3 p7 p11 p13 p17 p19 p23 := by
  have hpass :
      Erdos848.tenMillionEvenFinite23BlockPasses
        p3 p7 p11 = true := by
    cases p3 with
    | allEqual => simp_all
"""
        + cases
        + """
  exact Erdos848.tenMillionEvenFinite23BlockPasses_sound
    hpass p13 p17 p19 p23

#print axioms all

end Erdos848.GeneratedTailTenMillionEvenFinite23
"""
    )


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    expected: set[str] = set()
    for p3_name, p3_ctor in NONCOMMON_P3:
        for p7_name, p7_ctor in PATTERNS:
            for p11_name, p11_ctor in PATTERNS:
                module = module_name(p3_name, p7_name, p11_name)
                filename = f"{module}.lean"
                expected.add(filename)
                write_if_changed(
                    OUT / filename,
                    leaf(
                        p3_name,
                        p3_ctor,
                        p7_name,
                        p7_ctor,
                        p11_name,
                        p11_ctor,
                    ),
                )

    for p3_name, p3_ctor in NONCOMMON_P3:
        for p7_name, p7_ctor in PATTERNS:
            filename = f"P3{p3_name}P7{p7_name}.lean"
            expected.add(filename)
            write_if_changed(
                OUT / filename,
                p3_p7_aggregate(
                    p3_name,
                    p3_ctor,
                    p7_name,
                    p7_ctor,
                ),
            )

        filename = f"P3{p3_name}.lean"
        expected.add(filename)
        write_if_changed(
            OUT / filename,
            p3_aggregate(p3_name, p3_ctor),
        )

    expected.add("Certificate.lean")
    write_if_changed(OUT / "Certificate.lean", aggregate())

    for path in OUT.glob("*.lean"):
        if path.name not in expected:
            path.unlink()

    print(f"generated {len(expected)} Lean files in {OUT}")


if __name__ == "__main__":
    main()
