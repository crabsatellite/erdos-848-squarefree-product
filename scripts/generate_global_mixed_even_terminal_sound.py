#!/usr/bin/env python3
"""Generate kernel-checkable soundness bridges for every even terminal.

The expensive leaf files certify literal ``BitVec 64`` rows.  These generated
modules prove that each literal row is the row obtained from the public global
QR-mask lookup at the terminal's retained support, and then transport the
certified population counts to that global row.  Python only writes proof
terms; Lean checks every lookup dispatch, row equality, and count equality.
"""

from __future__ import annotations

import importlib.util
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"
ERDOS = LEAN / "Erdos848"
OUT = ERDOS / "GeneratedTailGlobalMixedEvenTerminalSound"
EVEN_GENERATOR = ROOT / "scripts" / "generate_global_mixed_even_support_certificate.py"


spec = importlib.util.spec_from_file_location("even_support_sound", EVEN_GENERATOR)
assert spec is not None and spec.loader is not None
even = importlib.util.module_from_spec(spec)
sys.modules["even_support_sound"] = even
spec.loader.exec_module(even)


def chunks(values: list, size: int):
    for start in range(0, len(values), size):
        yield values[start:start + size]


def write_if_changed(path: Path, content: str) -> None:
    if path.exists() and path.read_text(encoding="utf-8") == content:
        return
    path.write_text(content, encoding="utf-8")


def lean_list(values) -> str:
    return "[" + ", ".join(map(str, values)) + "]"


def mask_group(p: int) -> int:
    return even.base.MASK_PRIMES.index(p) // even.base.MASK_GROUP_SIZE


def dispatch_application(kind: str, p: int) -> str:
    group = mask_group(p)
    return (
        f"({kind}QrMaskWords_eq_group{group:04d} (p := {p}) "
        "(by norm_num) (by norm_num))"
    )


def lookup_sound_theorem(kind: str, ident: str, used_primes: list[int]) -> str:
    lower_kind = kind.lower()
    used = lean_list(used_primes)
    theorem_name = f"{ident}_{lower_kind}_lookup_eq"
    local = f"{ident}{kind}Lookup"
    if not used_primes:
        proof = "  simp at hp"
    else:
        alternatives = " | ".join("rfl" for _ in used_primes)
        cases = []
        for p in used_primes:
            cases.extend([
                f"  · simpa [{local}] using {dispatch_application(lower_kind, p)}",
            ])
        proof = "\n".join([
            "  simp at hp",
            f"  rcases hp with {alternatives}",
            *cases,
        ])
    return f"""theorem {theorem_name}
    {{p : Nat}} (hp : p ∈ {used}) :
    {lower_kind}QrMaskWords p = {local} p := by
{proof}"""


def subset_lookup_proof(kind: str, ident: str, support: tuple[int, ...]) -> str:
    theorem_name = f"{ident}_{kind.lower()}_lookup_eq"
    if not support:
        return """      · intro p hp
        simp at hp"""
    alternatives = " | ".join("rfl" for _ in support)
    return f"""      · intro p hp
        apply {theorem_name}
        simp at hp
        rcases hp with {alternatives}
        all_goals simp"""


