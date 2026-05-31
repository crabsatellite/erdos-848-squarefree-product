# R002 Hall Assembly Close

## Scope

Closed the outer Hall-compression assembly in Lean and updated the generated
route ledger so the remaining #848 work is the actual squarefree AP/Hall
neighborhood expansion.

## Route Movement

- Replaced the audit-visible `hallExpansionCut` axiom with a theorem.
- Added local finite-counting lemmas for predicate monotonicity, disjoint
  subcounts, and the split of an admissible family into candidate and outside
  parts.
- Proved that `SquarefreeAPHallCertificate` implies `AtMostCandidateBound`.
- Updated `MainChain` so `G-hall-expansion-global` is `closed-local` and the
  primary gap is `G-squarefree-ap-hall-expansion`.

## Current Ledger

Generated `lean4/chain-status/cuts.md` now reports two project mathematical cuts:

- `Erdos848.globalOppositeNearbyMatchingCut`
- `Erdos848.globalActiveStrictMiddleCreditMatchingCut`

## R003 Endpoint Cut Narrowing

The AP/Hall cut was narrowed to the endpoint-consumed residue only:

- `SquarefreeAPHallCertificate` is now `SquarefreeAPHallCertificateForResidue 7`.
- `CandidateResidueSquarefreeAPHallCertificate` remains as a two-residue
  diagnostic target.
- `squarefreeAPHallCertificate_of_candidateResidues` records that the broader
  two-residue statement implies the endpoint obligation.

This does not weaken the theorem target.  The closed Hall assembly proves
`|A| <= candidateCount 7 N`, then composes with `Nat.le_max_left` for the
published `max (candidateCount 7 N) (candidateCount 18 N)` bound.

## R004 Strict Middle Diagnostic

Added the next split target for the live AP/Hall cut:

- `OppositeCandidateCarrier` names the equality-block candidate class.
- `StrictMiddleOutside` removes both the base and opposite candidate classes.
- `BoundedStrictMiddlePart` has kernel-checked boundedness and clique
  inheritance lemmas.
- `middle_region_certificate.py` records finite Hall defects on the strict
  middle region separately from the full outside graph.

The current finite evidence shows the worst full Hall defect is still carried
by the opposite `18 mod 25` block, while the strict middle region has positive
surplus in the extended windows.

## R005 Partitioned Cut

The monolithic endpoint AP/Hall axiom was replaced by a structured cut:

- At this stage, `partitionedSquarefreeAPHallCut` was the only remaining open
  mathematical axiom.
- `squarefreeAPHallCut` is now a theorem derived from the partitioned cut.
- `squarefreeAPHallCertificate_of_partitioned` proves the counting assembly:
  split an outside set into the opposite-candidate part and strict-middle part,
  then sum two disjoint allocated candidate-neighbor sets.
- The overstrong variant that deleted the entire opposite-neighbor set from the
  strict-middle neighborhood was falsified in small finite windows and is not
  used as a live cut.
- `partitioned_hall_certificate.py` checks the finite shadows of the
  partitioned certificate: opposite expansion, strict-middle expansion, and
  union capacity.

## R006 Capacity Cut

The live cut was narrowed again:

- At this stage, `partitionedSquarefreeAPCapacityCut` was the only remaining
  open mathematical axiom.
- `squarefreeAPHallCut` is kernel-derived directly from the union-capacity
  inequality through `squarefreeAPHallCertificate_of_partitionedCapacity`.
- The allocation-form certificate remains as a diagnostic interface, but the
  endpoint no longer consumes an existential allocation witness.

## R007 Incremental/Surplus Cut

The live cut was narrowed from raw union capacity to the incremental form:

- At this stage, `incrementalPartitionedSquarefreeAPCapacityCut` was the only
  remaining open mathematical axiom.
- `partitionedSquarefreeAPCapacityCut` is now a theorem derived from the
  incremental/surplus inequality.
- `partitionedSquarefreeAPCapacity_of_incremental` proves the counting bridge:
  the opposite-neighbor set and the strict-middle new-neighbor set are disjoint
  subsets of the union-neighbor set.
- This keeps the known-false overstrong condition
  `|N(M) \ N(O)| >= |M|` out of the live route; the live inequality is
  `(|N(O)| - |O|) + |N(M) \ N(O)| >= |M|`.
