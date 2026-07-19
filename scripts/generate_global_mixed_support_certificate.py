#!/usr/bin/env python3
"""Generate the fixed-cut global mixed QR/support certificate.

The ambient variable N is never enumerated.  The generated leaves cover:

* QR masks for the single quotient split Y = floor(N / 55);
* the finite support prefixes below 21,000,000 * 2^k, k <= 8;
* cumulative prime-count endpoints already certified by the existing
  PrimeIntervalProofTree blocks.

All generated Boolean claims are subsequently checked by Lean with
``--trust=0``; this script is only an untrusted producer.
"""

from __future__ import annotations

from itertools import islice
from pathlib import Path
import math
import re


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"
ERDOS = LEAN / "Erdos848"
OUT = ERDOS / "GeneratedTailGlobalMixedSupportCoverage"
PRIME_BLOCKS = ERDOS / "GeneratedTailPrimeIntervalCoverage"

SPLIT = 55
NORMAL_BOUND = SPLIT * SPLIT
TWIST_BOUND = NORMAL_BOUND // 5
THRESHOLD_SCALE = 21_000_000
PREFIX_GROUP_SIZE = 512
MASK_GROUP_SIZE = 16


def primes_below(limit: int) -> list[int]:
    sieve = bytearray(b"\x01") * limit
    if limit:
        sieve[0] = 0
    if limit > 1:
        sieve[1] = 0
    for p in range(2, math.isqrt(limit - 1) + 1):
        if sieve[p]:
            sieve[p * p : limit : p] = b"\x00" * (
                ((limit - 1 - p * p) // p) + 1
            )
    return [p for p in range(2, limit) if sieve[p]]


SUPPORT_PRIMES = [p for p in primes_below(27_810) if p not in (2, 5)]


def feasible_prefixes(k: int) -> list[tuple[int, ...]]:
    if k <= 1:
        return [()]
    bound = THRESHOLD_SCALE * (2**k)
    need = k - 1
    result: list[tuple[int, ...]] = []

    def visit(start: int, left: int, product: int, prefix: list[int]) -> None:
        if left == 0:
            if start < len(SUPPORT_PRIMES) and product * SUPPORT_PRIMES[start] <= bound:
                result.append(tuple(prefix))
            return
        index = start
        while index + left < len(SUPPORT_PRIMES):
            least = product
            for offset in range(left + 1):
                least *= SUPPORT_PRIMES[index + offset]
            if least > bound:
                break
            p = SUPPORT_PRIMES[index]
            prefix.append(p)
            visit(index + 1, left - 1, product * p, prefix)
            prefix.pop()
            index += 1

    visit(0, need, 1, [])
    return result


PREFIXES = [feasible_prefixes(k) for k in range(9)]
PREFIX_PRIME_LIMIT = max(
    (max(prefix) for rows in PREFIXES for prefix in rows if prefix), default=3
)
PREFIX_PRIMES = [p for p in SUPPORT_PRIMES if p <= PREFIX_PRIME_LIMIT]

# From p = 2851 onward the support-product endpoint is already large enough
# that the unsieved mod-five coset row closes the same rational budget.  Such
# primes need no QR data at all.
MASK_PRIME_LIMIT = 2843
MASK_PRIMES = [p for p in SUPPORT_PRIMES if p <= MASK_PRIME_LIMIT]


def chunks(values: list, size: int):
    iterator = iter(values)
    while chunk := list(islice(iterator, size)):
        yield chunk


def word_list(bound: int, predicate) -> list[int]:
    words: list[int] = []
    for word_start in range(0, bound, 64):
        word = 0
        for bit in range(min(64, bound - word_start)):
            m = word_start + bit + 1
            if predicate(m):
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
            current = "  " + ", " + item
        else:
            current += token
    current += "]"
    lines.append(indent + current)
    return "\n".join(lines)


def lean_nested_list(rows: list[tuple[int, ...]]) -> str:
    if not rows:
        return "[]"
    body = []
    for row in rows:
        body.append("[" + ", ".join(map(str, row)) + "]")
    return "[" + ",\n    ".join(body) + "]"


def extension_prime(prefix: tuple[int, ...]) -> int:
    lower = prefix[-1] if prefix else 0
    return next(p for p in SUPPORT_PRIMES if p > lower)


def lean_support_rows(rows: list[tuple[int, ...]]) -> str:
    body = []
    for row in rows:
        support = "[" + ", ".join(map(str, row)) + "]"
        body.append(f"({support}, {extension_prime(row)})")
    return "[" + ",\n    ".join(body) + "]"


def parse_prime_blocks() -> list[tuple[int, int, int]]:
    result: list[tuple[int, int, int]] = []
    cumulative = 0
    pattern = re.compile(r"PrimeIntervalProofTree\s+(\d+)\s+(\d+)\s+(\d+)", re.S)
    for source in sorted(PRIME_BLOCKS.glob("Block*.lean")):
        match = pattern.search(source.read_text(encoding="utf-8-sig")[:800])
        if match is None:
            raise RuntimeError(f"cannot parse {source}")
        start, length, count = map(int, match.groups())
        cumulative += count
        result.append((start, start + length - 1, cumulative))
    if len(result) != 100 or cumulative != 18_311:
        raise RuntimeError((len(result), cumulative))
    return result


BLOCKS = parse_prime_blocks()
RELEVANT_BLOCKS = [block for block in BLOCKS if block[1] >= 5_000_000 // SPLIT]


def write_data() -> None:
    normal_cosets = {
        False: word_list(NORMAL_BOUND, lambda m: m % 5 in (2, 3)),
        True: word_list(NORMAL_BOUND, lambda m: m % 5 in (1, 4)),
    }
    twist_cosets = {
        False: word_list(TWIST_BOUND, lambda m: m % 5 in (2, 3)),
        True: word_list(TWIST_BOUND, lambda m: m % 5 in (1, 4)),
    }
    lines = [
        "import Mathlib.Data.List.Basic",
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        f"def mixedSupportPrimes : List ℕ :=\n{lean_list(PREFIX_PRIMES)}",
        "",
        f"def mixedMaskPrimes : List ℕ :=\n{lean_list(MASK_PRIMES)}",
        "",
        "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
    ]
    (OUT / "Data.lean").write_text("\n".join(lines), encoding="utf-8")

    common_lines = [
        "import Mathlib.Data.List.Basic",
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "",
        "def normalCosetWords : Bool → List ℕ",
        f"  | false =>\n{lean_list(normal_cosets[False], '    ')}",
        f"  | true =>\n{lean_list(normal_cosets[True], '    ')}",
        "",
        "def twistCosetWords : Bool → List ℕ",
        f"  | false =>\n{lean_list(twist_cosets[False], '    ')}",
        f"  | true =>\n{lean_list(twist_cosets[True], '    ')}",
        "",
    ]
    block_rows = [f"({start}, {end}, {count})" for start, end, count in RELEVANT_BLOCKS]
    common_lines.extend(
        [
            "",
            "def mixedPrimeBlocks : List (ℕ × ℕ × ℕ) :=",
            lean_list(block_rows),
            "",
            "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
            "",
        ]
    )
    (OUT / "CommonData.lean").write_text("\n".join(common_lines), encoding="utf-8")


def write_mask_data() -> None:
    group_names: list[str] = []
    group_last_primes: list[int] = []
    for index, group in enumerate(chunks(MASK_PRIMES, MASK_GROUP_SIZE)):
        name = f"MaskDataGroup{index:04d}"
        group_names.append(name)
        group_last_primes.append(group[-1])
        lines = [
            "import Mathlib.Data.List.Basic",
            "",
            "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 0",
            "",
            f"def normalQrMaskWords{index:04d} : ℕ → List ℕ",
        ]
        for p in group:
            words = word_list(NORMAL_BOUND, lambda m, p=p: pow(m, p // 2, p) == 1)
            lines.append(f"  | {p} =>\n{lean_list(words, '    ')}")
        lines.extend([f"  | _ => []", "", f"def twistQrMaskWords{index:04d} : ℕ → List ℕ"])
        for p in group:
            words = word_list(TWIST_BOUND, lambda m, p=p: pow(5 * m, p // 2, p) == 1)
            lines.append(f"  | {p} =>\n{lean_list(words, '    ')}")
        lines.extend(["  | _ => []", "", "end Erdos848.GeneratedTailGlobalMixedSupportCoverage", ""])
        (OUT / f"{name}.lean").write_text("\n".join(lines), encoding="utf-8")

    lines = [
        "import Erdos848.GeneratedTailGlobalMixedSupportCoverage.Data",
        *(f"import Erdos848.GeneratedTailGlobalMixedSupportCoverage.{name}" for name in group_names),
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "",
        "def normalQrMaskWords (p : ℕ) : List ℕ :=",
    ]
    for index, last_prime in enumerate(group_last_primes):
        lines.append(f"  if p ≤ {last_prime} then normalQrMaskWords{index:04d} p else")
    lines.extend(["  []", "", "def twistQrMaskWords (p : ℕ) : List ℕ :="])
    for index, last_prime in enumerate(group_last_primes):
        lines.append(f"  if p ≤ {last_prime} then twistQrMaskWords{index:04d} p else")
    lines.extend(["  []", "", "end Erdos848.GeneratedTailGlobalMixedSupportCoverage", ""])
    (OUT / "MaskData.lean").write_text("\n".join(lines), encoding="utf-8")


def write_prime_prefix_coverage() -> None:
    imports = [
        f"import Erdos848.GeneratedTailPrimeIntervalCoverage.Block{i:04d}"
        for i in range(100)
    ]
    lines = imports + [
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
    ]
    cumulative = 0
    for i, (start, end, count) in enumerate(BLOCKS):
        length = end - 1  # prefix starts at 2, hence length = end - 2 + 1
        if i == 0:
            lines.append(
                f"def primePrefixTree{i:04d} : Erdos848.PrimeIntervalProofTree "
                f"2 {end - 1} {count} :=\n  "
                f"Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree{i:04d}"
            )
        else:
            lines.append(
                f"def primePrefixTree{i:04d} : Erdos848.PrimeIntervalProofTree "
                f"2 {end - 1} {count} :=\n  "
                f".node primePrefixTree{i-1:04d} "
                f"Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree{i:04d}"
            )
        lines.extend(
            [
                "",
                f"theorem primeCounting_{end} : Nat.primeCounting {end} = {count} := by",
                f"  exact primePrefixTree{i:04d}.primeCounting_eq (by decide)",
                "",
            ]
        )
        cumulative = count
    lines.extend(
        [
            f"#print axioms primeCounting_{BLOCKS[-1][1]}",
            "",
            "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
            "",
        ]
    )
    (OUT / "PrimePrefixCoverage.lean").write_text("\n".join(lines), encoding="utf-8")


def write_mask_groups() -> None:
    group_names: list[str] = []
    for index, group in enumerate(chunks(MASK_PRIMES, MASK_GROUP_SIZE)):
        name = f"MaskSemanticGroup{index:04d}"
        group_names.append(name)
        source = f"""import Erdos848.TailGlobalMixedMaskCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup{index:04d}

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskSemanticGroup{index:04d} : List ℕ :=
{lean_list(group)}

theorem maskSemanticGroup{index:04d}_passes :
    maskSemanticGroup{index:04d}.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords{index:04d} twistQrMaskWords{index:04d}) = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
"""
        (OUT / f"{name}.lean").write_text(source, encoding="utf-8")
    write_mask_certificate(group_names)


def write_mask_certificate(group_names: list[str]) -> None:
    bridge_names: list[str] = []
    for i, group_name in enumerate(group_names):
        bridge_name = f"MaskGlobalBridgeGroup{i:04d}"
        bridge_names.append(bridge_name)
        group = list(chunks(MASK_PRIMES, MASK_GROUP_SIZE))[i]
        cases = " | ".join("rfl" for _ in group)
        source = f"""import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.{group_name}

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticGroup{i:04d}_global_passes :
    maskSemanticGroup{i:04d}.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords twistQrMaskWords) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    maskSemanticGroup{i:04d}_passes) p hp
  have hnormal : normalQrMaskWords p = normalQrMaskWords{i:04d} p := by
    simp only [maskSemanticGroup{i:04d}, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with {cases} <;> rfl
  have htwist : twistQrMaskWords p = twistQrMaskWords{i:04d} p := by
    simp only [maskSemanticGroup{i:04d}, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with {cases} <;> rfl
  unfold Erdos848.globalMixedMaskPassesWith
    Erdos848.globalMixedNormalMaskPassesWith
    Erdos848.globalMixedTwistMaskPassesWith at hlocal ⊢
  rw [hnormal, htwist]
  exact hlocal

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
"""
        (OUT / f"{bridge_name}.lean").write_text(source, encoding="utf-8")

    lines = [
        *(f"import Erdos848.GeneratedTailGlobalMixedSupportCoverage.{name}" for name in bridge_names),
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        "def certifiedMaskPrimes : List ℕ :=",
        " ++\n".join(f"  maskSemanticGroup{i:04d}" for i in range(len(group_names))),
        "",
        "theorem certifiedMaskPrimes_eq : certifiedMaskPrimes = mixedMaskPrimes := by",
        "  rfl",
        "",
    ]
    lines.extend(
        [
            "theorem certifiedMaskPrimes_global_passes :",
            "    certifiedMaskPrimes.all",
            "      (Erdos848.globalMixedMaskPassesWith",
            "        normalQrMaskWords twistQrMaskWords) = true := by",
            "  simp only [certifiedMaskPrimes, List.all_append]",
        ]
    )
    lines.extend(f"  rw [maskSemanticGroup{i:04d}_global_passes]" for i in range(len(group_names)))
    lines.append("  rfl")
    lines.extend(
        [
            "",
            "#print axioms certifiedMaskPrimes_global_passes",
            "",
            "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
            "",
        ]
    )
    (OUT / "MaskSemanticCertificate.lean").write_text("\n".join(lines), encoding="utf-8")


def write_prefix_groups() -> None:
    for k, rows in enumerate(PREFIXES):
        names: list[str] = []
        for index, group in enumerate(chunks(rows, PREFIX_GROUP_SIZE)):
            name = f"K{k}PrefixGroup{index:04d}"
            names.append(name)
            used_primes = sorted({p for row in group for p in row if p <= MASK_PRIME_LIMIT})
            used_data_groups = sorted({MASK_PRIMES.index(p) // MASK_GROUP_SIZE for p in used_primes})
            data_imports = "\n".join(
                f"import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDataGroup{i:04d}"
                for i in used_data_groups
            )

            def local_lookup(kind: str) -> str:
                lines = [f"def k{k}PrefixGroup{index:04d}{kind}Lookup (p : ℕ) : List ℕ :="]
                if not used_data_groups:
                    lines.append("  []")
                else:
                    for group_index in used_data_groups:
                        last = MASK_PRIMES[min((group_index + 1) * MASK_GROUP_SIZE, len(MASK_PRIMES)) - 1]
                        lines.append(
                            f"  if p ≤ {last} then {kind[0].lower() + kind[1:]}QrMaskWords{group_index:04d} p else"
                        )
                    lines.append("  []")
                return "\n".join(lines)

            source = f"""import Erdos848.TailGlobalMixedSupportCheckerCore
{data_imports}

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k{k}PrefixGroup{index:04d} : List (List ℕ × ℕ) :=
  {lean_support_rows(group)}

{local_lookup("Normal")}

{local_lookup("Twist")}

def k{k}PrefixGroup{index:04d}Passes (row : List ℕ × ℕ) : Bool :=
  Erdos848.globalMixedCorePrefixPasses
    k{k}PrefixGroup{index:04d}NormalLookup
    k{k}PrefixGroup{index:04d}TwistLookup {k}
    (max 5_000_000 (row.1.prod * row.2)) row.1

theorem k{k}PrefixGroup{index:04d}_passes :
    k{k}PrefixGroup{index:04d}.all
      k{k}PrefixGroup{index:04d}Passes = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
"""
            (OUT / f"{name}.lean").write_text(source, encoding="utf-8")
        lines = [f"import Erdos848.GeneratedTailGlobalMixedSupportCoverage.{name}" for name in names]
        lines.extend(["", "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage", ""])
        if names:
            lines.append(f"#print axioms k{k}PrefixGroup{len(names)-1:04d}_passes")
        lines.extend(["", "end Erdos848.GeneratedTailGlobalMixedSupportCoverage", ""])
        (OUT / f"K{k}Certificate.lean").write_text("\n".join(lines), encoding="utf-8")
    imports = [f"import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K{k}Certificate" for k in range(9)]
    imports.extend(
        [
            "",
            "namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage",
            "",
            "#print axioms k8PrefixGroup0000_passes",
            "",
            "end Erdos848.GeneratedTailGlobalMixedSupportCoverage",
            "",
        ]
    )
    (OUT / "Certificate.lean").write_text("\n".join(imports), encoding="utf-8")


def clean_generated() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    resolved = OUT.resolve()
    if resolved.parent != ERDOS.resolve():
        raise RuntimeError(f"unsafe output directory: {resolved}")
    for pattern in ("MaskDataGroup*.lean", "MaskSemanticGroup*.lean", "MaskGlobalBridgeGroup*.lean", "K*PrefixGroup*.lean", "K*Certificate.lean"):
        for path in OUT.glob(pattern):
            path.unlink()


def main() -> None:
    clean_generated()
    write_data()
    write_mask_data()
    write_prime_prefix_coverage()
    write_mask_groups()
    write_prefix_groups()
    print(
        f"generated {sum(map(len, PREFIXES))} prefixes, "
        f"{len(PREFIX_PRIMES)} prefix primes, {len(MASK_PRIMES)} mask primes, "
        f"{len(RELEVANT_BLOCKS)} prime blocks"
    )


if __name__ == "__main__":
    main()
