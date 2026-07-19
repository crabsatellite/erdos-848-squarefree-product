#!/usr/bin/env python3
"""Generate kernel-checkable completeness certificates for even terminals.

The terminal trie is a certificate producer only.  Lean checks, for every
already-certified feasible support prefix, that the selected terminal covers
the prefix, has the correct retained mask, starts no later than the support
endpoint, and passes all eight E2/E3 rows.
"""

from __future__ import annotations

import importlib.util
import math
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / "lean4"
ERDOS = LEAN / "Erdos848"
OUT = ERDOS / "GeneratedTailGlobalMixedEvenTerminalCoverage"
EVEN_GENERATOR = ROOT / "scripts" / "generate_global_mixed_even_support_certificate.py"
COVERAGE_CHUNK_GROUPS = 4


spec = importlib.util.spec_from_file_location("even_support", EVEN_GENERATOR)
assert spec is not None and spec.loader is not None
even = importlib.util.module_from_spec(spec)
sys.modules["even_support"] = even
spec.loader.exec_module(even)


MachineFrame = tuple[int, int, int, tuple[int, ...]]
MachineState = tuple[MachineFrame, ...]


def machine_primes() -> tuple[int, ...]:
    prefix_primes = list(even.base.PREFIX_PRIMES)
    sentinel = next(
        p for p in even.base.SUPPORT_PRIMES if p > prefix_primes[-1]
    )
    return tuple(prefix_primes + [sentinel])


MACHINE_PRIMES = machine_primes()


def machine_step(
    bound: int, state: MachineState
) -> tuple[str, tuple[int, ...] | None, MachineState]:
    if not state:
        return "done", None, ()
    need, product, index, prefix_rev = state[0]
    stack = state[1:]
    if index >= len(MACHINE_PRIMES):
        return "skip", None, stack
    p = MACHINE_PRIMES[index]
    if need == 0:
        if product * p <= bound:
            return "emit", tuple(reversed(prefix_rev)), stack
        return "skip", None, stack
    least = product * math.prod(MACHINE_PRIMES[index:index + need + 1])
    if bound < least:
        return "skip", None, stack
    include = (need - 1, product * p, index + 1, (p,) + prefix_rev)
    skip = (need, product, index + 1, prefix_rev)
    return "skip", None, (include, skip) + stack


def machine_checkpoints(
    k: int, rows: list[tuple[int, ...]], group_count: int
) -> list[tuple[MachineState, MachineState, int]]:
    bound = even.base.THRESHOLD_SCALE * (2**k)
    state: MachineState = ((k - 1, 1, 0, ()),)
    checkpoints: list[tuple[MachineState, MachineState, int]] = []
    chunk_count = math.ceil(group_count / COVERAGE_CHUNK_GROUPS)
    emitted_total = 0
    for chunk_index in range(chunk_count):
        first_group = chunk_index * COVERAGE_CHUNK_GROUPS
        stop_group = min(first_group + COVERAGE_CHUNK_GROUPS, group_count)
        first_row = first_group * even.base.PREFIX_GROUP_SIZE
        stop_row = min(stop_group * even.base.PREFIX_GROUP_SIZE, len(rows))
        target = stop_row - first_row
        start_state = state
        emitted: list[tuple[int, ...]] = []
        steps = 0
        while len(emitted) < target:
            kind, row, state = machine_step(bound, state)
            steps += 1
            if kind == "done":
                raise RuntimeError(
                    f"machine ended early k={k} chunk={chunk_index}"
                )
            if kind == "emit":
                assert row is not None
                emitted.append(row)
        if chunk_index + 1 == chunk_count:
            while state:
                kind, row, state = machine_step(bound, state)
                steps += 1
                if kind == "emit":
                    assert row is not None
                    emitted.append(row)
            if len(emitted) != target:
                raise RuntimeError(
                    f"machine emitted extra rows k={k}: {len(emitted)} != {target}"
                )
        expected = rows[first_row:stop_row]
        if emitted != expected:
            raise RuntimeError(
                f"machine row drift k={k} chunk={chunk_index}"
            )
        emitted_total += len(emitted)
        checkpoints.append((start_state, state, steps))
    if emitted_total != len(rows) or state:
        raise RuntimeError(f"machine did not close k={k}")
    return checkpoints


def lean_nat_list(values: tuple[int, ...]) -> str:
    return "[" + ", ".join(map(str, values)) + "]"


