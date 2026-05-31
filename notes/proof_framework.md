# Proof Framework

## Primary Target: Problem 848

Audit owner: `lean4/Erdos848/MainChain.lean`.

Current primary gap: `G-squarefree-ap-hall-expansion`.

Current replacement route: `chain:hall-expansion-compression`.

For `C_7 = {a <= N : a = 7 mod 25}`, any admissible set `A` can be written
as `(A cap C_7) union B`, where `B` is outside `C_7`.

Build a bipartite graph from `B` to `C_7` by joining `b` to `a` when `ab+1`
is squarefree.  These are forbidden coexistence edges.  Therefore

```text
|A| <= |C_7| + |B| - |N(B)|.
```

So a complete proof follows from the Hall expansion claim:

```text
For every compatible outside clique B, |N(B)| >= |B|.
```

The same statement with `C_18` is symmetric evidence, but the endpoint upper
bound only needs `C_7`: Lean proves `|A| <= |C_7|` and then uses
`|C_7| <= max (|C_7|, |C_18|)`.

## Finite Residue Layer

The local graph modulo `Q = 25*13^2` already has clique number `Q/25` when
only the square witnesses `5^2` and `13^2` are allowed.  Excluding the two
`5^2` roots leaves a second-layer maximum of `23`, witnessed by one `13^2`
root class after removing intersections with the two `5^2` roots.

This is the computational shadow of the intended structural statement:
after the two `5^2` classes, every large alternative must pay density loss
and is forced into a thinner prime-square root class.

## Analytic Layer To Build

The exact finite checks have to be replaced by explicit inequalities:

1. Squarefree counts in arithmetic progressions for `b(25t+7)+1`.
2. A finite-offset middle-compression certificate for every compatible outside
   clique after splitting it into the opposite `18 mod 25` block and the strict
   middle.
3. The remaining analytic inequality behind the live cut: the seven-offset
   opposite mate plus the induced credit pool must prove
   `|O| + |M| <= |N(O) union N(M)|`.
4. A rough-square-divisor ledger for `a^2+1 = m p^2` with large `p`.
5. A certified bridge from residue certificates to interval certificates.

## Audit Cuts

- `Erdos848.finiteOffsetMiddleCompressionEighteenDecoderCut`: live
  decoder-form `18 mod 25` finite-offset middle-compression capacity, still
  open.  It combines seven-offset target box/squarefree data from the concrete
  opposite source class, a target decoder left-inverse, and count-level active
  strict-middle credit capacity.  Pairwise injectivity, source box/residue
  facts, project-level opposite carrier, target `7 mod 25` residue, and `86`
  value-band inequalities are no longer part of the axiom surface.

Closed local supports:

- `Erdos848.finiteOffsetEighteenTarget_injective_of_leftInverse`: bridge from
  a target decoder left-inverse to pairwise finite-offset injectivity.
- `Erdos848.globalFiniteOffsetMiddleCompressionEighteenTarget_of_decoder`:
  bridge from the live decoder-form cut to the previous target-only cut.
- `Erdos848.finiteOffsetMiddleCompressionEighteenTargetCut`: previous
  target-only cut, now kernel-derived from the decoder-form cut.
- `Erdos848.globalOppositeFiniteOffsetEighteenSquarefreeNeighbor_of_target`:
  bridge that reattaches the source `InBox` and `18 mod 25` facts to a
  target-only finite-offset neighbor.
- `Erdos848.globalFiniteOffsetMiddleCompressionEighteenCore_of_target`: bridge
  from the live target-only cut to the previous concrete `18 mod 25` core cut.
- `Erdos848.finiteOffsetMiddleCompressionEighteenCoreCut`: previous concrete
  source-residue cut, now kernel-derived from the target-only cut.
- `Erdos848.oppositeCandidateCarrier_seven_of_candidate_eighteen` and
  `Erdos848.candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven`: the
  live `7 mod 25` route's opposite carrier is exactly the `18 mod 25` class.
- `Erdos848.globalOppositeFiniteOffsetSevenSquarefreeNeighbor_of_eighteen`:
  bridge from the concrete source-residue neighbor to the seven-core neighbor.
