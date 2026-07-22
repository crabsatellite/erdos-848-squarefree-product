#!/usr/bin/env python3
"""Generate split kernel checks for the 20M root-profile lower endpoint."""

from __future__ import annotations

from pathlib import Path


NAMESPACE = "GeneratedTailTwentyMillionRootLowerCoverage"
ROWS = (
    ("evenOne", "evenOne", 76, 263_157, 23_078, "primeCounting_263157"),
    ("evenTwo", "evenTwo", 76, 263_157, 23_078, "primeCounting_263157"),
    ("evenThree", "evenThree", 70, 285_714, 24_900, "primeCounting_285714"),
    ("odd", "odd", 76, 263_157, 23_078, "primeCounting_263157"),
)


def write_if_changed(path: Path, content: str) -> None:
    content = content.rstrip() + "\n"
    if path.is_file() and path.read_text(encoding="utf-8") == content:
        return
    path.write_text(content, encoding="utf-8", newline="\n")


def generate(lean_root: Path) -> None:
    target = (lean_root / "Erdos848" / NAMESPACE).resolve()
    if lean_root.resolve() not in target.parents:
        raise RuntimeError(f"generated target escaped Lean root: {target}")
    target.mkdir(parents=True, exist_ok=True)
    expected: set[Path] = set()

    for label, ctor, split, quotient, count, prime_count in ROWS:
        endpoint_module = "LowerEndpoint76" if split == 76 else "LowerEndpoint70"
        case_names: list[str] = []
        for support_length in range(8):
            theorem = f"lower_{label}_{support_length}_le"
            case_names.append(theorem)
            path = target / f"Case{label[0].upper()}{label[1:]}{support_length}.lean"
            expected.add(path)
            write_if_changed(path, "\n".join([
                "import Erdos848.TailTwentyMillionRootLowerChecker",
                f"import Erdos848.GeneratedTailTwentyMillionRootJumpCoverage.{endpoint_module}",
                "",
                f"namespace Erdos848.{NAMESPACE}",
                "",
                "set_option maxHeartbeats 0",
                "set_option maxRecDepth 1000000",
                "",
                f"theorem {theorem}_passes :",
                "    decide (Erdos848.twentyMillionRootSmoothProfileLowerAt",
                f"      .{ctor} {support_length} {quotient} {count} ≤",
                f"        (.{ctor} : Erdos848.TwentyMillionRootRow).envelope) = true := by",
                "  with_unfolding_all decide",
                "",
                f"theorem {theorem} :",
                f"    Erdos848.twentyMillionRootSmoothProfile .{ctor} {support_length}",
                "        Erdos848.twentyMillionLower ≤",
                f"      (.{ctor} : Erdos848.TwentyMillionRootRow).envelope := by",
                "  rw [Erdos848.twentyMillionRootSmoothProfile_lower_eq_at",
                f"    (row := .{ctor}) (supportLength := {support_length})",
                f"    (p := {quotient}) (primeCount := {count})",
                "    (hp := by norm_num [Erdos848.twentyMillionLower,",
                "      Erdos848.TwentyMillionRootRow.split])",
                "    (hcount := Erdos848.GeneratedTailTwentyMillionRootJumpCoverage."
                f"{prime_count})]",
                f"  exact of_decide_eq_true {theorem}_passes",
                "",
                f"#print axioms {theorem}",
                "",
                f"end Erdos848.{NAMESPACE}",
            ]))

        row_path = target / f"Row{label[0].upper()}{label[1:]}.lean"
        expected.add(row_path)
        write_if_changed(row_path, "\n".join([
            *(f"import Erdos848.{NAMESPACE}.Case{label[0].upper()}{label[1:]}{k}"
              for k in range(8)),
            "",
            f"namespace Erdos848.{NAMESPACE}",
            "",
            f"theorem lower_{label}_le",
            "    (supportLength : Nat) (hLength : supportLength < 8) :",
            f"    Erdos848.twentyMillionRootSmoothProfile .{ctor} supportLength",
            "        Erdos848.twentyMillionLower ≤",
            f"      (.{ctor} : Erdos848.TwentyMillionRootRow).envelope := by",
            "  interval_cases supportLength",
            *(f"  · exact {name}" for name in case_names),
            "",
            f"#print axioms lower_{label}_le",
            "",
            f"end Erdos848.{NAMESPACE}",
        ]))

    certificate = target / "Certificate.lean"
    expected.add(certificate)
    write_if_changed(certificate, "\n".join([
        *(f"import Erdos848.{NAMESPACE}.Row{label[0].upper()}{label[1:]}"
          for label, *_rest in ROWS),
        "",
        f"namespace Erdos848.{NAMESPACE}",
        "",
        "theorem lower_profile_le",
        "    (row : Erdos848.TwentyMillionRootRow) (supportLength : Nat)",
        "    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)",
        "    (hLength : supportLength < 8) :",
        "    Erdos848.twentyMillionRootSmoothProfile row supportLength",
        "        Erdos848.twentyMillionLower ≤ row.envelope := by",
        "  simp only [Erdos848.twentyMillionRootProfileRows, List.mem_cons,",
        "    List.not_mem_nil, or_false] at hrow",
        "  rcases hrow with rfl | rfl | rfl | rfl",
        "  · exact lower_evenOne_le supportLength hLength",
        "  · exact lower_evenTwo_le supportLength hLength",
        "  · exact lower_evenThree_le supportLength hLength",
        "  · exact lower_odd_le supportLength hLength",
        "",
        "#print axioms lower_profile_le",
        "",
        f"end Erdos848.{NAMESPACE}",
    ]))

    for path in target.glob("*.lean"):
        if path not in expected:
            path.unlink()
    print(f"generated lower-endpoint cases={len(ROWS) * 8} rows={len(ROWS)}")


def main() -> None:
    lean_root = Path(__file__).resolve().parents[1] / "lean4"
    generate(lean_root.resolve())


if __name__ == "__main__":
    main()
