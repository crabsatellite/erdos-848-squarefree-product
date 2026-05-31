from __future__ import annotations

from dataclasses import dataclass
from typing import Callable, Iterable, Optional


def squarefree_sieve(limit: int) -> bytearray:
    """Return a bytearray whose n-th entry is 1 iff n is squarefree."""
    if limit < 0:
        raise ValueError("limit must be nonnegative")
    sf = bytearray(b"\x01") * (limit + 1)
    if limit >= 0:
        sf[0] = 0
    p = 2
    while p * p <= limit:
        sq = p * p
        if sq <= limit:
            sf[sq : limit + 1 : sq] = b"\x00" * (((limit - sq) // sq) + 1)
        p += 1
    return sf


def is_squarefree_trial(n: int) -> bool:
    if n <= 0:
        return False
    p = 2
    while p * p <= n:
        sq = p * p
        if n % sq == 0:
            return False
        p += 1
    return True


def candidate_count(N: int, residue: int = 7, modulus: int = 25) -> int:
    return sum(1 for a in range(1, N + 1) if a % modulus == residue % modulus)


def roots_mod_square(p: int) -> list[int]:
    mod = p * p
    return [r for r in range(mod) if (r * r + 1) % mod == 0]


@dataclass
class CliqueResult:
    value: int
    vertices: list[int]


class BitsetGraph:
    """Small exact graph with branch-and-bound max clique routines."""

    def __init__(self, vertices: list[int], compatible: Callable[[int, int], bool]):
        self.vertices = vertices
        self.adj = [0] * len(vertices)
        for i, a in enumerate(vertices):
            mask = 0
            for j, b in enumerate(vertices):
                if i != j and compatible(a, b):
                    mask |= 1 << j
            self.adj[i] = mask

    def _color_sort_unweighted(self, P: int) -> tuple[list[int], list[int]]:
        order: list[int] = []
        colors: list[int] = []
        U = P
        c = 0
        while U:
            c += 1
            Q = U
            while Q:
                lsb = Q & -Q
                v = lsb.bit_length() - 1
                order.append(v)
                colors.append(c)
                U &= ~lsb
                Q &= ~lsb
                Q &= ~self.adj[v]
        return order, colors

    def max_clique(self, allowed_mask: Optional[int] = None) -> CliqueResult:
        if allowed_mask is None:
            allowed_mask = (1 << len(self.vertices)) - 1
        best = 0
        best_mask = 0

        def expand(P: int, size: int, chosen: int) -> None:
            nonlocal best, best_mask
            if not P:
                if size > best:
                    best = size
                    best_mask = chosen
                return
            order, colors = self._color_sort_unweighted(P)
            for k in range(len(order) - 1, -1, -1):
                if size + colors[k] <= best:
                    return
                v = order[k]
                bit = 1 << v
                if P & bit:
                    expand(P & self.adj[v], size + 1, chosen | bit)
                    P &= ~bit
                    if size + P.bit_count() <= best:
                        return

        expand(allowed_mask, 0, 0)
        return CliqueResult(
            value=best,
            vertices=[self.vertices[i] for i in range(len(self.vertices)) if (best_mask >> i) & 1],
        )

    def _color_sort_weighted(self, P: int, weights: list[int]) -> tuple[list[int], list[int]]:
        order: list[int] = []
        bounds: list[int] = []
        U = P
        total = 0
        while U:
            Q = U
            color_class: list[int] = []
            max_weight = 0
            while Q:
                lsb = Q & -Q
                v = lsb.bit_length() - 1
                color_class.append(v)
                max_weight = max(max_weight, weights[v])
                U &= ~lsb
                Q &= ~lsb
                Q &= ~self.adj[v]
            total += max_weight
            for v in color_class:
                order.append(v)
                bounds.append(total)
        return order, bounds

    def max_weight_clique(self, weights: list[int], allowed_mask: Optional[int] = None) -> CliqueResult:
        if len(weights) != len(self.vertices):
            raise ValueError("weights length must match vertices length")
        if allowed_mask is None:
            allowed_mask = (1 << len(self.vertices)) - 1
        best = 0
        best_mask = 0

        def expand(P: int, weight: int, chosen: int) -> None:
            nonlocal best, best_mask
            if not P:
                if weight > best:
                    best = weight
                    best_mask = chosen
                return
            order, bounds = self._color_sort_weighted(P, weights)
            for k in range(len(order) - 1, -1, -1):
                if weight + bounds[k] <= best:
                    return
                v = order[k]
                bit = 1 << v
                if P & bit:
                    expand(P & self.adj[v], weight + weights[v], chosen | bit)
                    P &= ~bit

        expand(allowed_mask, 0, 0)
        return CliqueResult(
            value=best,
            vertices=[self.vertices[i] for i in range(len(self.vertices)) if (best_mask >> i) & 1],
        )


def product(xs: Iterable[int]) -> int:
    out = 1
    for x in xs:
        out *= x
    return out