def lean_machine_state(state: MachineState) -> str:
    if not state:
        return "[]"
    frames = []
    for need, product, index, prefix_rev in state:
        frames.append(
            "⟨" + str(need) + ", " + str(product)
            + ", Erdos848.globalMixedKernelSupportPrimes.drop " + str(index)
            + ", " + lean_nat_list(prefix_rev) + "⟩"
        )
    return "[" + ",\n  ".join(frames) + "]"


def chunks(values: list, size: int):
    for start in range(0, len(values), size):
        yield values[start:start + size]


def write_if_changed(path: Path, content: str) -> None:
    if path.exists() and path.read_text(encoding="utf-8") == content:
        return
    path.write_text(content, encoding="utf-8")


def terminal_ref(k: int, index: int) -> str:
    group_size = even.terminal_group_size(k)
    group = index // group_size
    row = index % group_size
    return (
        "Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage."
        f"evenK{k}TerminalGroup{group:04d}Row{row:04d}"
    )


def selector_pattern(prefix: tuple[int, ...]) -> str:
    if not prefix:
        return "_"
    return " :: ".join(map(str, prefix)) + " :: _"


def validate_selection(k: int, terminals: list, rows: list[tuple[int, ...]]) -> None:
    for row in rows:
        selected = [
            terminal for terminal in terminals
            if row[:len(terminal.prefix)] == terminal.prefix
        ]
        if len(selected) != 1:
            raise RuntimeError(
                f"selector ambiguity k={k} row={row}: {len(selected)} terminals"
            )
        terminal = selected[0]
        masked = tuple(p for p in terminal.prefix if p <= even.base.MASK_PRIME_LIMIT)
        if terminal.masked_prefix != masked:
            raise RuntimeError(f"masked-prefix drift k={k} row={row}")
        if terminal.endpoint > even.support_endpoint(row):
            raise RuntimeError(f"endpoint drift k={k} row={row}")
        if not even.terminal_passes(k, terminal.masked_prefix, terminal.endpoint):
            raise RuntimeError(f"terminal no longer passes k={k} row={row}")


def write_selector(k: int, terminals: list) -> None:
    prefixes = [terminal.prefix for terminal in terminals]
    for i, left in enumerate(prefixes):
        for j, right in enumerate(prefixes):
            if i != j and right[:len(left)] == left:
                raise RuntimeError(
                    f"terminal prefixes are not prefix-free: k={k}, {left}, {right}"
                )
    lines = [
        f"import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK{k}Certificate",
        "import Erdos848.TailGlobalMixedEvenTerminalCoverageCore",
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage",
        "",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 1000000",
        "",
        f"inductive EvenK{k}Choice where",
    ]
    for index in range(len(terminals)):
        lines.append(f"  | row{index:04d}")
    lines.extend([
        "",
        f"def EvenK{k}Choice.terminal : EvenK{k}Choice -> Erdos848.GlobalMixedEvenTerminal",
    ])
    for index in range(len(terminals)):
        lines.append(f"  | .row{index:04d} => {terminal_ref(k, index)}")
    lines.extend([
        "",
        f"def evenK{k}Selector : List Nat -> Option EvenK{k}Choice",
    ])
    for index, terminal in enumerate(terminals):
        lines.append(
            f"  | {selector_pattern(terminal.prefix)} => some .row{index:04d}"
        )
    if not any(not terminal.prefix for terminal in terminals):
        lines.append("  | _ => none")
    lines.extend([
        "",
        f"end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage",
        "",
    ])
    write_if_changed(OUT / f"EvenK{k}Selector.lean", "\n".join(lines))


def write_coverage_group(k: int, index: int) -> None:
    old = f"k{k}PrefixGroup{index:04d}"
    ident = f"evenK{k}CoverageGroup{index:04d}"
    lines = [
        f"import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK{k}Selector",
        f"import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K{k}PrefixGroup{index:04d}",
        "",
        "namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage",
        "",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 1000000",
        "",
        f"def {ident}Prefixes : List (List Nat) :=",
        "  Erdos848.GeneratedTailGlobalMixedSupportCoverage."
        f"{old}.map Prod.fst",
        "",
        f"theorem {ident}_passes :",
        f"    {ident}Prefixes.all",
        "      (Erdos848.globalMixedEvenChoicePasses",
        f"        {k} evenK{k}Selector EvenK{k}Choice.terminal) = true := by",
        "  rfl",
        "",
        f"#print axioms {ident}_passes",
        "",
        "end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage",
        "",
    ]
    write_if_changed(
        OUT / f"EvenK{k}CoverageGroup{index:04d}.lean", "\n".join(lines)
    )