- `Erdos848.globalFiniteOffsetMiddleCompressionSevenCore_of_eighteenCore`:
  bridge from the live `18 mod 25` core cut to the previous seven-core cut.
- `Erdos848.finiteOffsetMiddleCompressionSevenCoreCut`: previous seven-core
  cut, now kernel-derived from the concrete `18 mod 25` core cut.
- `Erdos848.candidateCarrier_seven_of_oppositeFiniteOffsetValue`: pure
  arithmetic proof that a boxed finite-offset mate of an opposite `18 mod 25`
  vertex lies in the target `7 mod 25` class.
- `Erdos848.globalOppositeFiniteOffsetSquarefreeNeighbor_of_seven`: bridge
  adding the automatic target residue to a seven-core squarefree neighbor.
- `Erdos848.globalFiniteOffsetMiddleCompressionCore_of_sevenCore`: bridge
  from the live seven-core cut to the generic core cut.
- `Erdos848.finiteOffsetMiddleCompressionCoreCut`: previous core cut, now
  kernel-derived from the seven-core cut.
- `Erdos848.oppositeFiniteOffsetValue_band_eightySix`: pure arithmetic proof
  that every permitted finite-offset code lands inside the `86` value band.
- `Erdos848.globalOppositeFiniteOffsetNeighbor_of_squarefree`: bridge adding
  the automatic value-band inequalities to a finite-offset squarefree neighbor.
- `Erdos848.globalFiniteOffsetSplitCapacity_of_middleCompressionCore`: bridge
  from the live core cut to the previous finite-offset split-capacity
  certificate.
- `Erdos848.finiteOffsetMiddleCompressedCapacityCut`: previous
  middle-compressed capacity surface, now kernel-derived from the core cut.
- `Erdos848.partitionedSquarefreeAPCapacityCut`: direct partitioned-neighbor
  capacity, kernel-derived from `finiteOffsetMiddleCompressedCapacityCut`.
- `Erdos848.partitionedSquarefreeAPCapacity_of_finiteOffsetSplitCapacity`:
  bridge from the finite-offset middle-compressed split-capacity certificate to
  direct partitioned capacity.
- `Erdos848.allocatedSplitIncrementalSquarefreeAPCapacity_of_finiteOffsetSplitCapacity`:
  bridge from the live finite-offset cut to the allocation-form split
  certificate.
- `Erdos848.oppositeSquarefreeAPAllocation_of_globalFiniteOffsetMatching`:
  bridge from the finite-offset global matching to the opposite allocation
  certificate consumed by the split route.
- `Erdos848.squarefreeAPHallCut`: the endpoint AP/Hall certificate,
  kernel-derived from `partitionedSquarefreeAPCapacityCut`.
- `Erdos848.incrementalPartitionedSquarefreeAPCapacityCut`: incremental/surplus
  certificate, kernel-derived from direct partitioned capacity.
- `Erdos848.activeStrictMiddleIncrementalCapacityCut`: active strict-middle
  incremental surplus certificate, kernel-derived from direct partitioned
  capacity.
- `Erdos848.partitionedSquarefreeAPCapacity_of_finiteOffsetPartitionedCapacity`:
  support projection showing the prior finite-offset partitioned-capacity
  interface implies the current live cut.
- `Erdos848.globalOppositeNearbyMatching_of_finiteOffset`: bridge from the
  seven-offset global matching to the older nearby matching interface.
- `Erdos848.globalOppositeFiniteOffsetMatching_of_splitCredit`: projection
  from the split-credit cut to the finite-offset matching certificate.
- `Erdos848.globalOppositeFiniteOffsetMatching_of_splitCapacity`: projection
  from the split-capacity cut to the finite-offset matching certificate.
- `Erdos848.globalOppositeFiniteOffsetMatching_of_partitionedCapacity`:
  projection from the partitioned-capacity cut to the finite-offset matching.
- `Erdos848.oppositeNearbyMatchingAPCertificate_of_global`: bridge from the
  global opposite-block matching to every `B`-relative opposite part.