def row_theorem_parts(
    k: int,
    group_index: int,
    row_index: int,
    terminal,
    common_prefix: tuple[int, ...],
) -> tuple[str, str, str]:
    ident = f"evenK{k}TerminalGroup{group_index:04d}"
    row = f"{ident}Row{row_index:04d}"
    final = f"{ident}FinalRows{row_index:04d}"
    suffix = terminal.masked_prefix[len(common_prefix):]
    full_value = lean_list(terminal.masked_prefix)
    common_value = lean_list(common_prefix)
    suffix_value = lean_list(suffix)
    rows_name = f"{row}_global_rows"
    counts_name = f"{row}_global_counts"
    fit_name = f"{row}_counts_fit"
    normal_subset = subset_lookup_proof("normal", ident, terminal.masked_prefix)
    twist_subset = subset_lookup_proof("twist", ident, terminal.masked_prefix)
    rows = f"""theorem {rows_name} :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        {row}.maskedPrefix = {final} := by
  have hrow := congrArg
    (fun rows => rows.getD {row_index} Erdos848.globalMixedEmptyEvenBitVecRows)
    {ident}_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows {ident}NormalLookup
          {ident}TwistLookup {suffix_value} {ident}CommonRows = {final} := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows {ident}NormalLookup
          {ident}TwistLookup {full_value} = {final} := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows {ident}NormalLookup
          {ident}TwistLookup {full_value} =
        Erdos848.globalMixedBitVecContinueRows {ident}NormalLookup
          {ident}TwistLookup {suffix_value}
          (Erdos848.globalMixedBitVecRestrictedRows {ident}NormalLookup
            {ident}TwistLookup {common_value}) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          {ident}NormalLookup {ident}TwistLookup
          {common_value} {suffix_value}).symm
      _ = Erdos848.globalMixedBitVecContinueRows {ident}NormalLookup
          {ident}TwistLookup {suffix_value} {ident}CommonRows := by
        rw [{ident}_common_rows]
      _ = {final} := hcontinued
  rw [show {row}.maskedPrefix = {full_value} by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        {full_value} =
      Erdos848.globalMixedBitVecRestrictedRows {ident}NormalLookup
        {ident}TwistLookup {full_value} := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
{normal_subset}
{twist_subset}
    _ = {final} := hlocal"""
    counts = f"""theorem {counts_name} :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        {row}.maskedPrefix).counts = {row}.counts.toBitVec := by
  rw [{rows_name}]
  have hcount := congrArg
    (fun counts => counts.getD {row_index} emptyBitVecCounts) {ident}_counts
  simpa [emptyBitVecCounts] using hcount"""
    fits = f"""theorem {fit_name} :
    {row}.counts.FitsBitVec64 := by
  norm_num [{row}, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]"""
    return rows, counts, fits


def row_theorems(
    k: int,
    group_index: int,
    row_index: int,
    terminal,
    common_prefix: tuple[int, ...],
) -> str:
    return "\n\n".join(
        row_theorem_parts(k, group_index, row_index, terminal, common_prefix)
    )


def write_group(k: int, group_index: int, terminals: list) -> str:
    name = f"EvenK{k}TerminalGroup{group_index:04d}"
    ident = f"evenK{k}TerminalGroup{group_index:04d}"
    used_primes = sorted({p for terminal in terminals for p in terminal.masked_prefix})
    used_groups = sorted({mask_group(p) for p in used_primes})
    common_prefix = even.longest_common_prefix(
        [terminal.masked_prefix for terminal in terminals]
    )
    theorem_parts = [
        row_theorem_parts(k, group_index, row_index, terminal, common_prefix)
        for row_index, terminal in enumerate(terminals)
    ]
    if k >= 6:
        rows_name = name + "Rows"
        rows_imports = [
            "import Erdos848.TailGlobalMixedEvenBitVecSemantic",
            "import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage."
            f"EvenK{k}Leaf{group_index:04d}CommonSound",
            "import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage."
            f"EvenK{k}Leaf{group_index:04d}RowsSound",
            "import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData",
            "import Mathlib.Tactic",
            *(
                "import Erdos848.GeneratedTailGlobalMixedSupportCoverage."
                f"MaskDispatchGroup{group:04d}"
                for group in used_groups
            ),
        ]
        rows_source = "\n".join(rows_imports) + f"""

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

{lookup_sound_theorem("Normal", ident, used_primes)}

{lookup_sound_theorem("Twist", ident, used_primes)}

{"\n\n".join(parts[0] for parts in theorem_parts)}

#print axioms {ident}Row{len(terminals) - 1:04d}_global_rows

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
"""
        write_if_changed(OUT / f"{rows_name}.lean", rows_source)

        source = f"""import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.{rows_name}
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK{k}Leaf{group_index:04d}CountsSound
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

{"\n\n".join(parts[1] for parts in theorem_parts)}

{"\n\n".join(parts[2] for parts in theorem_parts)}

#print axioms {ident}Row{len(terminals) - 1:04d}_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
"""
        write_if_changed(OUT / f"{name}.lean", source)
        return name

    support_imports = [
        "import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage." + name
    ]
    imports = [
        "import Erdos848.TailGlobalMixedEvenBitVecSemantic",
        "import Erdos848.TailGlobalMixedEvenTerminalActualSound",
        *support_imports,
        "import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData",
        "import Mathlib.Tactic",
        *(
            "import Erdos848.GeneratedTailGlobalMixedSupportCoverage."
            f"MaskDispatchGroup{group:04d}"
            for group in used_groups
        ),
    ]
    theorem_blocks = [
        "\n\n".join(parts) for parts in theorem_parts
    ]
    source = "\n".join(imports) + f"""

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

{lookup_sound_theorem("Normal", ident, used_primes)}

{lookup_sound_theorem("Twist", ident, used_primes)}

{"\n\n".join(theorem_blocks)}

#print axioms {ident}Row{len(terminals) - 1:04d}_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
"""
    write_if_changed(OUT / f"{name}.lean", source)
    return name