def write_coverage_chunk(
    k: int,
    chunk_index: int,
    group_count: int,
    checkpoint: tuple[MachineState, MachineState, int],
) -> None:
    first_group = chunk_index * COVERAGE_CHUNK_GROUPS
    stop_group = min(first_group + COVERAGE_CHUNK_GROUPS, group_count)
    start_state, next_state, steps = checkpoint
    imports = "\n".join(
        "import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage."
        f"EvenK{k}CoverageGroup{index:04d}"
        for index in range(first_group, stop_group)
    )
    rewrites = "\n".join(
        f"  rw [evenK{k}CoverageGroup{index:04d}_passes]"
        for index in range(first_group, stop_group)
    )
    final_rfl = (
        "" if k >= 6 and stop_group - first_group == 1 else "\n  rfl"
    )
    prefix_expression = " ++\n".join(
        f"  evenK{k}CoverageGroup{index:04d}Prefixes"
        for index in range(first_group, stop_group)
    )
    source = f"""{imports}
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK{k}CoverageChunk{chunk_index:04d}Prefixes : List (List Nat) :=
{prefix_expression}

def evenK{k}CoverageChunk{chunk_index:04d}StartState :
    Erdos848.FeasiblePrefixMachineState :=
  {lean_machine_state(start_state)}

def evenK{k}CoverageChunk{chunk_index:04d}NextState :
    Erdos848.FeasiblePrefixMachineState :=
  {lean_machine_state(next_state)}

def evenK{k}CoverageChunk{chunk_index:04d}Steps : Nat := {steps}

theorem evenK{k}CoverageChunk{chunk_index:04d}_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold {k})
        evenK{k}CoverageChunk{chunk_index:04d}Steps
        evenK{k}CoverageChunk{chunk_index:04d}StartState =
      (evenK{k}CoverageChunk{chunk_index:04d}Prefixes,
        evenK{k}CoverageChunk{chunk_index:04d}NextState) := by
  rfl

theorem evenK{k}CoverageChunk{chunk_index:04d}_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold {k})
        evenK{k}CoverageChunk{chunk_index:04d}StartState =
      evenK{k}CoverageChunk{chunk_index:04d}Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold {k})
          evenK{k}CoverageChunk{chunk_index:04d}NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold {k})
    evenK{k}CoverageChunk{chunk_index:04d}Steps
    evenK{k}CoverageChunk{chunk_index:04d}StartState
  rw [evenK{k}CoverageChunk{chunk_index:04d}_checkpoint] at h
  exact h

theorem evenK{k}CoverageChunk{chunk_index:04d}_passes :
    evenK{k}CoverageChunk{chunk_index:04d}Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses {k} evenK{k}Selector
        EvenK{k}Choice.terminal) = true := by
  simp only [evenK{k}CoverageChunk{chunk_index:04d}Prefixes, List.all_append]
{rewrites}{final_rfl}

#print axioms evenK{k}CoverageChunk{chunk_index:04d}_checkpoint
#print axioms evenK{k}CoverageChunk{chunk_index:04d}_state_output
#print axioms evenK{k}CoverageChunk{chunk_index:04d}_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
"""
    write_if_changed(
        OUT / f"EvenK{k}CoverageChunk{chunk_index:04d}.lean", source
    )


