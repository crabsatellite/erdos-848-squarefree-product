# R031 Squarefree-Boxed Code

## Live Cut After This Round

- `Erdos848.finiteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCut`

## Movement

The previous live boxed-code cut still had a separate pointwise output clause
for the squarefree edge:

```text
ForbiddenSquarefreeEdge (boxed target) b
```

This round packages that edge proof into the source-indexed finite-offset code.
The live pointwise data are now a single code object carrying both target
boxedness and the squarefree edge.  Lean forgets the edge proof when it needs
the previous boxed-code surface, and then the existing chain recovers the
typed-code, decoder, target, core, capacity, and endpoint certificates.

## Lean Additions

- `SquarefreeBoxedOppositeFiniteOffsetCode`
- `SquarefreeBoxedOppositeFiniteOffsetCode.toBoxed`
- `globalOppositeFiniteOffsetEighteenBoxedTargetNeighbor_of_squarefreeBoxed`
- `GlobalFiniteOffsetEighteenSquarefreeBoxedTargetLeftInverse`
- `GlobalFiniteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCertificate`
- `globalFiniteOffsetMiddleCompressionEighteenBoxedDecoder_of_squarefreeBoxed`
- `finiteOffsetMiddleCompressionEighteenBoxedDecoderCut`

The endpoint chain is now:

```text
finiteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCut
  -> finiteOffsetMiddleCompressionEighteenBoxedDecoderCut
  -> finiteOffsetMiddleCompressionEighteenTypedDecoderCut
  -> finiteOffsetMiddleCompressionEighteenDecoderCut
  -> finiteOffsetMiddleCompressionEighteenTargetCut
  -> finiteOffsetMiddleCompressionEighteenCoreCut
  -> finiteOffsetMiddleCompressionSevenCoreCut
  -> finiteOffsetMiddleCompressionCoreCut
  -> finiteOffsetMiddleCompressedCapacityCut
  -> partitionedSquarefreeAPCapacityCut
  -> squarefreeAPHallCut
  -> erdos848_main
```

## Remaining Obligation

Prove `finiteOffsetMiddleCompressionEighteenSquarefreeBoxedDecoderCut` without
an axiom.  The remaining certificate data are now:

1. source-indexed seven-offset code objects carrying target boxedness and edge
   proofs;
2. a target decoder left-inverse for the induced finite-offset mate;
3. active strict-middle credit capacity.