- Python now records both the false relative-new-middle shadow and the live
  incremental shadow.  In the smoke/extended windows, the strict-middle
  nonempty incremental margin is positive, while the global equality case is
  carried by the opposite-only block.

## R008 Split Incremental Cut

The live cut was split again:

- At this stage, `splitIncrementalSquarefreeAPCapacityCut` was the only
  remaining open mathematical axiom.
- `incrementalPartitionedSquarefreeAPCapacityCut` is now a theorem derived from
  the split cut.
- `incrementalPartitionedSquarefreeAPCapacity_of_split` proves the case split:
  if the strict-middle part is empty, opposite-only expansion suffices; if it
  is nonempty, the active strict-middle incremental certificate is consumed.
- The finite certificate already reports the two relevant shadows separately:
  `worst_opposite_defect` and `worst_incremental_with_middle_defect`.
- `opposite_matching_certificate.py` adds a stronger finite shadow for the
  opposite-only side: a full matching from the `18 mod 25` equality block into
  squarefree neighbors in the `7 mod 25` base progression.

## R009 Allocation-Form Split Cut

The opposite-only side was narrowed from expansion to allocation:

- At this stage, `allocatedSplitIncrementalSquarefreeAPCapacityCut` was the
  only remaining open mathematical axiom.
- `splitIncrementalSquarefreeAPCapacityCut` is now a theorem derived from the
  allocation-form split cut.
- `oppositeNeighborExpansion_of_allocation` proves the kernel counting bridge:
  an allocated candidate-neighbor image with at least as many points as the
  opposite block implies opposite-only expansion.
- This matches the Python matching evidence: a full matching provides exactly
  such an allocated image.

## R010 Nearby Allocation Cut

The opposite allocation side was narrowed to nearby/banded allocations:

- `nearbyAllocatedSplitIncrementalSquarefreeAPCapacityCut` is now the only
  remaining open mathematical axiom.
- `allocatedSplitIncrementalSquarefreeAPCapacityCut` is now a theorem derived
  from the nearby allocation cut.
- `oppositeNeighborAllocation_of_nearby` proves the kernel bridge from a nearby
  allocated image to an ordinary allocated image.
- The Python checker now records both unrestricted full matchings and banded
  matchings with index bandwidth `3`; the latter has value distance at most
  `86`, matching the Lean nearby-neighbor interface.

## R011 Explicit Cut Split

The nearby split cut was separated into two audit-visible mathematical cuts:

- `oppositeNearbyAPAllocationCut` was the nearby/banded opposite allocation
  obligation at this stage.
- `activeStrictMiddleIncrementalCapacityCut` is the active strict-middle surplus
  obligation.
- `nearbyAllocatedSplitIncrementalSquarefreeAPCapacityCut` is now a theorem
  derived from these two cuts, so the audit ledger no longer hides the two
  independent analytic tasks inside one conjunction-shaped axiom.

## R012 Opposite Matching Image Cut

The opposite nearby-allocation cut was narrowed to a matching-image interface:

- `oppositeNearbyMatchingImageCut` is now the nearby/banded opposite obligation.
- `OppositeMatchingImage` forces the allocation set to be the image of a
  concrete function from the opposite block.
- `OppositeNearbyMatchingImageAllocation` records only the nearby
  squarefree-neighbor property and injectivity of that function; the image
  count is no longer part of the cut.
- `oppositeNearbyNeighborAllocation_of_matchingImage` and
  `nearbyAllocatedSplitIncrementalSquarefreeAPCapacity_of_matched` are
  kernel-checked bridges back to the older nearby allocation route.
- The Python banded matching checker is now aligned with the live Lean cut:
  index bandwidth `3` and value distance `86`.

## R013 Active Middle New-Neighbor Allocation Cut

The active strict-middle raw capacity cut was narrowed to an allocation
interface:

- At this stage, `activeStrictMiddleNewNeighborAllocationCut` was the active
  middle obligation.
- `ActiveStrictMiddleNewNeighborAllocation` asks for an explicit allocated set
  of genuinely new strict-middle neighbors.
- Its count inequality keeps the live surplus form:
  `|O| + |M| <= |N(O)| + |MidAlloc|`.
