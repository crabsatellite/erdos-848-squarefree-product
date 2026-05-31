# R027 Target-Only Neighbor

## Live Cut After This Round

- `Erdos848.finiteOffsetMiddleCompressionEighteenTargetCut`

## Movement

The previous live cut returned a pointwise neighbor object that repeated two
facts already supplied as inputs to the map:

- `InBox N b`
- `CandidateCarrier 18 b`

Those are source-side hypotheses, not analytic output of the finite-offset
mate.  This round moves them out of the returned neighbor data and proves the
reattachment bridge in Lean.

## Lean Additions

- `GlobalOppositeFiniteOffsetEighteenTargetNeighbor`
- `globalOppositeFiniteOffsetEighteenSquarefreeNeighbor_of_target`
- `GlobalFiniteOffsetMiddleCompressionEighteenTargetCertificate`
- `globalFiniteOffsetMiddleCompressionEighteenCore_of_target`
- `finiteOffsetMiddleCompressionEighteenCoreCut`

The endpoint chain is now:

```text
finiteOffsetMiddleCompressionEighteenTargetCut
  -> finiteOffsetMiddleCompressionEighteenCoreCut
  -> finiteOffsetMiddleCompressionSevenCoreCut
  -> finiteOffsetMiddleCompressionCoreCut
  -> finiteOffsetMiddleCompressedCapacityCut
  -> partitionedSquarefreeAPCapacityCut
  -> squarefreeAPHallCut
  -> erdos848_main
```

## Remaining Obligation

Prove `finiteOffsetMiddleCompressionEighteenTargetCut` without an axiom.  The
pointwise opposite mate side now only needs to provide:

1. `offset b <= 6`;
2. the target `OppositeFiniteOffsetValue b (offset b)` is boxed;
3. the target and source form a squarefree edge.

The source box/residue, project-level opposite carrier, target residue, and
value-band facts are all kernel-derived.
