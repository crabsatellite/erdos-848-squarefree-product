# R026 Eighteen-Core Source

## Live Cut After This Round

- `Erdos848.finiteOffsetMiddleCompressionEighteenCoreCut`

## Movement

The previous seven-core cut still used the project-level
`OppositeCandidateCarrier 7 b` predicate on the source side.  In the live
`7 mod 25` endpoint route this predicate is exactly the concrete
`18 mod 25` residue class.  The disjunction is route infrastructure, not
analytic content.

This round proves both directions of that residue identification in Lean and
removes `OppositeCandidateCarrier 7` from the open axiom surface.  The live cut
now speaks directly in the same source class used by the Python checker:
`CandidateCarrier 18`.

## Lean Additions

- `oppositeCandidateCarrier_seven_of_candidate_eighteen`
- `candidateCarrier_eighteen_of_oppositeCandidateCarrier_seven`
- `GlobalOppositeFiniteOffsetEighteenSquarefreeNeighbor`
- `globalOppositeFiniteOffsetSevenSquarefreeNeighbor_of_eighteen`
- `GlobalFiniteOffsetMiddleCompressionEighteenCoreCertificate`
- `globalFiniteOffsetMiddleCompressionSevenCore_of_eighteenCore`
- `finiteOffsetMiddleCompressionSevenCoreCut`

The endpoint chain is now:

```text
finiteOffsetMiddleCompressionEighteenCoreCut
  -> finiteOffsetMiddleCompressionSevenCoreCut
  -> finiteOffsetMiddleCompressionCoreCut
  -> finiteOffsetMiddleCompressedCapacityCut
  -> partitionedSquarefreeAPCapacityCut
  -> squarefreeAPHallCut
  -> erdos848_main
```

## Remaining Obligation

Prove `finiteOffsetMiddleCompressionEighteenCoreCut` without an axiom.  The
remaining source-side facts are boxed squarefree seven-offset mates from
`18 mod 25`, injectivity of the finite-offset mate, and active strict-middle
credit capacity.
