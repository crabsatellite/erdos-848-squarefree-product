# R022 Direct Partitioned Capacity

## Movement

The live endpoint cut is now:

- `Erdos848.partitionedSquarefreeAPCapacityCut`

This removes finite-offset opposite matching from the endpoint closure.  The
finite-offset and active-credit interfaces remain as support definitions and
bridge theorems, but the main theorem now consumes only direct partitioned
neighbor capacity:

```text
|O| + |M| <= |N(O) union N(M)|
```

for every compatible outside clique.

## Lean Changes

- Replaced `globalFiniteOffsetPartitionedCapacityCut` as the open axiom with
  `partitionedSquarefreeAPCapacityCut`.
- Rewired `squarefreeAPHallCut` directly through
  `squarefreeAPHallCertificate_of_partitionedCapacity`.
- Kept `incrementalPartitionedSquarefreeAPCapacityCut` and
  `activeStrictMiddleIncrementalCapacityCut` as kernel-derived consequences of
  direct partitioned capacity.
- Removed the current endpoint dependence on the finite-offset matching,
  nearby matching-image, allocation-form split, and split-capacity cut chain.

## Frontier

The next obligation is to prove `partitionedSquarefreeAPCapacityCut` without an
axiom.  This is the cleanest current Lean target matching the finite
`partitioned_hall_certificate.py` evidence.