def write_choice_sound(k: int, terminal_count: int, group_names: list[str]) -> None:
    imports = [
        f"import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK{k}Selector",
        *(
            "import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound." + name
            for name in group_names
        ),
    ]
    cases = []
    for index in range(terminal_count):
        group_size = even.terminal_group_size(k)
        group_index = index // group_size
        row_index = index % group_size
        cases.extend([
            f"  | row{index:04d} =>",
            "      exact "
            f"evenK{k}TerminalGroup{group_index:04d}Row{row_index:04d}_global_counts",
        ])
    source = "\n".join(imports) + f"""

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK{k}Choice_global_counts
    (choice : EvenK{k}Choice) :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
      choice.terminal.maskedPrefix).counts = choice.terminal.counts.toBitVec := by
  cases choice with
{chr(10).join(cases)}

#print axioms evenK{k}Choice_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
"""
    write_if_changed(OUT / f"EvenK{k}ChoiceSound.lean", source)

    fit_cases = []
    for index in range(terminal_count):
        group_size = even.terminal_group_size(k)
        group_index = index // group_size
        row_index = index % group_size
        fit_cases.extend([
            f"  | row{index:04d} =>",
            "      exact "
            f"evenK{k}TerminalGroup{group_index:04d}Row{row_index:04d}_counts_fit",
        ])
    actual_source = f"""import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK{k}ChoiceSound
import Erdos848.TailGlobalMixedEvenTerminalActualSound

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK{k}Choice_counts_fit (choice : EvenK{k}Choice) :
    choice.terminal.counts.FitsBitVec64 := by
  cases choice with
{chr(10).join(fit_cases)}

theorem evenK{k}Choice_actual_counts (choice : EvenK{k}Choice) :
    Erdos848.globalMixedEvenActualCounts choice.terminal.maskedPrefix =
      choice.terminal.counts :=
  Erdos848.globalMixedEvenActualCounts_eq_of_bitVecCounts
    (evenK{k}Choice_global_counts choice) (evenK{k}Choice_counts_fit choice)

#print axioms evenK{k}Choice_actual_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
"""
    write_if_changed(OUT / f"EvenK{k}ChoiceActualSound.lean", actual_source)

    pass_source = f"""import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK{k}ChoiceActualSound
import Erdos848.TailGlobalMixedEvenTerminalPassSound

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK{k}Choice_terminal_endpoint_lower
    (choice : EvenK{k}Choice) :
    5_000_000 <= choice.terminal.endpoint := by
  cases choice <;> decide

theorem evenK{k}Choice_terminal_prefix_passes
    (choice : EvenK{k}Choice)
    (hpass : Erdos848.globalMixedEvenTerminalCountsPasses
      {k} choice.terminal = true) :
    Erdos848.globalMixedEvenTerminalPrefixPasses
      {k} choice.terminal.endpoint choice.terminal.maskedPrefix = true := by
  apply Erdos848.globalMixedEvenTerminalPrefixPasses_of_counts
    (evenK{k}Choice_actual_counts choice)
  simpa [Erdos848.globalMixedEvenTerminalCountsPasses] using hpass

#print axioms evenK{k}Choice_terminal_endpoint_lower
#print axioms evenK{k}Choice_terminal_prefix_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
"""
    write_if_changed(OUT / f"EvenK{k}ChoicePassSound.lean", pass_source)


def write_root() -> None:
    imports = "\n".join(
        "import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound."
        f"EvenK{k}ChoicePassSound" for k in range(2, 9)
    )
    source = f"""{imports}

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

#print axioms evenK8Choice_terminal_endpoint_lower
#print axioms evenK8Choice_terminal_prefix_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
"""
    write_if_changed(OUT / "Certificate.lean", source)


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    total_groups = 0
    total_rows = 0
    for k in range(2, 9):
        terminals = even.terminal_trie(k, list(even.base.PREFIXES[k]))
        group_names = [
            write_group(k, group_index, group)
            for group_index, group in enumerate(
                chunks(terminals, even.terminal_group_size(k))
            )
        ]
        write_choice_sound(k, len(terminals), group_names)
        total_groups += len(group_names)
        total_rows += len(terminals)
    write_root()
    print(f"generated {total_groups} sound groups for {total_rows} terminals")


if __name__ == "__main__":
    main()
