# R021 Finite Offset Partitioned Capacity

## Movement

The live cut is now:

- `Erdos848.globalFiniteOffsetPartitionedCapacityCut`

This replaces the split-capacity cut.  The opposite equality block still has a
seven-offset global mate, but the active strict-middle credit pool is no longer
part of the live obligation.  The live analytic target is direct partitioned
neighbor capacity:

```text
|O| + |M| <= |N(O) union N(M)|
```

for every compatible outside clique.

## Lean Changes

- Added `GlobalFiniteOffsetPartitionedCapacityCertificateForResidue`.
- Proved `globalOppositeFiniteOffsetMatching_of_partitionedCapacity`, projecting
  the live cut to the finite-offset matching certificate.
- Proved `partitionedSquarefreeAPCapacity_of_finiteOffsetPartitionedCapacity`,
  projecting the live cut to `PartitionedSquarefreeAPCapacityCertificate`.
- Proved `incrementalPartitionedSquarefreeAPCapacity_of_partitionedCapacity`,
  the reverse bridge from direct union capacity to incremental/surplus
  capacity.  The key cover is:

```text
N(O) union N(M) <= N(O) + (N(M) \ N(O))
```

- Rewired `squarefreeAPHallCut` to consume direct partitioned capacity from the
  live cut.  The older nearby/active/incremental certificates remain
  kernel-derived support.

## Frontier

The next obligation is to prove
`globalFiniteOffsetPartitionedCapacityCut` without an axiom.  This is the
closest current Lean interface to the finite `partitioned_hall_certificate.py`
evidence: it asks for direct union capacity, while retaining the finite-offset
opposite matching shadow as a route-visible structural constraint.
