#!/usr/bin/env python3
"""Generate the fixed 20M--40M transformed-root certificate.

This program is deliberately untrusted.  It only emits bit tables, finite
support-prefix lists, and Boolean computations.  Lean checks every generated
claim with ``--trust=0``; separate hand-written modules give the bit tables
their mathematical meaning and prove that every actual support reaches this
finite domain.
"""

from __future__ import annotations

from itertools import islice
from pathlib import Path
import math


ROOT = Path(__file__).resolve().parents[1]
ERDOS = ROOT / "lean4" / "Erdos848"
OUT = ERDOS / "GeneratedTailTwentyMillionRootCoverage"

SUPPORT_BOUND = 40_000_000
MAX_WORD_BOUND = 5_776
OPERATIONAL_WORD_BOUND = ((MAX_WORD_BOUND + 63) // 64) * 64
NORMAL_MASK_BOUND = 9_161
PREFIX_GROUP_SIZE = 64
MASK_GROUP_SIZE = 16
MASK_SEMANTIC_PART_SIZE = 4
MASK_SEMANTIC_SINGLETON_FROM = 1_500

WRITTEN_PATHS: set[Path] = set()

ROWS = {
    "evenOne": {
        "bound": 76 * 76,
        "accept": lambda m: m % 2 == 1,
        "twist": False,
    },
    "evenOneTwist": {
        "bound": 76 * 76,
        "accept": lambda m: m % 2 == 1,
        "twist": True,
    },
    "evenTwo": {
        "bound": 76 * 76,
        "accept": lambda m: m % 4 == 1,
        "twist": False,
    },
    "evenTwoTwist": {
        "bound": 76 * 76,
        "accept": lambda m: m % 4 == 1,
        "twist": True,
    },
    "evenThree": {
        "bound": 70 * 70,
        "accept": lambda m: m % 8 == 1,
        "twist": False,
    },
    "evenThreeTwist": {
        "bound": 70 * 70,
        "accept": lambda m: m % 8 == 5,
        "twist": True,
    },
    "odd": {
        "bound": 76 * 76,
        "accept": lambda _m: True,
        "twist": False,
    },
    "oddTwist": {
        "bound": 76 * 76,
        "accept": lambda _m: True,
        "twist": True,
    },
}


def primes_through(limit: int) -> list[int]:
    sieve = bytearray(b"\x01") * (limit + 1)
    sieve[0:2] = b"\x00\x00"
    for p in range(2, math.isqrt(limit) + 1):
        if sieve[p]:
            sieve[p * p : limit + 1 : p] = b"\x00" * (
                ((limit - p * p) // p) + 1
            )
    return [p for p in range(2, limit + 1) if sieve[p]]


# This is definitionally the old public kernel table through its sentinel.
SUPPORT_PRIMES = [p for p in primes_through(9_161) if p not in (2, 5)]


def feasible_prefixes(k: int) -> list[tuple[int, ...]]:
    if k == 0:
        return [()]
    need = k - 1
    result: list[tuple[int, ...]] = []

    def visit(start: int, left: int, product: int, prefix: list[int]) -> None:
        if left == 0:
            if (
                start < len(SUPPORT_PRIMES)
                and product * SUPPORT_PRIMES[start] <= SUPPORT_BOUND
            ):
                result.append(tuple(prefix))
            return
        index = start
        while index + left < len(SUPPORT_PRIMES):
            least = product
            for offset in range(left + 1):
                least *= SUPPORT_PRIMES[index + offset]
            if SUPPORT_BOUND < least:
                break
            p = SUPPORT_PRIMES[index]
            prefix.append(p)
            visit(index + 1, left - 1, product * p, prefix)
            prefix.pop()
            index += 1

    visit(0, need, 1, [])
    return result


PREFIXES = [feasible_prefixes(k) for k in range(8)]
MASK_PRIMES = sorted(
    {p for rows in PREFIXES for support in rows for p in support}
)
MASK_PRIME_INDEX = {p: i for i, p in enumerate(MASK_PRIMES)}
MASK_GROUPS = [
    MASK_PRIMES[i : i + MASK_GROUP_SIZE]
    for i in range(0, len(MASK_PRIMES), MASK_GROUP_SIZE)
]


def chunks(values: list, size: int):
    iterator = iter(values)
    while chunk := list(islice(iterator, size)):
        yield chunk


def write_generated(path: Path, source: str) -> None:
    """Write generated source without invalidating unchanged kernel artifacts."""
    WRITTEN_PATHS.add(path)
    if path.is_file() and path.read_text(encoding="utf-8") == source:
        return
    path.write_text(source, encoding="utf-8")


def word_list(bound: int, predicate) -> list[int]:
    words: list[int] = []
    for word_start in range(0, bound, 64):
        word = 0
        for bit in range(min(64, bound - word_start)):
            value = word_start + bit + 1
            if predicate(value):
                word |= 1 << bit
        words.append(word)
    return words


def lean_list(values, indent: str = "  ", width: int = 100) -> str:
    rendered = [str(value) for value in values]
    lines: list[str] = []
    current = "["
    for item in rendered:
        token = item if current == "[" else ", " + item
        if len(indent) + len(current) + len(token) > width and current != "[":
            lines.append(indent + current)
            current = "  , " + item
        else:
            current += token
    current += "]"
    lines.append(indent + current)
    return "\n".join(lines)


def lean_nested_list(rows: list[tuple[int, ...]]) -> str:
    if not rows:
        return "[]"
    return "[" + ",\n    ".join(
        "[" + ", ".join(map(str, row)) + "]" for row in rows
    ) + "]"


def disjunction_cases(count: int) -> str:
    return " | ".join("rfl" for _ in range(count))


def write_common_data() -> None:
    lines = [
        "import Erdos848.TailTwentyMillionRootTypes",
        "",
        "namespace Erdos848.GeneratedTailTwentyMillionRootCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        "def rootMaskPrimes : List ℕ :=",
        lean_list(MASK_PRIMES),
        "",
        "def rootBaseWords : Erdos848.TwentyMillionRootRow → Bool → List ℕ",
    ]
    for row_name, row in ROWS.items():
        for coset in (False, True):
            residues = (1, 4) if coset else (2, 3)
            words = word_list(
                MAX_WORD_BOUND,
                lambda m, row=row, residues=residues: (
                    m <= row["bound"]
                    and row["accept"](m)
                    and m % 5 in residues
                ),
            )
            lines.append(
                f"  | .{row_name}, {str(coset).lower()} =>\n"
                f"{lean_list(words, '    ')}"
            )
    row_cosets = [
        f"(.{row_name}, {str(coset).lower()})"
        for row_name in ROWS
        for coset in (False, True)
    ]
    lines.extend(
        [
            "",
            "def rootBaseRowCosets :",
            "    List (Erdos848.TwentyMillionRootRow × Bool) :=",
            "  [" + ", ".join(row_cosets) + "]",
            "",
            "end Erdos848.GeneratedTailTwentyMillionRootCoverage",
            "",
        ]
    )
    write_generated(OUT / "CommonData.lean", "\n".join(lines))


def write_base_semantics() -> None:
    pairs = [
        (row_name, coset)
        for row_name in ROWS
        for coset in (False, True)
    ]
    for index, (row_name, coset) in enumerate(pairs):
        source = f"""import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootBaseWordsPass{index:04d} :
    Erdos848.twentyMillionRootBaseWordsPassesWith
      rootBaseWords .{row_name} {str(coset).lower()} = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
"""
        write_generated(OUT / f"BaseSemanticGroup{index:04d}.lean", source)

    lines = [
        *(
            "import Erdos848.GeneratedTailTwentyMillionRootCoverage."
            f"BaseSemanticGroup{index:04d}"
            for index in range(len(pairs))
        ),
        "",
        "namespace Erdos848.GeneratedTailTwentyMillionRootCoverage",
        "",
        "theorem rootBaseWords_pass",
        "    (row : Erdos848.TwentyMillionRootRow) (squareCoset : Bool) :",
        "    Erdos848.twentyMillionRootBaseWordsPassesWith",
        "      rootBaseWords row squareCoset = true := by",
        "  cases row <;> cases squareCoset",
    ]
    lines.extend(
        f"  · exact rootBaseWordsPass{index:04d}"
        for index in range(len(pairs))
    )
    lines.extend(
        [
            "",
            "#print axioms rootBaseWords_pass",
            "",
            "end Erdos848.GeneratedTailTwentyMillionRootCoverage",
            "",
        ]
    )
    write_generated(OUT / "BaseSemanticCertificate.lean", "\n".join(lines))


def write_mask_data() -> None:
    for index, group in enumerate(MASK_GROUPS):
        lines = [
            "import Mathlib.Data.List.Basic",
            "",
            "namespace Erdos848.GeneratedTailTwentyMillionRootCoverage",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 0",
            "",
            f"def rootNormalQrMaskWords{index:04d} : ℕ → List ℕ",
        ]
        for p in group:
            words = word_list(
                max(p, OPERATIONAL_WORD_BOUND),
                lambda m, p=p: pow(m, (p - 1) // 2, p) == 1,
            )
            lines.append(f"  | {p} =>\n{lean_list(words, '    ')}")
        lines.extend(
            [
                "  | _ => []",
                "",
                f"def rootTwistQrMaskWords{index:04d} : ℕ → List ℕ",
            ]
        )
        for p in group:
            words = word_list(
                OPERATIONAL_WORD_BOUND,
                lambda m, p=p: pow(5 * m, (p - 1) // 2, p) == 1,
            )
            lines.append(f"  | {p} =>\n{lean_list(words, '    ')}")
        lines.extend(
            [
                "  | _ => []",
                "",
                "end Erdos848.GeneratedTailTwentyMillionRootCoverage",
                "",
            ]
        )
        write_generated(
            OUT / f"MaskDataGroup{index:04d}.lean", "\n".join(lines)
        )

    lines = [
        "import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData",
        *(
            f"import Erdos848.GeneratedTailTwentyMillionRootCoverage."
            f"MaskDataGroup{i:04d}"
            for i in range(len(MASK_GROUPS))
        ),
        "",
        "namespace Erdos848.GeneratedTailTwentyMillionRootCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "",
        "def rootNormalQrMaskWords (p : ℕ) : List ℕ :=",
    ]
    for index, group in enumerate(MASK_GROUPS):
        lines.append(
            f"  if p ≤ {group[-1]} then rootNormalQrMaskWords{index:04d} p else"
        )
    lines.extend(
        [
            "  []",
            "",
            "def rootTwistQrMaskWords (p : ℕ) : List ℕ :=",
        ]
    )
    for index, group in enumerate(MASK_GROUPS):
        lines.append(
            f"  if p ≤ {group[-1]} then rootTwistQrMaskWords{index:04d} p else"
        )
    lines.extend(
        [
            "  []",
            "",
            "end Erdos848.GeneratedTailTwentyMillionRootCoverage",
            "",
        ]
    )
    write_generated(OUT / "MaskData.lean", "\n".join(lines))


def write_mask_semantics() -> None:
    for index, group in enumerate(MASK_GROUPS):
        part_defs: list[str] = []
        part_group_theorems: list[str] = []
        part_modules: list[str] = []
        local_group_bridge_lines: list[str] = []
        part_size = (
            1
            if group[-1] >= MASK_SEMANTIC_SINGLETON_FROM
            else MASK_SEMANTIC_PART_SIZE
        )
        for part_index, part in enumerate(
            chunks(group, part_size)
        ):
            suffix = f"{index:04d}Part{part_index:02d}"
            part_module = f"MaskSemanticGroup{suffix}"
            part_def = f"rootMaskSemanticGroup{suffix}"
            part_theorem = f"{part_def}_passes"
            # Above the split threshold, importing the full sixteen-prime
            # lookup into every singleton made Lean re-elaborate the large
            # match while reducing `rfl`.  Emit just the selected prime's two
            # tables here, then bridge back to the shared group lookup in the
            # cheap aggregate module below.
            use_local_lookup = part_size == 1
            if use_local_lookup:
                normal_lookup = f"rootNormalQrMaskWords{suffix}"
                twist_lookup = f"rootTwistQrMaskWords{suffix}"
                local_lookup_lines = [
                    f"def {normal_lookup} : ℕ → List ℕ",
                ]
                for p in part:
                    normal_words = word_list(
                        max(p, OPERATIONAL_WORD_BOUND),
                        lambda m, p=p: pow(m, (p - 1) // 2, p) == 1,
                    )
                    local_lookup_lines.append(
                        f"  | {p} =>\n{lean_list(normal_words, '    ')}"
                    )
                local_lookup_lines.extend(
                    [
                        "  | _ => []",
                        "",
                        f"def {twist_lookup} : ℕ → List ℕ",
                    ]
                )
                for p in part:
                    twist_words = word_list(
                        OPERATIONAL_WORD_BOUND,
                        lambda m, p=p: pow(
                            5 * m, (p - 1) // 2, p
                        ) == 1,
                    )
                    local_lookup_lines.append(
                        f"  | {p} =>\n{lean_list(twist_words, '    ')}"
                    )
                local_lookup_lines.extend(["  | _ => []", ""])
                local_lookup_source = "\n".join(local_lookup_lines)
                part_imports = (
                    "import Erdos848.TailTwentyMillionRootCheckerCore"
                )
            else:
                normal_lookup = f"rootNormalQrMaskWords{index:04d}"
                twist_lookup = f"rootTwistQrMaskWords{index:04d}"
                local_lookup_source = ""
                part_imports = (
                    "import Erdos848.TailTwentyMillionRootCheckerCore\n"
                    "import "
                    "Erdos848.GeneratedTailTwentyMillionRootCoverage."
                    f"MaskDataGroup{index:04d}"
                )
            use_split_modules = use_local_lookup and part[0] >= 5683
            if use_split_modules:
                data_module = f"MaskSemanticGroup{suffix}Data"
                data_import = (
                    "Erdos848.GeneratedTailTwentyMillionRootCoverage."
                    f"{data_module}"
                )
                data_source = f"""import Erdos848.TailTwentyMillionRootMaskSplit

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

{local_lookup_source}
end Erdos848.GeneratedTailTwentyMillionRootCoverage
"""
                write_generated(OUT / f"{data_module}.lean", data_source)

                p = part[0]
                component_specs = [
                    (
                        "NormalPeriod",
                        f"{part_def}_normal_period_passes",
                        "Erdos848.twentyMillionRootNormalPeriodPassesWith\n"
                        f"      {normal_lookup} {p}",
                    ),
                    (
                        "NormalSquares",
                        f"{part_def}_normal_squares_passes",
                        "Erdos848.twentyMillionRootNormalSquaresPassesWith\n"
                        f"      {normal_lookup} {p}",
                    ),
                    (
                        "TwistPeriod",
                        f"{part_def}_twist_period_passes",
                        "Erdos848.twentyMillionRootTwistPeriodPassesWith\n"
                        f"      {normal_lookup}\n"
                        f"      {twist_lookup} {p}",
                    ),
                ]
                component_modules = []
                for component_suffix, theorem_name, proposition in component_specs:
                    component_module = (
                        f"MaskSemanticGroup{suffix}{component_suffix}"
                    )
                    component_modules.append(component_module)
                    component_source = f"""import {data_import}

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem {theorem_name} :
    {proposition} = true := by
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
"""
                    write_generated(
                        OUT / f"{component_module}.lean", component_source
                    )

                part_imports = "\n".join(
                    "import "
                    "Erdos848.GeneratedTailTwentyMillionRootCoverage."
                    f"{component_module}"
                    for component_module in component_modules
                )
                part_proof = f"""  apply List.all_eq_true.mpr
  intro q hq
  simp only [{part_def}, List.mem_cons, List.not_mem_nil,
    or_false] at hq
  rcases hq with rfl
  exact Erdos848.twentyMillionRootMaskPassesWith_of_split
    (by rfl)
    {part_def}_normal_period_passes
    {part_def}_normal_squares_passes
    {part_def}_twist_period_passes"""
                local_lookup_prelude = ""
            else:
                local_lookup_prelude = (
                    f"{local_lookup_source}\n" if local_lookup_source else ""
                )
                part_proof = "  rfl"

            part_source = f"""{part_imports}

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

{local_lookup_prelude}def {part_def} : List ℕ :=
{lean_list(part)}

theorem {part_theorem} :
    {part_def}.all
      (Erdos848.twentyMillionRootMaskPassesWith
        {normal_lookup}
        {twist_lookup}) = true := by
{part_proof}

end Erdos848.GeneratedTailTwentyMillionRootCoverage
"""
            write_generated(OUT / f"{part_module}.lean", part_source)
            part_modules.append(part_module)
            part_defs.append(part_def)
            if use_local_lookup:
                part_group_theorem = f"{part_def}_group_passes"
                part_group_theorems.append(part_group_theorem)
                cases = disjunction_cases(len(part))
                local_group_bridge_lines.extend(
                    [
                        f"theorem {part_group_theorem} :",
                        f"    {part_def}.all",
                        "      (Erdos848.twentyMillionRootMaskPassesWith",
                        f"        rootNormalQrMaskWords{index:04d}",
                        f"        rootTwistQrMaskWords{index:04d}) = true := by",
                        "  apply List.all_eq_true.mpr",
                        "  intro p hp",
                        "  have hlocal := (List.all_eq_true.mp",
                        f"    {part_theorem}) p hp",
                        f"  have hnormal : rootNormalQrMaskWords{index:04d} p =",
                        f"      {normal_lookup} p := by",
                        f"    simp only [{part_def}, List.mem_cons,",
                        "      List.not_mem_nil, or_false] at hp",
                        f"    rcases hp with {cases} <;> rfl",
                        f"  have htwist : rootTwistQrMaskWords{index:04d} p =",
                        f"      {twist_lookup} p := by",
                        f"    simp only [{part_def}, List.mem_cons,",
                        "      List.not_mem_nil, or_false] at hp",
                        f"    rcases hp with {cases} <;> rfl",
                        "  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at",
                        "    hnormal htwist]",
                        "  exact hlocal",
                        "",
                    ]
                )
            else:
                part_group_theorems.append(part_theorem)

        part_imports = "\n".join(
            "import Erdos848.GeneratedTailTwentyMillionRootCoverage."
            f"{module}"
            for module in part_modules
        )
        if part_size == 1:
            part_imports += (
                "\nimport "
                "Erdos848.GeneratedTailTwentyMillionRootCoverage."
                f"MaskDataGroup{index:04d}"
                "\nimport Erdos848.TailTwentyMillionRootMaskCongr"
            )
        part_concat = " ++\n      ".join(part_defs)
        source_lines = [
            part_imports,
            "",
            "namespace Erdos848.GeneratedTailTwentyMillionRootCoverage",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 0",
            "",
            *local_group_bridge_lines,
            f"def rootMaskSemanticGroup{index:04d} : List ℕ :=",
            lean_list(group),
            "",
            f"theorem rootMaskSemanticGroup{index:04d}_passes :",
            f"    rootMaskSemanticGroup{index:04d}.all",
            "      (Erdos848.twentyMillionRootMaskPassesWith",
            f"        rootNormalQrMaskWords{index:04d}",
            f"        rootTwistQrMaskWords{index:04d}) = true := by",
            f"  rw [show rootMaskSemanticGroup{index:04d} =",
            f"      {part_concat} by rfl]",
            "  simp only [List.all_append]",
        ]
        source_lines.extend(
            f"  rw [{part_group_theorem}]"
            for part_group_theorem in part_group_theorems
        )
        source_lines.extend(
            [
                "  rfl",
                "",
                "end Erdos848.GeneratedTailTwentyMillionRootCoverage",
                "",
            ]
        )
        write_generated(
            OUT / f"MaskSemanticGroup{index:04d}.lean",
            "\n".join(source_lines),
        )

        cases = disjunction_cases(len(group))
        bridge = f"""import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskData
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup{index:04d}
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup{index:04d}_global_passes :
    rootMaskSemanticGroup{index:04d}.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords rootTwistQrMaskWords) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup{index:04d}_passes) p hp
  have hnormal : rootNormalQrMaskWords p =
      rootNormalQrMaskWords{index:04d} p := by
    simp only [rootMaskSemanticGroup{index:04d}, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with {cases} <;> rfl
  have htwist : rootTwistQrMaskWords p =
      rootTwistQrMaskWords{index:04d} p := by
    simp only [rootMaskSemanticGroup{index:04d}, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with {cases} <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

end Erdos848.GeneratedTailTwentyMillionRootCoverage
"""
        write_generated(
            OUT / f"MaskGlobalBridgeGroup{index:04d}.lean", bridge
        )

    mask_group_concat = " ++\n      ".join(
        f"rootMaskSemanticGroup{i:04d}"
        for i in range(len(MASK_GROUPS))
    )
    lines = [
        *(
            f"import Erdos848.GeneratedTailTwentyMillionRootCoverage."
            f"MaskGlobalBridgeGroup{i:04d}"
            for i in range(len(MASK_GROUPS))
        ),
        "",
        "namespace Erdos848.GeneratedTailTwentyMillionRootCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        "def certifiedRootMaskPrimes : List ℕ :=",
        "  " + mask_group_concat.replace("\n      ", "\n  "),
        "",
        "theorem certifiedRootMaskPrimes_eq :",
        "    certifiedRootMaskPrimes = rootMaskPrimes := by",
        "  rfl",
        "",
        "theorem certifiedRootMaskPrimes_global_passes :",
        "    certifiedRootMaskPrimes.all",
        "      (Erdos848.twentyMillionRootMaskPassesWith",
        "        rootNormalQrMaskWords rootTwistQrMaskWords) = true := by",
        "  rw [show certifiedRootMaskPrimes =",
        f"      {mask_group_concat} by rfl]",
        "  simp only [List.all_append]",
    ]
    lines.extend(
        f"  rw [rootMaskSemanticGroup{index:04d}_global_passes]"
        for index in range(len(MASK_GROUPS))
    )
    lines.extend(
        [
            "  rfl",
            "",
            "#print axioms certifiedRootMaskPrimes_global_passes",
            "",
            "end Erdos848.GeneratedTailTwentyMillionRootCoverage",
            "",
        ]
    )
    write_generated(OUT / "MaskSemanticCertificate.lean", "\n".join(lines))


def local_lookup_lines(k: int, index: int, used_groups: list[int]) -> list[str]:
    normal_name = f"k{k}PrefixGroup{index:04d}NormalLookup"
    twist_name = f"k{k}PrefixGroup{index:04d}TwistLookup"
    lines = [f"def {normal_name} (p : ℕ) : List ℕ :="]
    for group_index in used_groups:
        last = MASK_GROUPS[group_index][-1]
        lines.append(
            f"  if p ≤ {last} then rootNormalQrMaskWords{group_index:04d} p else"
        )
    lines.append("  []")
    lines.extend(["", f"def {twist_name} (p : ℕ) : List ℕ :="])
    for group_index in used_groups:
        last = MASK_GROUPS[group_index][-1]
        lines.append(
            f"  if p ≤ {last} then rootTwistQrMaskWords{group_index:04d} p else"
        )
    lines.append("  []")
    return lines


def write_prefix_groups() -> list[list[str]]:
    all_names: list[list[str]] = []
    for k, rows in enumerate(PREFIXES):
        names: list[str] = []
        for index, group in enumerate(chunks(rows, PREFIX_GROUP_SIZE)):
            name = f"K{k}PrefixGroup{index:04d}"
            names.append(name)
            used_primes = sorted({p for support in group for p in support})
            used_groups = sorted(
                {MASK_PRIME_INDEX[p] // MASK_GROUP_SIZE for p in used_primes}
            )
            imports = [
                "import Erdos848.TailTwentyMillionRootCheckerCore",
                "import Erdos848.GeneratedTailTwentyMillionRootCoverage.CommonData",
                *(
                    ["import Erdos848.TailTwentyMillionRootMaskCongr"]
                    if used_groups
                    else []
                ),
                *(
                    "import Erdos848.GeneratedTailTwentyMillionRootCoverage."
                    f"MaskSemanticGroup{group_index:04d}"
                    for group_index in used_groups
                ),
            ]
            local_mask_expr = (
                " ++\n".join(
                    f"  rootMaskSemanticGroup{group_index:04d}"
                    for group_index in used_groups
                )
                if used_groups
                else "  []"
            )
            lines = [
                *imports,
                "",
                "namespace Erdos848.GeneratedTailTwentyMillionRootCoverage",
                "",
                "set_option maxRecDepth 1000000",
                "set_option maxHeartbeats 0",
                "",
                *local_lookup_lines(k, index, used_groups),
                "",
                f"def k{k}PrefixGroup{index:04d}MaskPrimes : List ℕ :=",
                local_mask_expr,
                "",
                f"def k{k}PrefixGroup{index:04d} : List (List ℕ) :=",
                f"  {lean_nested_list(group)}",
                "",
                f"theorem k{k}PrefixGroup{index:04d}_support_covered :",
                f"    k{k}PrefixGroup{index:04d}.all (fun support =>",
                "      support.all (fun p =>",
                f"        decide (p ∈ k{k}PrefixGroup{index:04d}MaskPrimes))) = true := by",
                "  rfl",
                "",
                f"theorem k{k}PrefixGroup{index:04d}_passes :",
                f"    k{k}PrefixGroup{index:04d}.all",
                "      (Erdos848.twentyMillionRootCorePrefixPasses",
                f"        k{k}PrefixGroup{index:04d}NormalLookup",
                f"        k{k}PrefixGroup{index:04d}TwistLookup rootBaseWords {k}) = true := by",
                "  rfl",
                "",
            ]

            bridge_theorems: list[str] = []
            for group_index in used_groups:
                cases = disjunction_cases(len(MASK_GROUPS[group_index]))
                theorem_name = (
                    f"k{k}PrefixGroup{index:04d}_mask_group"
                    f"{group_index:04d}_passes"
                )
                bridge_theorems.append(theorem_name)
                lines.extend(
                    [
                        f"theorem {theorem_name} :",
                        f"    rootMaskSemanticGroup{group_index:04d}.all",
                        "      (Erdos848.twentyMillionRootMaskPassesWith",
                        f"        k{k}PrefixGroup{index:04d}NormalLookup",
                        f"        k{k}PrefixGroup{index:04d}TwistLookup) = true := by",
                        "  apply List.all_eq_true.mpr",
                        "  intro p hp",
                        "  have hlocal := (List.all_eq_true.mp",
                        f"    rootMaskSemanticGroup{group_index:04d}_passes) p hp",
                        f"  have hnormal : k{k}PrefixGroup{index:04d}NormalLookup p =",
                        f"      rootNormalQrMaskWords{group_index:04d} p := by",
                        f"    simp only [rootMaskSemanticGroup{group_index:04d},",
                        "      List.mem_cons, List.not_mem_nil, or_false] at hp",
                        f"    rcases hp with {cases} <;> rfl",
                        f"  have htwist : k{k}PrefixGroup{index:04d}TwistLookup p =",
                        f"      rootTwistQrMaskWords{group_index:04d} p := by",
                        f"    simp only [rootMaskSemanticGroup{group_index:04d},",
                        "      List.mem_cons, List.not_mem_nil, or_false] at hp",
                        f"    rcases hp with {cases} <;> rfl",
                        "  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at",
                        "    hnormal htwist]",
                        "  exact hlocal",
                        "",
                    ]
                )

            lines.extend(
                [
                    f"theorem k{k}PrefixGroup{index:04d}_mask_primes_pass :",
                    f"    k{k}PrefixGroup{index:04d}MaskPrimes.all",
                    "      (Erdos848.twentyMillionRootMaskPassesWith",
                    f"        k{k}PrefixGroup{index:04d}NormalLookup",
                    f"        k{k}PrefixGroup{index:04d}TwistLookup) = true := by",
                ]
            )
            if len(used_groups) == 1:
                lines.extend(
                    [
                        f"  simpa only [k{k}PrefixGroup{index:04d}MaskPrimes] using",
                        f"    {bridge_theorems[0]}",
                    ]
                )
            elif used_groups:
                lines.append(
                    f"  simp only [k{k}PrefixGroup{index:04d}MaskPrimes,"
                    " List.all_append]"
                )
                lines.extend(f"  rw [{theorem}]" for theorem in bridge_theorems)
                lines.append("  rfl")
            else:
                lines.append("  rfl")
            lines.extend(
                [
                    "",
                    f"theorem k{k}PrefixGroup{index:04d}_certified",
                    f"    {{support : List ℕ}} (hsupport : support ∈ k{k}PrefixGroup{index:04d}) :",
                    "    ∃ normalLookup twistLookup : ℕ → List ℕ,",
                    "      (∀ p ∈ support,",
                    "        Erdos848.twentyMillionRootMaskPassesWith",
                    "          normalLookup twistLookup p = true) ∧",
                    "      Erdos848.twentyMillionRootCorePrefixPasses",
                    f"        normalLookup twistLookup rootBaseWords {k} support = true := by",
                    f"  refine ⟨k{k}PrefixGroup{index:04d}NormalLookup,",
                    f"    k{k}PrefixGroup{index:04d}TwistLookup, ?_,",
                    "    (List.all_eq_true.mp",
                    f"      k{k}PrefixGroup{index:04d}_passes) support hsupport⟩",
                    "  intro p hp",
                    "  have hcovered := (List.all_eq_true.mp",
                    f"    k{k}PrefixGroup{index:04d}_support_covered) support hsupport",
                    "  have hmem : p ∈",
                    f"      k{k}PrefixGroup{index:04d}MaskPrimes :=",
                    "    of_decide_eq_true ((List.all_eq_true.mp hcovered) p hp)",
                    "  exact (List.all_eq_true.mp",
                    f"    k{k}PrefixGroup{index:04d}_mask_primes_pass) p hmem",
                    "",
                    f"#print axioms k{k}PrefixGroup{index:04d}_certified",
                    "",
                    "end Erdos848.GeneratedTailTwentyMillionRootCoverage",
                    "",
                ]
            )
            write_generated(OUT / f"{name}.lean", "\n".join(lines))
        all_names.append(names)
    return all_names


def write_k_certificates(all_names: list[list[str]]) -> None:
    for k, names in enumerate(all_names):
        lines = [
            *(
                f"import Erdos848.GeneratedTailTwentyMillionRootCoverage.{name}"
                for name in names
            ),
            "",
            "namespace Erdos848.GeneratedTailTwentyMillionRootCoverage",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 0",
            "",
            f"def k{k}CertifiedPrefixes : List (List ℕ) :=",
            " ++\n".join(
                f"  k{k}PrefixGroup{index:04d}" for index in range(len(names))
            ),
            "",
            f"theorem k{k}CertifiedPrefixes_eq :",
            f"    k{k}CertifiedPrefixes =",
            f"      Erdos848.twentyMillionRootFeasiblePrefixes {k} := by",
            "  rfl",
            "",
            f"theorem k{k}_certified_of_mem",
            "    {support : List ℕ}",
            "    (hsupport : support ∈",
            f"      Erdos848.twentyMillionRootFeasiblePrefixes {k}) :",
            "    ∃ normalLookup twistLookup : ℕ → List ℕ,",
            "      (∀ p ∈ support,",
            "        Erdos848.twentyMillionRootMaskPassesWith",
            "          normalLookup twistLookup p = true) ∧",
            "      Erdos848.twentyMillionRootCorePrefixPasses",
            f"        normalLookup twistLookup rootBaseWords {k} support = true := by",
            f"  rw [← k{k}CertifiedPrefixes_eq] at hsupport",
            f"  simp only [k{k}CertifiedPrefixes, List.mem_append] at hsupport",
        ]
        if len(names) == 1:
            lines.append(f"  exact k{k}PrefixGroup0000_certified hsupport")
        else:
            case_pattern = "h0"
            for index in range(1, len(names)):
                case_pattern = f"({case_pattern} | h{index})"
            lines.append(f"  rcases hsupport with {case_pattern}")
            lines.extend(
                f"  · exact k{k}PrefixGroup{index:04d}_certified h{index}"
                for index in range(len(names))
            )
        lines.extend(
            [
                "",
                f"#print axioms k{k}_certified_of_mem",
                "",
                "end Erdos848.GeneratedTailTwentyMillionRootCoverage",
                "",
            ]
        )
        write_generated(OUT / f"K{k}Certificate.lean", "\n".join(lines))

    lines = [
        *(
            f"import Erdos848.GeneratedTailTwentyMillionRootCoverage.K{k}Certificate"
            for k in range(8)
        ),
        "",
        "namespace Erdos848.GeneratedTailTwentyMillionRootCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        "theorem rootPrefix_certified_of_mem",
        "    {k : ℕ} (hk : k ≤ 7) {support : List ℕ}",
        "    (hsupport : support ∈",
        "      Erdos848.twentyMillionRootFeasiblePrefixes k) :",
        "    ∃ normalLookup twistLookup : ℕ → List ℕ,",
        "      (∀ p ∈ support,",
        "        Erdos848.twentyMillionRootMaskPassesWith",
        "          normalLookup twistLookup p = true) ∧",
        "      Erdos848.twentyMillionRootCorePrefixPasses",
        "        normalLookup twistLookup rootBaseWords k support = true := by",
        "  interval_cases k",
    ]
    lines.extend(f"  · exact k{k}_certified_of_mem hsupport" for k in range(8))
    lines.extend(
        [
            "",
            "#print axioms rootPrefix_certified_of_mem",
            "",
            "end Erdos848.GeneratedTailTwentyMillionRootCoverage",
            "",
        ]
    )
    write_generated(OUT / "Certificate.lean", "\n".join(lines))


def clean_generated() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    resolved = OUT.resolve()
    if resolved.parent != ERDOS.resolve():
        raise RuntimeError(f"unsafe output directory: {resolved}")
    WRITTEN_PATHS.clear()


def clean_stale_generated() -> None:
    for path in OUT.glob("*.lean"):
        if path not in WRITTEN_PATHS:
            path.unlink()


def main() -> None:
    clean_generated()
    write_common_data()
    write_base_semantics()
    write_mask_data()
    write_mask_semantics()
    names = write_prefix_groups()
    write_k_certificates(names)
    clean_stale_generated()
    print(
        "generated "
        f"{sum(map(len, PREFIXES))} prefixes in "
        f"{sum(map(len, names))} groups, "
        f"{len(MASK_PRIMES)} mask primes in {len(MASK_GROUPS)} groups; "
        f"counts={[len(rows) for rows in PREFIXES]}"
    )


if __name__ == "__main__":
    main()
