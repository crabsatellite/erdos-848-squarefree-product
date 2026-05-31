# R030 Boxed Target Code

## Live Cut After This Round

- `Erdos848.finiteOffsetMiddleCompressionEighteenBoxedDecoderCut`

## Movement

The previous live typed-code cut still returned target boxedness explicitly in
the pointwise neighbor data:

```text
InBox N (OppositeFiniteOffsetCodeValue b (offset b))
```

This round makes the finite-offset code source-indexed and packages that target
box proof into the code object itself.  The explicit pointwise target output is
now only the squarefree edge, while Lean unpacks the boxed code to recover the
previous typed target-neighbor surface.

Non-source inputs are not part of the opposite matching image.  The bridge
therefore derives a total mate by sending non-source inputs to a harmless
default finite-offset constructor.

## Lean Additions

- `BoxedOppositeFiniteOffsetCode`
- `boxedOppositeFiniteOffsetCodeValue`
- `boxedOppositeFiniteOffsetCodeValue_inBox`
- `boxedOppositeFiniteOffsetRawCode`
- `boxedOppositeFiniteOffsetMate`
- `GlobalOppositeFiniteOffsetEighteenBoxedTargetNeighbor`
- `globalOppositeFiniteOffsetEighteenTypedTargetNeighbor_of_boxed`
- `GlobalFiniteOffsetEighteenBoxedTargetLeftInverse`
- `GlobalFiniteOffsetMiddleCompressionEighteenBoxedDecoderCertificate`
- `globalFiniteOffsetMiddleCompressionEighteenTypedDecoder_of_boxed`
- `finiteOffsetMiddleCompressionEighteenTypedDecoderCut`

The endpoint chain is now:

```text
finiteOffsetMiddleCompressionEighteenBoxedDecoderCut
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

Prove `finiteOffsetMiddleCompressionEighteenBoxedDecoderCut` without an axiom.
The remaining opposite-block certificate data are now:

1. source-indexed boxed seven-offset codes;
2. squarefree edge data for those boxed targets;
3. a target decoder left-inverse for the boxed finite-offset mate;
4. active strict-middle credit capacity.
