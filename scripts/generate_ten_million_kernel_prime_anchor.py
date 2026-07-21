#!/usr/bin/env python3
"""Generate the exact prime-count anchor used by the ten-million tail.

This producer is deliberately untrusted.  It emits:

* an incremental Pratt table containing exactly the primes in
  ``(204067, 322580]`` on top of the already checked tail-prime table; and
* a balanced classification tree for every integer in
  ``[204082, 322580]``.

Lean checks every Pratt node, every proper-factor witness, and the final
``Nat.primeCounting 322580 = 27815`` theorem with ``--trust=0``.
"""

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path
import shutil


BASE_PRATT_NAMESPACE = "GeneratedTailPrimePrattCoverage"
BASE_INTERVAL_NAMESPACE = "GeneratedTailPrimeIntervalCoverage"
PRATT_NAMESPACE = "GeneratedTenMillionKernelPrimePrattCoverage"
INTERVAL_NAMESPACE = "GeneratedTenMillionKernelPrimeIntervalCoverage"

BASE_PRIME_BOUND = 204_067
BASE_TABLE_SIZE = 18_311
BASE_INTERVAL_STOP = 204_082
BOUND = 322_580
EXPECTED_LAST_PRIME = 322_573
EXPECTED_TAIL_PRIMES = 9_504
EXPECTED_PRIMES = 27_815


@dataclass(frozen=True)
class TreePiece:
    name: str
    start: int
    size: int
    prime_count: int


def write_if_changed(path: Path, content: str) -> bool:
    if path.is_file() and path.read_text(encoding="utf-8") == content:
        return False
    path.write_text(content, encoding="utf-8", newline="\n")
    return True


def replace_generated_dir(public_root: Path, name: str) -> Path:
    parent = (public_root / "lean4" / "Erdos848").resolve()
    target = parent / name
    if target.exists():
        resolved = target.resolve()
        if resolved.parent != parent or resolved.name != name:
            raise RuntimeError(f"refusing to replace unexpected path {resolved}")
        shutil.rmtree(resolved)
    target.mkdir(parents=True)
    return target


def sieve(bound: int) -> tuple[list[bool], list[int]]:
    is_prime = [True] * (bound + 1)
    is_prime[0] = is_prime[1] = False
    smallest_factor = [0] * (bound + 1)
    for p in range(2, bound + 1):
        if not is_prime[p]:
            continue
        for multiple in range(p * 2, bound + 1, p):
            if is_prime[multiple]:
                is_prime[multiple] = False
            if smallest_factor[multiple] == 0:
                smallest_factor[multiple] = p
    return is_prime, smallest_factor


def factorization(n: int, smallest_factor: list[int]) -> dict[int, int]:
    result: dict[int, int] = {}
    while n > 1:
        q = smallest_factor[n] or n
        result[q] = result.get(q, 0) + 1
        n //= q
    return result


