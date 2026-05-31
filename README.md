# Erdos 848 Squarefree Product

Working infrastructure for attacking Erdos Problem #848:

> Maximize `A subset {1,...,N}` subject to `ab + 1` never being squarefree
> for all `a,b in A`. The conjectural extremizers are the residue classes
> `7 mod 25` and `18 mod 25`.

This now follows the `erdos-sweep` infra shape used by #327 and #727:
Python certificates live at the project root, while the proof-audit surface
lives in `lean4/` through `Erdos848.MainChain` and `chain-status/`.

The initial route is a Hall/matching compression framework:

1. Fix the candidate class `C_7 = {a <= N : a = 7 mod 25}`.
2. For an outside compatible set `B`, connect `b in B` to `a in C_7` when
   `ab + 1` is squarefree.
3. If every compatible outside clique satisfies `|N(B)| >= |B|`, then
   `|A| <= |C_7|`.

The same forbidden-pair engine also has templates for Erdos #327, while Erdos
#727 is recorded as a valuation-scanner template.

## Layout

| Directory | Contents |
|-----------|----------|
| `lean4/Erdos848/` | Lean theorem surface, open cuts, and ChainAudit config |
| `lean4/chain-status/` | Generated route/cut/finding ledgers |
| `src/erdos848/` | Exact squarefree, graph, Hall, residue-certificate engines |
| `data/certificates/` | Generated JSON certificates |
| `data/results/` | Reproducibility summaries from `build.py` |
| `notes/` | Proof route notes and obstruction ledger |
| `audit/` | Round reports |

## Quick Start

```powershell
python build.py --mode smoke
python build.py --mode extended

cd lean4
lake exe erdos848_status
python ..\..\..\tools\chain-audit\ChainAudit\Postprocess\post_process.py --raw chain-status\raw.json --out chain-status
lake exe erdos848_check
```

`smoke` runs small exact checks quickly.  `extended` additionally runs the
`Q = 25*13^2` prefix-weight residue certificate, which is slower but still
small enough for local review.

## Current Route

- `Closed p=5 residue layer`: Lean now proves the two candidate classes are
  admissible because same-class products satisfy `5^2 | ab+1`, and also records
  that cross candidate pairs are not killed by this same `5^2` obstruction.
- `Closed rough-square unpacking`: Lean now expands `not squarefree` into an
  explicit square-divisor witness for the current project definition.
- `Closed Hall layer`: Lean now proves the finite counting assembly from the
  count-level AP/Hall certificate to `AtMostCandidateBound`; `hallExpansionCut`
  is a theorem, not an axiom.
- `Analytic layer`: prove the count-level squarefree AP Hall-neighborhood
  expansion from outside vertices into the endpoint-consumed `7 mod 25`
  candidate progression; same-class vertices are already excluded by the local
  `5^2` theorem.  The symmetric `18 mod 25` statement is useful evidence but is
  not needed to prove the upper bound because the endpoint already compares
  against `max (candidateCount 7 N) (candidateCount 18 N)`.
- `Middle-region diagnostic`: Python now separately checks the strict outside
  region after removing the opposite `18 mod 25` class.  This records the
  observed surplus away from the equality block and gives the next certificate
  split target.
- `Typed-code decoder-form 18-core finite-offset middle-compression cut`: Lean now derives the endpoint
  `SquarefreeAPHallCertificate` from `partitionedSquarefreeAPCapacityCut`,
  which is itself a theorem derived from
  `finiteOffsetMiddleCompressedCapacityCut`; that theorem is derived from
  `finiteOffsetMiddleCompressionCoreCut`, which is derived from
  `finiteOffsetMiddleCompressionSevenCoreCut`; that theorem is now derived
  from `finiteOffsetMiddleCompressionEighteenCoreCut`, which is now derived
  from `finiteOffsetMiddleCompressionEighteenTargetCut`, which is now derived
  from `finiteOffsetMiddleCompressionEighteenDecoderCut`, which is now derived
  from the live cut `finiteOffsetMiddleCompressionEighteenTypedDecoderCut`.
  The live cut asks for typed seven-offset target box/squarefree data from the
  concrete `18 mod 25` source class, a target decoder left-inverse, and the
  active strict-middle credit-capacity pool.  Lean derives the Nat-code bound
  from the finite code type, derives pairwise injectivity from the decoder,
  reattaches the source box/residue facts, derives the project-level opposite
  carrier, the target `7 mod 25` residue, and the `86` value band, then derives
  direct partitioned neighbor capacity for every compatible outside clique.
  Python separately checks the finite shadows
  `|N(O)| >= |O|`, `|N(M)| >= |M|`,
  `|N(O) union N(M)| >= |O| + |M|`,
  `(|N(O)| - |O|) + |N(M) \ N(O)| >= |M|`, and the active-middle version of
  that final inequality.
- `Opposite matching certificate`: Python now separately finds full matchings
  from the opposite `18 mod 25` equality block into the base `7 mod 25`
  progression.  The banded version restricts to index displacement at most `3`
  and records the seven value offsets
  `[-86, -61, -36, -11, 14, 39, 64]`, matching the finite-offset half of the
  split cut.
- `Active credit capacity certificate`: Python now checks the finite shadow of
  the live active-middle credit-capacity route, using the banded opposite
  matching image to form unused opposite surplus plus new middle neighbors as
  the credit pool.

The audit-visible primary gap is `G-squarefree-ap-hall-expansion`; the current
open mathematical cut is `Erdos848.finiteOffsetMiddleCompressionEighteenTypedDecoderCut`.
Finite search is kept as support evidence and explicitly marked as a dead route
when used alone.
