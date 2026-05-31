# R019 Finite Offset Split Credit

## Movement

The endpoint now consumes one audit-visible cut instead of two:

- `Erdos848.globalFiniteOffsetSplitCreditCut`

This cut combines the full opposite-block mate with the active strict-middle
credit matching.  The opposite mate is no longer an arbitrary nearby global
function: it is chosen from seven fixed value offsets
`[-86, -61, -36, -11, 14, 39, 64]`, corresponding to index shifts `-3..3`
between `18 mod 25` and `7 mod 25`.

## Lean Changes

- Added `OppositeFiniteOffsetValue` and
  `GlobalOppositeFiniteOffsetNeighbor`.
- Added `GlobalOppositeFiniteOffsetMatchingImageAllocation` and
  `GlobalOppositeFiniteOffsetMatchingAPCertificateForResidue`.
- Added `GlobalFiniteOffsetSplitCreditCertificateForResidue`, which packages
  finite-offset global matching injectivity with the active strict-middle
  credit matching relative to the same mate.
- Proved `globalOppositeNearbyMatching_of_finiteOffset`, so the older global
  nearby matching interface is a projection from the finite-offset interface.
- Proved `globalOppositeFiniteOffsetMatching_of_splitCredit`, so the
  split-credit cut projects to the finite-offset matching certificate.
- Proved `activeStrictMiddleIncrementalCapacity_of_finiteOffsetSplitCredit`,
  so active incremental capacity is recovered directly from the combined cut.
- Replaced endpoint consumption of `globalOppositeNearbyMatchingCut` and
  `globalActiveStrictMiddleCreditMatchingCut` as axioms with the single axiom
  `globalFiniteOffsetSplitCreditCut`.

## Python Evidence

`opposite_matching_certificate.py` now records:

- `allowed_value_offsets`
- `value_offset_counts`
- `index_shift_counts`

`build.py` asserts that the banded opposite matching uses exactly the seven
allowed offsets for index bandwidth `3`.

## Frontier

The next proof obligation is to prove `globalFiniteOffsetSplitCreditCut`
without an axiom.  This is a sharper target than the prior two-cut frontier:
any candidate proof must simultaneously supply the finite-offset global mate
and the active credit matching relative to that mate.
