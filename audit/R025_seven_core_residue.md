# R025 Seven-Core Residue

## Live Cut After This Round

- `Erdos848.finiteOffsetMiddleCompressionSevenCoreCut`

## Movement

The previous core cut still asked the axiom to prove that each finite-offset
mate lies in the target `7 mod 25` residue class.  For the live route, this is
also arithmetic rather than analytic content: if `b` is in the opposite
`18 mod 25` class, the finite-offset value is boxed, and the offset code is one
of the seven allowed codes, then the target value is automatically `7 mod 25`.

This round proves that residue fact in Lean and removes the target
candidate-residue condition from the live axiom surface.

## Lean Additions

- `GlobalOppositeFiniteOffsetSevenSquarefreeNeighbor`
- `candidateCarrier_seven_of_oppositeFiniteOffsetValue`
- `globalOppositeFiniteOffsetSquarefreeNeighbor_of_seven`
- `GlobalFiniteOffsetMiddleCompressionSevenCoreCertificate`
- `globalFiniteOffsetMiddleCompressionCore_of_sevenCore`
- `finiteOffsetMiddleCompressionCoreCut`

The endpoint chain is now:

```text
finiteOffsetMiddleCompressionSevenCoreCut
  -> finiteOffsetMiddleCompressionCoreCut
  -> finiteOffsetMiddleCompressedCapacityCut
  -> partitionedSquarefreeAPCapacityCut
  -> squarefreeAPHallCut
  -> erdos848_main
```

## Remaining Obligation

Prove `finiteOffsetMiddleCompressionSevenCoreCut` without an axiom.  The proof
now needs to supply boxed squarefree seven-offset mates, injectivity of the
finite-offset mate, and active strict-middle credit capacity.  The target
residue and value-band checks are kernel-derived.
