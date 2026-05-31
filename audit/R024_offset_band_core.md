# R024 Offset-Band Core

## Live Cut After This Round

- `Erdos848.finiteOffsetMiddleCompressionCoreCut`

## Movement

The previous live cut required each finite-offset opposite mate to carry the
nearby value-band inequalities `a <= b + 86` and `b <= a + 86`.  Those
inequalities are not mathematical content once the offset code is known: they
follow by case analysis over the seven allowed offsets
`[-86, -61, -36, -11, 14, 39, 64]`.

This round proves that arithmetic inside Lean and removes the band inequalities
from the open axiom surface.

## Lean Additions

- `oppositeFiniteOffsetValue_band_eightySix`
- `GlobalOppositeFiniteOffsetSquarefreeNeighbor`
- `globalOppositeFiniteOffsetNeighbor_of_squarefree`
- `GlobalFiniteOffsetMiddleCompressionCoreCertificateForResidue`
- `globalFiniteOffsetSplitCapacity_of_middleCompressionCore`
- `finiteOffsetMiddleCompressedCapacityCut`

The endpoint chain is now:

```text
finiteOffsetMiddleCompressionCoreCut
  -> finiteOffsetMiddleCompressedCapacityCut
  -> partitionedSquarefreeAPCapacityCut
  -> squarefreeAPHallCut
  -> erdos848_main
```

## Remaining Obligation

Prove `finiteOffsetMiddleCompressionCoreCut` without an axiom.  The proof no
longer needs to supply the `86` band inequalities; it must supply only the
finite-offset squarefree neighbor facts, injectivity, and active strict-middle
credit-capacity certificate.