def write_coverage_tail(
    k: int, chunk_index: int, chunk_count: int
) -> None:
    imports = [
        "import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage."
        f"EvenK{k}CoverageChunk{chunk_index:04d}"
    ]
    is_last = chunk_index + 1 == chunk_count
    if not is_last:
        imports.append(
            "import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage."
            f"EvenK{k}CoverageTail{chunk_index + 1:04d}"
        )
    imports_text = "\n".join(imports)
    if is_last:
        prefix_expression = f"evenK{k}CoverageChunk{chunk_index:04d}Prefixes"
        eq_proof = f"""  have h :=
    evenK{k}CoverageChunk{chunk_index:04d}_state_output
  simpa [evenK{k}CoverageChunk{chunk_index:04d}NextState,
    Erdos848.feasiblePrefixMachineStateOutput] using h.symm"""
        pass_proof = f"  exact evenK{k}CoverageChunk{chunk_index:04d}_passes"
    else:
        prefix_expression = (
            f"evenK{k}CoverageChunk{chunk_index:04d}Prefixes ++\n"
            f"    evenK{k}CoverageTail{chunk_index + 1:04d}Prefixes"
        )
        eq_proof = f"""  unfold evenK{k}CoverageTail{chunk_index:04d}Prefixes
  rw [evenK{k}CoverageTail{chunk_index + 1:04d}_eq]
  have hstate :
      evenK{k}CoverageChunk{chunk_index:04d}NextState =
        evenK{k}CoverageChunk{chunk_index + 1:04d}StartState := by
    rfl
  rw [← hstate]
  exact evenK{k}CoverageChunk{chunk_index:04d}_state_output.symm"""
        pass_proof = f"""  simp only [evenK{k}CoverageTail{chunk_index:04d}Prefixes,
    List.all_append]
  rw [evenK{k}CoverageChunk{chunk_index:04d}_passes,
    evenK{k}CoverageTail{chunk_index + 1:04d}_passes]
  rfl"""
    source = f"""{imports_text}

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK{k}CoverageTail{chunk_index:04d}Prefixes : List (List Nat) :=
  {prefix_expression}

theorem evenK{k}CoverageTail{chunk_index:04d}_eq :
    evenK{k}CoverageTail{chunk_index:04d}Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold {k})
        evenK{k}CoverageChunk{chunk_index:04d}StartState := by
{eq_proof}

theorem evenK{k}CoverageTail{chunk_index:04d}_passes :
    evenK{k}CoverageTail{chunk_index:04d}Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses {k} evenK{k}Selector
        EvenK{k}Choice.terminal) = true := by
{pass_proof}

#print axioms evenK{k}CoverageTail{chunk_index:04d}_eq
#print axioms evenK{k}CoverageTail{chunk_index:04d}_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
"""
    write_if_changed(
        OUT / f"EvenK{k}CoverageTail{chunk_index:04d}.lean", source
    )


def write_k_certificate(k: int) -> None:
    imports = (
        "import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage."
        f"EvenK{k}CoverageTail0000"
    )
    source = f"""{imports}
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK{k}CertifiedPrefixes : List (List Nat) :=
  evenK{k}CoverageTail0000Prefixes

theorem evenK{k}CertifiedPrefixes_eq :
    evenK{k}CertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel {k} := by
  calc
    evenK{k}CertifiedPrefixes =
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold {k})
          evenK{k}CoverageChunk0000StartState :=
      evenK{k}CoverageTail0000_eq
    _ = Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold {k})
          (Erdos848.globalMixedFeasiblePrefixMachineInitialState {k}) := by
      rfl
    _ = Erdos848.globalMixedFeasiblePrefixesKernel {k} :=
      Erdos848.globalMixedFeasiblePrefixMachineInitialState_output (by norm_num)

theorem evenK{k}StandardPrefixes_select :
    evenK{k}CertifiedPrefixes.all
      (Erdos848.globalMixedEvenChoicePasses {k} evenK{k}Selector
        EvenK{k}Choice.terminal) = true := by
  exact evenK{k}CoverageTail0000_passes

theorem evenK{k}FeasiblePrefixes_select :
    (Erdos848.globalMixedFeasiblePrefixesKernel {k}).all
      (Erdos848.globalMixedEvenChoicePasses {k} evenK{k}Selector
        EvenK{k}Choice.terminal) = true := by
  rw [← evenK{k}CertifiedPrefixes_eq]
  exact evenK{k}StandardPrefixes_select

#print axioms evenK{k}FeasiblePrefixes_select

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
"""
    write_if_changed(OUT / f"EvenK{k}CoverageCertificate.lean", source)


def write_root() -> None:
    imports = "\n".join(
        "import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage."
        f"EvenK{k}CoverageCertificate" for k in range(2, 9)
    )
    source = f"""{imports}

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

#print axioms evenK8FeasiblePrefixes_select

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
"""
    write_if_changed(OUT / "Certificate.lean", source)


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    total_groups = 0
    for k in range(2, 9):
        rows = list(even.base.PREFIXES[k])
        terminals = even.terminal_trie(k, rows)
        validate_selection(k, terminals, rows)
        write_selector(k, terminals)
        group_count = math.ceil(len(rows) / even.base.PREFIX_GROUP_SIZE)
        for index in range(group_count):
            write_coverage_group(k, index)
        chunk_count = math.ceil(group_count / COVERAGE_CHUNK_GROUPS)
        checkpoints = machine_checkpoints(k, rows, group_count)
        if len(checkpoints) != chunk_count:
            raise RuntimeError(f"checkpoint count drift k={k}")
        for index, checkpoint in enumerate(checkpoints):
            write_coverage_chunk(k, index, group_count, checkpoint)
        for index in reversed(range(chunk_count)):
            write_coverage_tail(k, index, chunk_count)
        write_k_certificate(k)
        total_groups += group_count
    write_root()
    print(f"generated {total_groups} coverage groups for 119159 feasible prefixes")


if __name__ == "__main__":
    main()