- `Erdos848.incrementalPartitionedSquarefreeAPCapacity_of_partitionedCapacity`:
  bridge from direct union capacity to incremental/surplus capacity, using the
  cover of `N(O) union N(M)` by `N(O)` and `N(M) \ N(O)`.
- `Erdos848.activeStrictMiddleIncrementalCapacity_of_finiteOffsetSplitCapacity`:
  bridge from the finite-offset global mate plus count-level credit-capacity
  interface to the incremental capacity certificate.
- `Erdos848.activeStrictMiddleIncrementalCapacity_of_finiteOffsetSplitCredit`:
  bridge from the finite-offset global mate plus split-credit interface to the
  incremental capacity certificate.
- `Erdos848.activeStrictMiddleIncrementalCapacity_of_globalCreditMatching`:
  bridge from the global opposite mate and global-relative credit-matching
  interface to the incremental capacity certificate.
- `Erdos848.activeStrictMiddleIncrementalCapacity_of_creditMatchingFor`:
  pointwise kernel bridge from one concrete opposite mate plus one concrete
  credit matching to the incremental capacity inequality.
- `Erdos848.activeStrictMiddleIncrementalCapacity_of_creditMatching`: bridge
  from the older arbitrary-mate credit-matching interface to the incremental
  capacity certificate.
- `Erdos848.hallExpansionCut`: finite counting assembly from the AP/Hall
  expansion certificate to `AtMostCandidateBound`.
- `Erdos848.residueCandidateSharp`: candidate admissibility via `5^2`.
- `Erdos848.residueSecondLayer`: candidate self-obstruction via `5^2`.
- `Erdos848.outside_candidate_seven_of_squarefree_edge` and
  `Erdos848.outside_candidate_eighteen_of_squarefree_edge`: any squarefree
  edge out of a candidate class lands outside that same class.
- `Erdos848.boundedOutsidePart_boundedOutsideSet`: the bounded outside part is
  actually boxed and outside.
- `Erdos848.boundedOutsidePart_nonSquarefreeClique_of_admissible`: the bounded
  outside part of an admissible family inherits pairwise non-squarefree
  compatibility.
- `Erdos848.boundedStrictMiddlePart_boundedOutsideSet` and
  `Erdos848.boundedStrictMiddlePart_nonSquarefreeClique_of_admissible`: the
  same inheritance facts after removing the opposite candidate class.
- `Erdos848.roughSquareDivisor`: classical unpacking of `not squarefree`.

Finite search alone is registered as `D-finite-search-only`; it is evidence,
not a close.

Current finite shadow: the relative new-middle condition
`|N(M) \ N(O)| >= |M|` is false (`N=500` has defect `-2`), but the
incremental/surplus condition remains nonnegative.  When the strict-middle part
is nonempty, the recorded windows have positive incremental margin, so the
remaining proof should split the opposite-only equality block from the genuine
middle-region surplus.

The active credit checker now computes the exact Lean credit-capacity pool for
bounded windows: unused opposite-neighbor surplus relative to the banded
opposite matching image, union genuinely new middle neighbors.  In the current
extended windows (`N=100,500` for the partitioned scan), the worst credit
capacity defects are positive: `2` and `11`.

For the opposite-only equality block, the finite checker now searches for a
full matching from every `18 mod 25` vertex to a squarefree neighbor in the
`7 mod 25` progression.  A full matching is stronger than the Hall inequality
for all subsets of that block, because it restricts to an injection on every
subset.

The current nearby version uses index bandwidth `3`, which corresponds to the
seven fixed value offsets `[-86, -61, -36, -11, 14, 39, 64]` between matched
opposite and base vertices.  This matches the Lean
`GlobalOppositeFiniteOffsetMatchingImageAllocation` interface in the live cut;
the older nearby and allocation interfaces are now projections from it.

## Reference Problems

Problem #327 is also a forbidden-pair extremal set.  Its first variant asks
for large subsets avoiding `a+b | ab`, with the odd numbers as the natural
construction.  It should share the exact graph/certificate layer.

Problem #727 is not a pair graph.  It is a valuation problem:

```text
(n+k)!^2 | (2n)! iff 2*v_p((n+k)!) <= v_p((2n)!) for every prime p.
```

It is included as a template for valuation-led obstruction logs.
