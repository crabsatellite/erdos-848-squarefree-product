# R020 Finite Offset Split Capacity

## Movement

The endpoint now consumes a count-level finite-offset split-capacity cut:

- `Erdos848.globalFiniteOffsetSplitCapacityCut`

This replaces the prior live split-credit cut.  The opposite equality block is
still matched by one of the seven fixed value offsets
`[-86, -61, -36, -11, 14, 39, 64]`, but the active strict-middle side no longer
assumes an explicit credit matching function.  It only assumes that the credit
target pool has enough count capacity.

## Lean Changes

- Added `ActiveStrictMiddleCreditCapacity`, the count-level version of the
  active credit target obligation.
- Added `GlobalFiniteOffsetSplitCapacityCertificateForResidue`, which packages
  finite-offset global opposite matching with count-level active credit
  capacity relative to the same finite-offset mate.
- Proved `globalOppositeFiniteOffsetMatching_of_splitCapacity`, projecting the
  split-capacity cut to the finite-offset matching certificate.
- Proved `activeStrictMiddleIncrementalCapacity_of_finiteOffsetSplitCapacity`.
  The proof reuses boxed injectivity for the opposite matching image, then
  combines the credit target capacity with the disjoint split into unused
  opposite reserve and genuinely new middle neighbors.
- Rewired the endpoint cut derivation so
  `activeStrictMiddleIncrementalCapacityCut` is derived from split capacity,
  not from an assumed credit matching function.

## Frontier

The next obligation is to prove `globalFiniteOffsetSplitCapacityCut` without an
axiom.  This is now closer to the finite evidence layer: the Python active
credit checker already computes the exact credit pool size and verifies
nonnegative capacity defect, rather than needing to justify a separate credit
function as part of the analytic cut.
