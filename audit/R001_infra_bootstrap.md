# R001 Infra Bootstrap

## Scope

Created an `erdos-sweep` research workspace for Erdos #848, with #327 and
#727 as infra templates and ABC-style route/cut ledger discipline.

## Route

- #848: Hall expansion plus finite residue certificates.
- #327: shared forbidden-pair extremal graph engine.
- #727: Legendre valuation scanner template.
- Audit surface: `lean4/Erdos848/MainChain.lean` with generated
  `lean4/chain-status/*.md`.

## Acceptance Gate

The local gate is:

```powershell
python build.py --mode smoke
python build.py --mode extended
cd lean4
lake exe erdos848_status
python ..\..\..\tools\chain-audit\ChainAudit\Postprocess\post_process.py --raw chain-status\raw.json --out chain-status
lake exe erdos848_check
```

The smoke gate should be fast.  The extended gate additionally checks all
prefix weights modulo `25*13^2`.

## Open Work

- Turn the Hall expansion into an explicit analytic lemma.
- Add interval certificates for squarefree counts in linear progressions.
- Replace the current Lean axioms with checked theorems one cut at a time.

## R002 Route Movement

The first Lean route movement closed two bootstrap cuts:

- `residueCandidateSharpCut` was replaced by `residueCandidateSharp`, proving
  the `7 mod 25` and `18 mod 25` candidate classes are admissible via `5^2`.
- `roughSquareDivisorCut` was replaced by `roughSquareDivisor`, the classical
  unpacking of the project's `Squarefree` definition.

The generated route ledger later moved again: `hallExpansionCut` and
`squarefreeAPHallCut` are now kernel-closed, and the only project mathematical
cuts are `globalOppositeNearbyMatchingCut` and
`globalActiveStrictMiddleCreditMatchingCut`.
