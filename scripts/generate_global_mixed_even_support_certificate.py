#!/usr/bin/env python3
"""Generate the branch-and-bound certificate for the E2/E3 support rows.

The producer traverses the finite support-prefix trie already used by the
global mixed proof.  At a node it checks the QR survivor count for that short
prefix at the least endpoint of every completion below the node.  QR survivor
sets are antitone under support extension, so a successful node closes its
whole subtree.  No ambient value of ``N`` is enumerated.

The generated Boolean leaves are checked by Lean's kernel.  This Python file
is only an untrusted certificate producer.
"""

from __future__ import annotations

from collections import defaultdict
from dataclasses import dataclass
from functools import lru_cache
from importlib.util import module_from_spec, spec_from_file_location
from itertools import islice
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"
ERDOS = LEAN / "Erdos848"
OUT = ERDOS / "GeneratedTailGlobalMixedEvenSupportCoverage"
BASE_SCRIPT = ROOT / "scripts" / "generate_global_mixed_support_certificate.py"
TERMINAL_GROUP_SIZE = 16


def terminal_group_size(k: int) -> int:
    """Keep proven small layers stable; split memory-heavy K6+ rows."""
    return TERMINAL_GROUP_SIZE if k <= 5 else 1

EXPECTED_TERMINALS = {
    2: 1,
    3: 98,
    4: 590,
    5: 839,
    6: 304,
    7: 28,
    8: 2,
}

spec = spec_from_file_location("global_mixed_base", BASE_SCRIPT)
assert spec is not None and spec.loader is not None
base = module_from_spec(spec)
spec.loader.exec_module(base)


@dataclass(frozen=True)
class Terminal:
    prefix: tuple[int, ...]
    masked_prefix: tuple[int, ...]
    endpoint: int
    counts: tuple[int, int, int, int, int, int, int, int]


def chunks(values: list, size: int):
    iterator = iter(values)
    while chunk := list(islice(iterator, size)):
        yield chunk


def write_if_changed(path: Path, content: str) -> None:
    if path.exists() and path.read_text(encoding="utf-8") == content:
        return
    path.write_text(content, encoding="utf-8")


def lean_list(values, indent: str = "  ", width: int = 100) -> str:
    return base.lean_list(values, indent, width)


def valuation_words(bound: int, modulus: int, residue: int) -> tuple[int, ...]:
    return tuple(base.word_list(bound, lambda m: m % modulus == residue))


def byte_list(bound: int, predicate) -> list[int]:
    values: list[int] = []
    for byte_start in range(0, bound, 8):
        byte = 0
        for bit in range(min(8, bound - byte_start)):
            m = byte_start + bit + 1
            if predicate(m):
                byte |= 1 << bit
        values.append(byte)
    return values


NORMAL_COSETS = {
    value: tuple(
        base.word_list(
            base.NORMAL_BOUND,
            lambda m, value=value: m % 5 in ((1, 4) if value else (2, 3)),
        )
    )
    for value in (False, True)
}
TWIST_COSETS = {
    value: tuple(
        base.word_list(
            base.TWIST_BOUND,
            lambda m, value=value: m % 5 in ((1, 4) if value else (2, 3)),
        )
    )
    for value in (False, True)
}
NORMAL_VALUATIONS = {
    2: valuation_words(base.NORMAL_BOUND, 4, 1),
    3: valuation_words(base.NORMAL_BOUND, 8, 1),
}
TWIST_VALUATIONS = {
    2: valuation_words(base.TWIST_BOUND, 4, 1),
    3: valuation_words(base.TWIST_BOUND, 8, 5),
}


def intersect_words(left: tuple[int, ...], right: tuple[int, ...]) -> tuple[int, ...]:
    return tuple(a & b for a, b in zip(left, right))


