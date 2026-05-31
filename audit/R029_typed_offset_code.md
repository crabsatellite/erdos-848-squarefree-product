# R029 Typed Offset Code

## Live Cut After This Round

- `Erdos848.finiteOffsetMiddleCompressionEighteenTypedDecoderCut`

## Movement

The previous live decoder cut still represented the seven allowed finite
offsets as arbitrary natural numbers and required every pointwise target
neighbor fact to return:

```text
offset b <= 6
```

This round replaces that Nat-bound surface with a Lean type containing exactly
the seven allowed offset constructors.  The live cut now supplies typed
seven-offset target data, and Lean proves the bridge back to the prior Nat-code
decoder certificate.

## Lean Additions

- `OppositeFiniteOffsetCode`
- `OppositeFiniteOffsetCode.toNat`
- `oppositeFiniteOffsetCode_toNat_le_six`
- `OppositeFiniteOffsetCodeValue`
- `GlobalOppositeFiniteOffsetEighteenTypedTargetNeighbor`
- `globalOppositeFiniteOffsetEighteenTargetNeighbor_of_typed`
- `GlobalFiniteOffsetEighteenTypedTargetLeftInverse`
- `GlobalFiniteOffsetMiddleCompressionEighteenTypedDecoderCertificate`
- `globalFiniteOffsetMiddleCompressionEighteenDecoder_of_typed`
- `finiteOffsetMiddleCompressionEighteenDecoderCut`

The endpoint chain is now:

```text
finiteOffsetMiddleCompressionEighteenTypedDecoderCut
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

Prove `finiteOffsetMiddleCompressionEighteenTypedDecoderCut` without an axiom.
The remaining opposite-block certificate data are now:

1. typed seven-offset target box/squarefree data;
2. a target decoder left-inverse for the typed finite-offset mate;
3. active strict-middle credit capacity.
