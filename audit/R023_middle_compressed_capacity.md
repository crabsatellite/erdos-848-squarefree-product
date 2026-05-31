# R023 Middle-Compressed Capacity

## Live Cut After This Round

- `Erdos848.finiteOffsetMiddleCompressedCapacityCut`

## Movement

This round replaces the broad direct partitioned-capacity axiom with a
structured finite-offset middle-compression cut.  The direct capacity theorem
is now kernel-derived:

```text
finiteOffsetMiddleCompressedCapacityCut
  -> partitionedSquarefreeAPCapacityCut
  -> squarefreeAPHallCut
  -> erdos848_main
```

The live mathematical obligation now asks for one certificate containing:

1. the seven-offset opposite-block matching into the `7 mod 25` progression;
2. injectivity of that finite-offset mate;
3. count-level active strict-middle credit capacity relative to that mate.

## Lean Additions

- `oppositeSquarefreeAPAllocation_of_nearby`
- `oppositeSquarefreeAPAllocation_of_globalFiniteOffsetMatching`
- `allocatedSplitIncrementalSquarefreeAPCapacity_of_finiteOffsetSplitCapacity`
- `partitionedSquarefreeAPCapacity_of_allocated`
- `partitionedSquarefreeAPCapacity_of_finiteOffsetSplitCapacity`

These are all kernel-checked bridges.  They do not close the analytic problem,
but they make the middle-region compression route the live certificate shape
instead of leaving the endpoint at a broad direct union-capacity axiom.

## Remaining Obligation

Prove `finiteOffsetMiddleCompressedCapacityCut` without an axiom.  Concretely,
the next proof work is to turn the Python finite shadows for the seven-offset
matching and active credit-capacity pool into an unbounded analytic certificate.