@lru_cache(maxsize=None)
def qr_words(p: int, twist: bool) -> tuple[int, ...]:
    if twist:
        return tuple(
            base.word_list(
                base.TWIST_BOUND,
                lambda m: pow(5 * m, p // 2, p) == 1,
            )
        )
    return tuple(
        base.word_list(
            base.NORMAL_BOUND,
            lambda m: pow(m, p // 2, p) == 1,
        )
    )


@lru_cache(maxsize=None)
def support_word_pair(
    masked_prefix: tuple[int, ...], twist: bool
) -> tuple[tuple[int, ...], tuple[int, ...]]:
    cosets = TWIST_COSETS if twist else NORMAL_COSETS
    if not masked_prefix:
        return cosets[False], cosets[True]
    previous = support_word_pair(masked_prefix[:-1], twist)
    mask = qr_words(masked_prefix[-1], twist)
    return intersect_words(previous[0], mask), intersect_words(previous[1], mask)


def restricted_counts(
    masked_prefix: tuple[int, ...], valuation: int, twist: bool
) -> tuple[int, int]:
    words = support_word_pair(masked_prefix, twist)
    valuation_mask = (
        TWIST_VALUATIONS[valuation] if twist else NORMAL_VALUATIONS[valuation]
    )
    return tuple(
        sum(word.bit_count() for word in intersect_words(row, valuation_mask))
        for row in words
    )


def support_endpoint(row: tuple[int, ...]) -> int:
    product = 1
    for p in row:
        product *= p
    return max(5_000_000, product * base.extension_prime(row))


def line_discount(endpoint: int) -> int:
    for start, stop, prime_count in base.RELEVANT_BLOCKS:
        if endpoint < base.SPLIT * (stop + 1):
            return min(153 * start - 1000 * prime_count, 11_427_393)
    return 11_427_393


def line_passes(coefficient: int, endpoint: int) -> bool:
    discount = line_discount(endpoint)
    if 10 * coefficient <= discount:
        return True
    excess = 10 * coefficient - discount
    return (
        (153_000 * endpoint + 55_000 * excess)
        * (6 * 12_755_647_965_025)
        <= 221_926_420_176 * 55_000_000 * endpoint
    )


def root_coefficient(valuation: int, k: int, survivors: int) -> int:
    root_factor = 2 if valuation == 2 else 4
    return root_factor * 2 ** (k + 1) * (100 * survivors + 441)


def checker_coefficient(valuation: int, coefficient: int) -> int:
    if valuation == 2:
        return coefficient
    return (max(5 * coefficient - 872_700, 0) + 5) // 6


@lru_cache(maxsize=None)
def terminal_passes(k: int, masked_prefix: tuple[int, ...], endpoint: int) -> bool:
    for valuation in (2, 3):
        for twist in (False, True):
            for survivors in restricted_counts(masked_prefix, valuation, twist):
                coefficient = checker_coefficient(
                    valuation, root_coefficient(valuation, k, survivors)
                )
                if not line_passes(coefficient, endpoint):
                    return False
    return True


def terminal_counts(
    masked_prefix: tuple[int, ...]
) -> tuple[int, int, int, int, int, int, int, int]:
    normal_two = restricted_counts(masked_prefix, 2, False)
    twist_two = restricted_counts(masked_prefix, 2, True)
    normal_three = restricted_counts(masked_prefix, 3, False)
    twist_three = restricted_counts(masked_prefix, 3, True)
    return (
        normal_two[0], normal_two[1], twist_two[0], twist_two[1],
        normal_three[0], normal_three[1], twist_three[0], twist_three[1],
    )


def terminal_trie(k: int, rows: list[tuple[int, ...]]) -> list[Terminal]:
    endpoints = {row: support_endpoint(row) for row in rows}
    terminals: list[Terminal] = []

    def visit(prefix: tuple[int, ...], descendants: list[tuple[int, ...]]) -> None:
        endpoint = min(endpoints[row] for row in descendants)
        masked = tuple(p for p in prefix if p <= base.MASK_PRIME_LIMIT)
        if terminal_passes(k, masked, endpoint):
            terminals.append(Terminal(prefix, masked, endpoint, terminal_counts(masked)))
            return
        if any(len(row) == len(prefix) for row in descendants):
            raise RuntimeError(
                f"unclosed full leaf k={k} prefix={prefix} endpoint={endpoint}"
            )
        children: dict[int, list[tuple[int, ...]]] = defaultdict(list)
        for row in descendants:
            children[row[len(prefix)]].append(row)
        for p in sorted(children):
            visit(prefix + (p,), children[p])

    visit((), rows)
    return terminals


def render_terminal(terminal: Terminal) -> str:
    prefix = "[" + ", ".join(map(str, terminal.prefix)) + "]"
    masked = "[" + ", ".join(map(str, terminal.masked_prefix)) + "]"
    counts = terminal.counts
    counts_value = (
        "{ normalFalseTwo := " + str(counts[0])
        + ", normalTrueTwo := " + str(counts[1])
        + ", twistFalseTwo := " + str(counts[2])
        + ", twistTrueTwo := " + str(counts[3])
        + ", normalFalseThree := " + str(counts[4])
        + ", normalTrueThree := " + str(counts[5])
        + ", twistFalseThree := " + str(counts[6])
        + ", twistTrueThree := " + str(counts[7]) + " }"
    )
    return (
        "{ branchPrefix := "
        + prefix
        + ", maskedPrefix := "
        + masked
        + f", endpoint := {terminal.endpoint}, counts := {counts_value} }}"
    )


def render_terminal_list(terminals: list[Terminal]) -> str:
    return "[\n    " + ",\n    ".join(map(render_terminal, terminals)) + "\n  ]"


def longest_common_prefix(rows: list[tuple[int, ...]]) -> tuple[int, ...]:
    if not rows:
        return ()
    prefix = list(rows[0])
    for row in rows[1:]:
        length = 0
        while length < min(len(prefix), len(row)) and prefix[length] == row[length]:
            length += 1
        prefix = prefix[:length]
    return tuple(prefix)


def restricted_word_rows(
    masked_prefix: tuple[int, ...]
) -> tuple[tuple[int, ...], ...]:
    normal = support_word_pair(masked_prefix, False)
    twist = support_word_pair(masked_prefix, True)
    return (
        intersect_words(normal[0], NORMAL_VALUATIONS[2]),
        intersect_words(normal[1], NORMAL_VALUATIONS[2]),
        intersect_words(twist[0], TWIST_VALUATIONS[2]),
        intersect_words(twist[1], TWIST_VALUATIONS[2]),
        intersect_words(normal[0], NORMAL_VALUATIONS[3]),
        intersect_words(normal[1], NORMAL_VALUATIONS[3]),
        intersect_words(twist[0], TWIST_VALUATIONS[3]),
        intersect_words(twist[1], TWIST_VALUATIONS[3]),
    )


def render_bitvec_words(words: tuple[int, ...]) -> str:
    return "[" + ", ".join(
        f"({word} : Erdos848.GlobalMixedWord)" for word in words
    ) + "]"


def render_bitvec_rows(rows: tuple[tuple[int, ...], ...]) -> str:
    names = (
        "normalFalseTwo", "normalTrueTwo", "twistFalseTwo", "twistTrueTwo",
        "normalFalseThree", "normalTrueThree", "twistFalseThree", "twistTrueThree",
    )
    return "{ " + "\n    ".join(
        f"{name} := {render_bitvec_words(words)}" for name, words in zip(names, rows)
    ) + " }"


def local_lookup(kind: str, ident: str, used_data_groups: list[int]) -> str:
    lines = [f"def {ident}{kind}Lookup (p : Nat) : List Nat :="]
    if not used_data_groups:
        lines.append("  []")
    else:
        stem = kind[0].lower() + kind[1:]
        for group_index in used_data_groups:
            last = base.MASK_PRIMES[
                min((group_index + 1) * base.MASK_GROUP_SIZE, len(base.MASK_PRIMES))
                - 1
            ]
            lines.append(
                f"  if p <= {last} then "
                "Erdos848.GeneratedTailGlobalMixedSupportCoverage."
                f"{stem}QrMaskWords{group_index:04d} p else"
            )
        lines.append("  []")
    return "\n".join(lines)


def write_data() -> None:
    rows = {
        "one": (2, 1, 2, 1),
        "two": (4, 1, 4, 1),
        "three": (8, 1, 8, 5),
    }
    lines = [
        "import Erdos848.TailGlobalMixedEvenSupportClass",
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        "def normalValuationWords : GlobalMixedEvenValuation -> List Nat",
    ]
    for name, (normal_mod, normal_res, _twist_mod, _twist_res) in rows.items():
        words = valuation_words(base.NORMAL_BOUND, normal_mod, normal_res)
        lines.append(f"  | .{name} =>\n{lean_list(words, '    ')}")
    lines.extend(["", "def twistValuationWords : GlobalMixedEvenValuation -> List Nat"])
    for name, (_normal_mod, _normal_res, twist_mod, twist_res) in rows.items():
        words = valuation_words(base.TWIST_BOUND, twist_mod, twist_res)
        lines.append(f"  | .{name} =>\n{lean_list(words, '    ')}")
    lines.extend(["", "end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage", ""])
    write_if_changed(OUT / "Data.lean", "\n".join(lines))


def write_byte_data() -> None:
    rows = {
        "one": (2, 1, 2, 1),
        "two": (4, 1, 4, 1),
        "three": (8, 1, 8, 5),
    }
    lines = [
        "import Erdos848.TailGlobalMixedEvenSupportClass",
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        "def normalCosetBytes : Bool -> List Nat",
    ]
    for coset in (False, True):
        values = byte_list(
            base.NORMAL_BOUND,
            lambda m, coset=coset: m % 5 in ((1, 4) if coset else (2, 3)),
        )
        lines.append(
            f"  | {'true' if coset else 'false'} =>\n{lean_list(values, '    ')}"
        )
    lines.extend(["", "def twistCosetBytes : Bool -> List Nat"])
    for coset in (False, True):
        values = byte_list(
            base.TWIST_BOUND,
            lambda m, coset=coset: m % 5 in ((1, 4) if coset else (2, 3)),
        )
        lines.append(
            f"  | {'true' if coset else 'false'} =>\n{lean_list(values, '    ')}"
        )
    lines.extend(["", "def normalValuationBytes : GlobalMixedEvenValuation -> List Nat"])
    for name, (normal_mod, normal_res, _twist_mod, _twist_res) in rows.items():
        values = byte_list(
            base.NORMAL_BOUND,
            lambda m, modulus=normal_mod, residue=normal_res: m % modulus == residue,
        )
        lines.append(f"  | .{name} =>\n{lean_list(values, '    ')}")
    lines.extend(["", "def twistValuationBytes : GlobalMixedEvenValuation -> List Nat"])
    for name, (_normal_mod, _normal_res, twist_mod, twist_res) in rows.items():
        values = byte_list(
            base.TWIST_BOUND,
            lambda m, modulus=twist_mod, residue=twist_res: m % modulus == residue,
        )
        lines.append(f"  | .{name} =>\n{lean_list(values, '    ')}")
    lines.extend(["", "end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage", ""])
    write_if_changed(OUT / "ByteData.lean", "\n".join(lines))


def write_byte_mask_data() -> None:
    for index, group in enumerate(chunks(base.MASK_PRIMES, base.MASK_GROUP_SIZE)):
        lines = [
            "import Mathlib.Data.List.Basic",
            "",
            "namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 0",
            "",
            f"def normalQrMaskBytes{index:04d} : Nat -> List Nat",
        ]
        for p in group:
            values = byte_list(
                base.NORMAL_BOUND,
                lambda m, p=p: pow(m, p // 2, p) == 1,
            )
            lines.append(f"  | {p} =>\n{lean_list(values, '    ')}")
        lines.extend(["  | _ => []", "", f"def twistQrMaskBytes{index:04d} : Nat -> List Nat"])
        for p in group:
            values = byte_list(
                base.TWIST_BOUND,
                lambda m, p=p: pow(5 * m, p // 2, p) == 1,
            )
            lines.append(f"  | {p} =>\n{lean_list(values, '    ')}")
        lines.extend(["  | _ => []", "", "end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage", ""])
        write_if_changed(
            OUT / f"ByteMaskDataGroup{index:04d}.lean", "\n".join(lines)
        )


def write_terminal_group(
    k: int, index: int, terminals: list[Terminal], word_indices: dict[int, int]
) -> str:
    name = f"EvenK{k}TerminalGroup{index:04d}"
    ident = f"evenK{k}TerminalGroup{index:04d}"
    used_primes = sorted(
        {p for terminal in terminals for p in terminal.masked_prefix}
    )
    used_groups = sorted(
        {base.MASK_PRIMES.index(p) // base.MASK_GROUP_SIZE for p in used_primes}
    )
    imports = "\n".join(
        "import Erdos848.GeneratedTailGlobalMixedSupportCoverage."
        f"MaskDataGroup{group_index:04d}"
        for group_index in used_groups
    )
    row_definitions = "\n\n".join(
        f"def {ident}Row{row_index:04d} : Erdos848.GlobalMixedEvenTerminal :=\n  {render_terminal(terminal)}"
        for row_index, terminal in enumerate(terminals)
    )
    row_list = "[" + ", ".join(
        f"{ident}Row{row_index:04d}" for row_index in range(len(terminals))
    ) + "]"
    common_prefix = longest_common_prefix(
        [terminal.masked_prefix for terminal in terminals]
    )
    common_rows = restricted_word_rows(common_prefix)
    common_prefix_value = "[" + ", ".join(map(str, common_prefix)) + "]"
    common_rows_value = render_bitvec_rows(common_rows)
    final_rows = [restricted_word_rows(terminal.masked_prefix) for terminal in terminals]
    final_row_definitions = "\n\n".join(
        f"def {ident}FinalRows{row_index:04d} : Erdos848.GlobalMixedEvenBitVecRows :=\n  {render_bitvec_rows(rows)}"
        for row_index, rows in enumerate(final_rows)
    )
    mask_simp = "\n".join(
        "      Erdos848.GeneratedTailGlobalMixedSupportCoverage."
        f"normalQrMaskWords{group_index:04d},\n"
        "      Erdos848.GeneratedTailGlobalMixedSupportCoverage."
        f"twistQrMaskWords{group_index:04d},"
        for group_index in used_groups
    )
    suffixes = [
        terminal.masked_prefix[len(common_prefix):] for terminal in terminals
    ]
    actual_rows = "[\n      " + ",\n      ".join(
        "(Erdos848.globalMixedBitVecContinueRows "
        f"{ident}NormalLookup {ident}TwistLookup "
        "[" + ", ".join(map(str, suffix)) + "] "
        f"{ident}CommonRows)"
        for suffix in suffixes
    ) + "\n    ]"
    expected_rows = "[\n      " + ",\n      ".join(
        f"{ident}FinalRows{row_index:04d}"
        for row_index in range(len(terminals))
    ) + "\n    ]"
    actual_counts = "[\n      " + ",\n      ".join(
        f"{ident}FinalRows{row_index:04d}.counts"
        for row_index in range(len(terminals))
    ) + "\n    ]"
    expected_counts = "[\n      " + ",\n      ".join(
        f"{ident}Row{row_index:04d}.counts.toBitVec"
        for row_index in range(len(terminals))
    ) + "\n    ]"
    common_theorem = f"""theorem {ident}_common_rows :
    Erdos848.globalMixedBitVecRestrictedRows
      {ident}NormalLookup {ident}TwistLookup {common_prefix_value} =
    {ident}CommonRows := by
  simp (config := {{ maxSteps := 1000000 }})
    [Erdos848.globalMixedBitVecRestrictedRows,
      Erdos848.globalMixedBitVecSupportWords,
      Erdos848.globalMixedBitVecIntersect,
      {ident}CommonRows, {ident}NormalLookup, {ident}TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalCosetWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistCosetWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords,
{mask_simp}      ]"""
    rows_theorem = f"""theorem {ident}_rows :
    {actual_rows} =
    {expected_rows} := by
  simp (config := {{ maxSteps := 1000000 }})
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      {ident}CommonRows,
      {', '.join(f'{ident}FinalRows{row_index:04d}' for row_index in range(len(terminals)))},
      {ident}NormalLookup, {ident}TwistLookup,
{mask_simp}      ]"""
    used_words = sorted({
        word for rows in final_rows for word_row in rows for word in word_row
    })
    word_count_simp = "\n".join(
        "      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage."
        f"certifiedWordCount{word_indices[word]:04d},"
        for word in used_words
    )
    count_theorems = f"""theorem {ident}_counts :
    {actual_counts} =
    {expected_counts} := by
  simp (config := {{ maxSteps := 1000000 }}) only
    [
      Erdos848.globalMixedBitVecCount,
      Erdos848.GlobalMixedEvenBitVecRows.counts,
      Erdos848.GlobalMixedEvenCounts.toBitVec,
      {', '.join(f'{ident}FinalRows{row_index:04d}' for row_index in range(len(terminals)))},
      {', '.join(f'{ident}Row{row_index:04d}' for row_index in range(len(terminals)))},
{word_count_simp}      ]
  simp"""
    if k >= 6:
        leaf_name = f"EvenK{k}Leaf{index:04d}"
        data_source = f"""import Erdos848.TailGlobalMixedEvenBitVecCheckerCore
{imports}

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

{row_definitions}

def {ident}CommonRows : Erdos848.GlobalMixedEvenBitVecRows :=
  {common_rows_value}

{final_row_definitions}

def {ident} : List Erdos848.GlobalMixedEvenTerminal :=
  {row_list}

{local_lookup("Normal", ident, used_groups)}

{local_lookup("Twist", ident, used_groups)}

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
"""
        write_if_changed(OUT / f"{leaf_name}Data.lean", data_source)

        common_source = f"""import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.{leaf_name}Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

{common_theorem}

#print axioms {ident}_common_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
"""
        write_if_changed(OUT / f"{leaf_name}CommonSound.lean", common_source)

        rows_source = f"""import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.{leaf_name}Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

{rows_theorem}

#print axioms {ident}_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
"""
        write_if_changed(OUT / f"{leaf_name}RowsSound.lean", rows_source)

        counts_source = f"""import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.{leaf_name}Data
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.WordCounts
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

{count_theorems}

#print axioms {ident}_counts

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
"""
        write_if_changed(OUT / f"{leaf_name}CountsSound.lean", counts_source)

        # Do not recombine the three large proof environments here.  The
        # semantic soundness leaf imports them directly and consumes all three
        # theorems.  Re-materializing `line_passes` loaded the same literal
        # BitVec data three times into one elaborator process and was the sole
        # K8 >6 GiB bottleneck; the theorem itself was unused downstream.
        return name

    source = f"""import Erdos848.TailGlobalMixedEvenBitVecCheckerCore
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.WordCounts
import Mathlib.Tactic
{imports}

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

{row_definitions}

def {ident}CommonRows : Erdos848.GlobalMixedEvenBitVecRows :=
  {common_rows_value}

{final_row_definitions}

def {ident} : List Erdos848.GlobalMixedEvenTerminal :=
  {row_list}

{local_lookup("Normal", ident, used_groups)}

{local_lookup("Twist", ident, used_groups)}

{common_theorem}

{rows_theorem}

{count_theorems}

theorem {ident}_line_passes :
    {ident}.all (Erdos848.globalMixedEvenTerminalCountsPasses {k}) = true := by
  rfl

#print axioms {ident}_counts
#print axioms {ident}_common_rows
#print axioms {ident}_rows
#print axioms {ident}_line_passes

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
"""
    write_if_changed(OUT / f"{name}.lean", source)
    return name


def write_terminals(
    all_terminals: dict[int, list[Terminal]], word_indices: dict[int, int]
) -> None:
    certificate_imports: list[str] = []
    for k, terminals in all_terminals.items():
        names = [
            write_terminal_group(k, index, group, word_indices)
            for index, group in enumerate(chunks(terminals, terminal_group_size(k)))
        ]
        data_imports = [
            (
                f"import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage."
                f"EvenK{k}Leaf{index:04d}Data"
                if k >= 6 else
                f"import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.{name}"
            )
            for index, name in enumerate(names)
        ]
        lines = [
            *data_imports,
            "",
            "namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 0",
            "",
            f"def evenK{k}Terminals : List Erdos848.GlobalMixedEvenTerminal :=",
            " ++\n".join(
                f"  evenK{k}TerminalGroup{index:04d}" for index in range(len(names))
            ),
            "",
            f"theorem evenK{k}Terminals_count : evenK{k}Terminals.length = {len(terminals)} := by",
            "  rfl",
            "",
            f"#print axioms evenK{k}Terminals_count",
            "",
            "end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage",
            "",
        ]
        write_if_changed(OUT / f"EvenK{k}Certificate.lean", "\n".join(lines))
        certificate_imports.append(
            "import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage."
            f"EvenK{k}Certificate"
        )
    certificate_imports.extend(
        [
            "",
            "namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage",
            "",
            "#print axioms evenK8Terminals_count",
            "",
            "end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage",
            "",
        ]
    )
    write_if_changed(OUT / "Certificate.lean", "\n".join(certificate_imports))


def write_word_counts(all_terminals: dict[int, list[Terminal]]) -> dict[int, int]:
    values: set[int] = set()
    for terminals in all_terminals.values():
        for terminal in terminals:
            for words in restricted_word_rows(terminal.masked_prefix):
                values.update(words)
    ordered = sorted(values)
    lines = [
        "import Erdos848.TailGlobalMixedEvenBitVecCheckerCore",
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
    ]
    for index, word in enumerate(ordered):
        lines.extend(
            [
                f"theorem certifiedWordCount{index:04d} :",
                f"    (({word} : Erdos848.GlobalMixedWord).cpop) =",
                f"      ({word.bit_count()} : Erdos848.GlobalMixedWord) := by",
                "  decide",
                "",
            ]
        )
    lines.extend(
        [
            f"#print axioms certifiedWordCount{len(ordered) - 1:04d}",
            "",
            "end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage",
            "",
        ]
    )
    write_if_changed(OUT / "WordCounts.lean", "\n".join(lines))
    return {word: index for index, word in enumerate(ordered)}


def clean_generated() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    resolved = OUT.resolve()
    if resolved.parent != ERDOS.resolve():
        raise RuntimeError(f"unsafe output directory: {resolved}")
    for path in OUT.glob("*.lean"):
        path.unlink()


def clean_obsolete_large_aggregates() -> None:
    """Remove pre-split K6+ sources that are no longer in the proof graph."""
    resolved = OUT.resolve()
    if resolved.parent != ERDOS.resolve():
        raise RuntimeError(f"unsafe output directory: {resolved}")
    olean_root = (
        LEAN / ".lake" / "build" / "lib" / "lean" / "Erdos848"
        / "GeneratedTailGlobalMixedEvenSupportCoverage"
    )
    log_root = LEAN / ".lake" / "even-support-logs"
    for k in range(6, 9):
        for root, extension in (
            (OUT, ".lean"), (olean_root, ".olean"), (log_root, ".log")
        ):
            if not root.exists():
                continue
            for path in root.glob(f"EvenK{k}TerminalGroup*{extension}"):
                path.unlink()


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    clean_obsolete_large_aggregates()
    write_data()
    write_byte_data()
    write_byte_mask_data()
    all_terminals = {
        k: terminal_trie(k, list(base.PREFIXES[k])) for k in range(2, 9)
    }
    counts = {k: len(rows) for k, rows in all_terminals.items()}
    if counts != EXPECTED_TERMINALS:
        raise RuntimeError(f"terminal count drift: {counts}")
    word_indices = write_word_counts(all_terminals)
    write_terminals(all_terminals, word_indices)
    print(
        f"generated {sum(counts.values())} terminal leaves; "
        + ", ".join(f"k{k}={count}" for k, count in counts.items())
    )


if __name__ == "__main__":
    main()