def primitive_root(p: int, factors: dict[int, int]) -> int:
    witness = 2
    while not all(pow(witness, (p - 1) // q, p) != 1 for q in factors):
        witness += 1
    return witness


def node_literal(node: tuple[int, int, list[int]]) -> str:
    value, witness, indices = node
    return (
        f"{{ value := {value}, witness := {witness}, "
        f"factorIndices := [{', '.join(map(str, indices))}] }}"
    )


def node_tree(nodes: list[tuple[int, int, list[int]]]) -> str:
    if not nodes:
        return ".empty"
    if len(nodes) == 1:
        return f"(.leaf {node_literal(nodes[0])})"
    middle = len(nodes) // 2
    return (
        f"(.node {len(nodes)} {node_tree(nodes[:middle])} "
        f"{node_tree(nodes[middle:])})"
    )


def named_node_tree(chunks: list[tuple[str, int]]) -> str:
    if not chunks:
        return ".empty"
    if len(chunks) == 1:
        return chunks[0][0]
    middle = len(chunks) // 2
    total = sum(size for _, size in chunks)
    return (
        f"(.node {total} {named_node_tree(chunks[:middle])} "
        f"{named_node_tree(chunks[middle:])})"
    )


def named_interval_tree(pieces: list[TreePiece]) -> str:
    if not pieces:
        raise ValueError("empty interval tree")
    if len(pieces) == 1:
        return pieces[0].name
    middle = len(pieces) // 2
    left = pieces[:middle]
    right = pieces[middle:]
    if left[-1].start + left[-1].size != right[0].start:
        raise RuntimeError("nonadjacent interval pieces")
    return (
        f"(.node {named_interval_tree(left)} "
        f"{named_interval_tree(right)})"
    )


def generate_pratt(
    target: Path,
    is_prime: list[bool],
    smallest_factor: list[int],
    data_chunk_size: int,
    block_size: int,
    block_cost: int,
) -> dict[int, int]:
    base_primes = [p for p in range(2, BASE_PRIME_BOUND + 1) if is_prime[p]]
    if len(base_primes) != BASE_TABLE_SIZE or base_primes[-1] != BASE_PRIME_BOUND:
        raise RuntimeError("base tail-prime table constants no longer match")

    targets = [p for p in range(BASE_PRIME_BOUND + 1, BOUND + 1) if is_prime[p]]
    if (
        len(targets) != EXPECTED_TAIL_PRIMES
        or targets[-1] != EXPECTED_LAST_PRIME
    ):
        raise RuntimeError("ten-million Pratt target constants no longer match")

    index_of = {p: index for index, p in enumerate([*base_primes, *targets])}
    nodes: list[tuple[int, int, list[int]]] = []
    for p in targets:
        factors = factorization(p - 1, smallest_factor)
        factor_indices = [
            index_of[q]
            for q, exponent in sorted(factors.items())
            for _ in range(exponent)
        ]
        index = index_of[p]
        if not all(factor_index < index for factor_index in factor_indices):
            raise RuntimeError(f"non-topological Pratt node {p}")
        nodes.append((p, primitive_root(p, factors), factor_indices))

    data_modules: list[str] = []
    data_names: list[tuple[str, int]] = []
    for number, start in enumerate(range(0, len(nodes), data_chunk_size)):
        stop = min(start + data_chunk_size, len(nodes))
        suffix = f"DataChunk{number:04d}"
        name = f"nodeDataChunk{number:04d}"
        write_if_changed(
            target / f"{suffix}.lean",
            "\n".join([
                "import Erdos848.FinitePrefixChecker",
                "",
                f"namespace Erdos848.{PRATT_NAMESPACE}",
                "",
                "set_option maxRecDepth 1000000",
                "set_option maxHeartbeats 0",
                "",
                f"def {name} : Erdos848.PrattNodeTree :=",
                f"  {node_tree(nodes[start:stop])}",
                "",
                f"end Erdos848.{PRATT_NAMESPACE}",
                "",
            ]),
        )
        data_modules.append(f"Erdos848.{PRATT_NAMESPACE}.{suffix}")
        data_names.append((name, stop - start))

    write_if_changed(
        target / "Data.lean",
        "\n".join([
            *(f"import {module}" for module in data_modules),
            f"import Erdos848.{BASE_PRATT_NAMESPACE}.Data",
            "import Erdos848.PrattTableExtensionChecker",
            "",
            f"namespace Erdos848.{PRATT_NAMESPACE}",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 0",
            "",
            "def extraNodes : Erdos848.PrattNodeTree :=",
            f"  {named_node_tree(data_names)}",
            "",
            "def table : Erdos848.PrattTableData :=",
            f"  Erdos848.{BASE_PRATT_NAMESPACE}.table.extend extraNodes",
            "",
            f"end Erdos848.{PRATT_NAMESPACE}",
            "",
        ]),
    )

    block_modules: list[str] = []
    block_theorems: list[str] = []
    node_offset = 0
    block_index = 0
    while node_offset < len(nodes):
        block_start = node_offset
        cost = 0
        while node_offset < len(nodes) and node_offset - block_start < block_size:
            value, _witness, factor_indices = nodes[node_offset]
            node_cost = value.bit_length() * (1 + len(set(factor_indices)))
            if node_offset > block_start and cost + node_cost > block_cost:
                break
            cost += node_cost
            node_offset += 1
        start = BASE_TABLE_SIZE + block_start
        stop = BASE_TABLE_SIZE + node_offset
        suffix = f"Block{block_index:04d}"
        theorem = f"range_{block_index:04d}"
        module = f"Erdos848.{PRATT_NAMESPACE}.{suffix}"
        write_if_changed(
            target / f"{suffix}.lean",
            "\n".join([
                f"import Erdos848.{PRATT_NAMESPACE}.Data",
                "",
                f"namespace Erdos848.{PRATT_NAMESPACE}",
                "",
                "set_option maxRecDepth 1000000",
                "set_option maxHeartbeats 0",
                "",
                f"theorem {theorem} : table.FastRangeValid {start} {stop} := by decide",
                "",
                f"end Erdos848.{PRATT_NAMESPACE}",
                "",
            ]),
        )
        block_modules.append(module)
        block_theorems.append(theorem)
        block_index += 1

    total_size = BASE_TABLE_SIZE + len(nodes)
    assembly = [
        f"import Erdos848.{BASE_PRATT_NAMESPACE}.Certificate",
        *(f"import {module}" for module in block_modules),
        "",
        f"namespace Erdos848.{PRATT_NAMESPACE}",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        f"theorem range_new : table.FastRangeValid {BASE_TABLE_SIZE} {total_size} := by",
        f"  have combined_0 := {block_theorems[0]}",
    ]
    for index, theorem in enumerate(block_theorems[1:], start=1):
        assembly.append(
            f"  have combined_{index} := combined_{index - 1}.append {theorem}"
        )
    assembly.extend([
        f"  exact combined_{len(block_theorems) - 1}",
        "",
        "theorem table_valid : table.Valid :=",
        "  Erdos848.PrattTableData.valid_extend_fast",
        f"    Erdos848.{BASE_PRATT_NAMESPACE}.table_valid range_new",
        "",
        f"theorem target_prime : Nat.Prime {EXPECTED_LAST_PRIME} :=",
        "  table.primeAt table_valid "
        f"(index := {index_of[EXPECTED_LAST_PRIME]}) (by decide)",
        "",
        "#print axioms target_prime",
        "",
        f"end Erdos848.{PRATT_NAMESPACE}",
        "",
    ])
    write_if_changed(target / "Certificate.lean", "\n".join(assembly))
    print(
        f"generated ten-million Pratt extension nodes={len(nodes)} "
        f"chunks={len(data_modules)} blocks={len(block_modules)} "
        f"total={total_size}",
        flush=True,
    )
    return index_of


def prime_proof(prime: int, index: int) -> str:
    return "\n".join([
        "by",
        "      simpa only using",
        f"        Erdos848.{PRATT_NAMESPACE}.table.primeAt",
        f"          Erdos848.{PRATT_NAMESPACE}.table_valid",
        f"          (index := {index}) (by decide)",
    ])


def interval_tree_literal(
    start: int,
    stop: int,
    is_prime: list[bool],
    smallest_factor: list[int],
    prime_index: dict[int, int],
) -> str:
    if not start < stop:
        raise ValueError("empty classification interval")
    if stop == start + 1:
        n = start
        if is_prime[n]:
            return f"(.prime {n} ({prime_proof(n, prime_index[n])}))"
        witness = smallest_factor[n]
        if not (2 <= witness < n and n % witness == 0):
            raise RuntimeError(f"invalid proper factor {witness} for {n}")
        return (
            f"(.composite {n} {witness} "
            "(by decide) (by decide) (by decide))"
        )
    middle = (start + stop) // 2
    return (
        "(.node "
        + interval_tree_literal(
            start, middle, is_prime, smallest_factor, prime_index
        )
        + " "
        + interval_tree_literal(
            middle, stop, is_prime, smallest_factor, prime_index
        )
        + ")"
    )


def generate_interval(
    target: Path,
    is_prime: list[bool],
    smallest_factor: list[int],
    prime_index: dict[int, int],
    chunk_size: int,
) -> None:
    pieces: list[TreePiece] = []
    for block_index, start in enumerate(
        range(BASE_INTERVAL_STOP, BOUND + 1, chunk_size)
    ):
        stop = min(BOUND + 1, start + chunk_size)
        count = sum(is_prime[start:stop])
        suffix = f"Block{block_index:04d}"
        name = f"blockTree{block_index:04d}"
        write_if_changed(
            target / f"{suffix}.lean",
            "\n".join([
                "import Erdos848.TailPrimeIntervalTreeChecker",
                f"import Erdos848.{PRATT_NAMESPACE}.Certificate",
                "",
                f"namespace Erdos848.{INTERVAL_NAMESPACE}",
                "",
                "set_option maxRecDepth 1000000",
                "set_option maxHeartbeats 0",
                "",
                f"def {name} : Erdos848.PrimeIntervalProofTree",
                f"    {start} {stop - start} {count} :=",
                "  " + interval_tree_literal(
                    start, stop, is_prime, smallest_factor, prime_index
                ),
                "",
                f"end Erdos848.{INTERVAL_NAMESPACE}",
                "",
            ]),
        )
        pieces.append(TreePiece(name, start, stop - start, count))

    tail_count = sum(piece.prime_count for piece in pieces)
    if tail_count != EXPECTED_TAIL_PRIMES:
        raise RuntimeError(
            f"tail prime count {tail_count} != {EXPECTED_TAIL_PRIMES}"
        )
    imports = [
        f"import Erdos848.{INTERVAL_NAMESPACE}.Block{index:04d}"
        for index in range(len(pieces))
    ]
    write_if_changed(
        target / "Certificate.lean",
        "\n".join([
            f"import Erdos848.{BASE_INTERVAL_NAMESPACE}.Certificate",
            *imports,
            "",
            f"namespace Erdos848.{INTERVAL_NAMESPACE}",
            "",
            "set_option maxRecDepth 1000000",
            "set_option maxHeartbeats 0",
            "",
            "def tailTree : Erdos848.PrimeIntervalProofTree",
            f"    {BASE_INTERVAL_STOP} {BOUND + 1 - BASE_INTERVAL_STOP} "
            f"{tail_count} :=",
            f"  {named_interval_tree(pieces)}",
            "",
            "def fullTree : Erdos848.PrimeIntervalProofTree",
            f"    2 {BOUND - 1} {EXPECTED_PRIMES} :=",
            "  (.node Erdos848.GeneratedTailPrimeIntervalCoverage.fullTree tailTree)",
            "",
            f"theorem primeCounting_{BOUND} :",
            f"    Nat.primeCounting {BOUND} = {EXPECTED_PRIMES} := by",
            "  exact fullTree.primeCounting_eq (by decide)",
            "",
            f"#print axioms primeCounting_{BOUND}",
            "",
            f"end Erdos848.{INTERVAL_NAMESPACE}",
            "",
        ]),
    )
    print(
        f"generated ten-million prime interval blocks={len(pieces)} "
        f"entries={BOUND + 1 - BASE_INTERVAL_STOP} "
        f"tail_primes={tail_count} total_primes={EXPECTED_PRIMES}",
        flush=True,
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--public-root",
        type=Path,
        default=Path(__file__).resolve().parents[1],
    )
    parser.add_argument("--pratt-data-chunk-size", type=int, default=512)
    parser.add_argument("--pratt-block-size", type=int, default=512)
    parser.add_argument("--pratt-block-cost", type=int, default=35_000)
    parser.add_argument("--interval-chunk-size", type=int, default=2_048)
    args = parser.parse_args()
    if min(
        args.pratt_data_chunk_size,
        args.pratt_block_size,
        args.pratt_block_cost,
        args.interval_chunk_size,
    ) < 1:
        raise SystemExit("all chunk and block limits must be positive")

    public_root = args.public_root.resolve()
    pratt_target = replace_generated_dir(public_root, PRATT_NAMESPACE)
    interval_target = replace_generated_dir(public_root, INTERVAL_NAMESPACE)
    is_prime, smallest_factor = sieve(BOUND)
    prime_index = generate_pratt(
        pratt_target,
        is_prime,
        smallest_factor,
        args.pratt_data_chunk_size,
        args.pratt_block_size,
        args.pratt_block_cost,
    )
    generate_interval(
        interval_target,
        is_prime,
        smallest_factor,
        prime_index,
        args.interval_chunk_size,
    )


if __name__ == "__main__":
    main()
