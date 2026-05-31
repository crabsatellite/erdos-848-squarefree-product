# R028 Decoder Injectivity

## Live Cut After This Round

- `Erdos848.finiteOffsetMiddleCompressionEighteenDecoderCut`

## Movement

The previous live cut still asked directly for pairwise injectivity of the
finite-offset mate:

```text
mate b1 = mate b2 -> b1 = b2
```

This round replaces that relation with a certificate-style target decoder:

```text
decoder (OppositeFiniteOffsetValue b (offset b)) = b
```

Lean proves that the decoder left-inverse implies the prior pairwise
injectivity condition.  This makes the matching side of the live cut closer to
an explicit certificate format: every used target can carry its source decoder,
and injectivity is recovered by kernel logic.

## Lean Additions

- `GlobalFiniteOffsetEighteenTargetLeftInverse`
- `finiteOffsetEighteenTarget_injective_of_leftInverse`
- `GlobalFiniteOffsetMiddleCompressionEighteenDecoderCertificate`
- `globalFiniteOffsetMiddleCompressionEighteenTarget_of_decoder`
- `finiteOffsetMiddleCompressionEighteenTargetCut`

The endpoint chain is now:

```text
finiteOffsetMiddleCompressionEighteenDecoderCut
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

Prove `finiteOffsetMiddleCompressionEighteenDecoderCut` without an axiom.  The
remaining opposite-block certificate data are now:

1. seven-offset target box/squarefree data;
2. a target decoder left-inverse for the finite-offset mate;
3. active strict-middle credit capacity.