- `activeStrictMiddleIncrementalCapacity_of_newNeighborAllocation` proves the
  kernel bridge from this allocated image to the older incremental capacity
  certificate.

## R014 Matching Image Count Closed

The opposite matching-image cut was narrowed again:

- A private kernel lemma now proves that a boxed finite predicate mapped
  injectively into a boxed image has no larger `familySize` than that image.
- `oppositeNearbyNeighborAllocation_of_matchingImage` uses this lemma plus
  `BoundedOutsideSet` and the nearby-neighbor target to derive the allocation
  count automatically.
- As a result, `oppositeNearbyMatchingImageCut` no longer carries a count
  inequality; it only has to provide a nearby squarefree matching function and
  injectivity.

## R015 Active Middle Credit Matching Cut

The active middle obligation was narrowed from a count-bearing new-neighbor
allocation to a credit-matching interface:

- At this stage, `activeStrictMiddleCreditMatchingCut` was the active middle
  open axiom.
- `ActiveStrictMiddleCreditTarget` is the disjoint credit pool: unused
  opposite-neighbor surplus relative to the opposite matching, or genuinely new
  strict-middle neighbors.
- `ActiveStrictMiddleCreditMatching` asks for an injective function from the
  strict-middle part into that credit pool.
- `activeStrictMiddleIncrementalCapacity_of_creditMatching` proves the kernel
  bridge back to the incremental capacity inequality by combining the opposite
  matching image, the strict-middle credit image, and disjoint count lemmas.

## R016 Active Credit Finite Checker

The Python evidence layer now checks the finite shadow of the active
credit-matching cut directly:

- `active_credit_certificate.py` forms the credit pool used by the Lean cut:
  unused opposite-neighbor surplus relative to the banded opposite matching
  image, union genuinely new strict-middle neighbors.
- `build.py` writes `active_credit_checks` and asserts nonnegative worst
  credit defect plus a concrete sorted injection witness.
- Extended mode currently reports active credit checks
  `[(100, 2, 1, 3), (500, 11, 1, 12)]`, formatted as
  `(N, worst_credit_defect, middle_size, credit_pool_size)`.

The route index reports:

- endpoints: 1
- open mathematical cuts: 2
- debt components: 0
- branch heads: 0
- hard failures: 0

## R017 Global Opposite Matching Cut

The opposite nearby-matching obligation was narrowed again:

- `globalOppositeNearbyMatchingCut` is now the open opposite equality-block
  axiom.
- `GlobalOppositeNearbyMatchingImageAllocation` asks for one banded injective
  matching on the full boxed opposite candidate class, independent of the
  outside clique `B`.
- `oppositeNearbyMatchingAPCertificate_of_global` proves that every
  `B`-relative opposite part inherits the global matching by restriction.
- `oppositeNearbyMatchingImageCut` is now a theorem, not an axiom.
- This aligns the Lean cut with `opposite_matching_certificate.py`, whose
  banded checker already searches the full `18 mod 25` block and verifies
  index bandwidth `3`, hence value distance at most `86`.

## R018 Global-Relative Active Credit Cut

The active strict-middle obligation was narrowed again:

- `globalActiveStrictMiddleCreditMatchingCut` is now the active middle open
  axiom.
- `GlobalActiveStrictMiddleCreditMatchingCertificateForResidue` asks for credit
  matchings only relative to the global opposite matching function supplied by
  `globalOppositeNearbyMatchingCut`.
- `activeStrictMiddleIncrementalCapacity_of_creditMatchingFor` factors the
  counting proof through one concrete opposite mate and one concrete credit
  matching.
- `activeStrictMiddleIncrementalCapacity_of_globalCreditMatching` composes the
  global opposite matching with the global-relative credit certificate to
  recover the active incremental capacity certificate.
- The older arbitrary-mate bridge remains as support, but the endpoint no
  longer consumes an arbitrary-mate active credit axiom.

## Gate

```powershell
cd lean4
lake build Erdos848.MainChain Erdos848.MainTheorem
lake exe erdos848_status
python ..\..\..\tools\chain-audit\ChainAudit\Postprocess\post_process.py --raw chain-status\raw.json --out chain-status
lake exe erdos848_check
```
