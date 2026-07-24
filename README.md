# A Kernel-Checked Asymptotic Formalization for Erdős Problem 848

This repository contains a short manuscript and a Lean 4 formalization of
the known asymptotic resolution of Erdős Problem 848.

For all sufficiently large `N`, every `A ⊆ {1, ..., N}` satisfying
`¬ Squarefree (a * b + 1)` for all `a, b ∈ A` has cardinality at most the
number of integers congruent to `7 mod 25`. The residue classes `7 mod 25`
and `18 mod 25` give the two sharp constructions.

This public repository does **not** yet claim the all-`N` statement. It
kernel-checks the asymptotic theorem and the exact prefix through
`N = 5,000,000`. Only the `N >= 5,000,000` tail remains open.

The developing all-`N` package is protected by a version-locked publication
contract.  `proof-state.json`, `paper/proof-contract.json`, and
`lean4/Erdos848/PublicationContract.lean` must agree; the paper artifacts are
also pinned by SHA-256.  The final package builder refuses the current
`open/partial/unaligned` state.  See `RELEASE.md` for the gates and exact
release criteria.

## Contents

- `paper/erdos_848_kernel_asymptotic.tex`: manuscript source.
- `paper/Li_Erdos_848_Kernel_Asymptotic_2026.pdf`: rendered manuscript.
- `paper/theorem-map.json`: paper-label to Lean-declaration map.
- `lean4/Erdos848/Asymptotic.lean`: self-contained Mathlib-only formalization
  of Sawhney's stability argument, preserved from the credited Apache-2.0
  upstream source.
- `lean4/Erdos848/MainTheorem.lean`: literal `{1, ..., N}` indexing bridge,
  asymptotic endpoint, small exact instances, and finite reduction.
- `lean4/Erdos848/FinitePrefixChecker.lean`: kernel-only Lucas/Pratt and
  squarefree-factorization soundness layer for the bounded-prefix payload.
- `lean4/Erdos848/IndexedDiagonalChecker.lean`: balanced, indexed completeness
  checker for the exact diagonal-candidate sequence.
- `lean4/Erdos848/PrefixTraceChecker.lean`: generic soundness checker for the
  anchor-state and candidate-assignment histories.
- `lean4/Erdos848/HallReduction.lean`: exact two-way equivalence between the
  archived Hall-defect cut and the literal problem statement.
- `lean4/Erdos848/LowRangeArithmetic.lean`: balanced kernel proofs of the
  sixty-prime ceiling-sum and terminal affine inequalities used by both
  archived low ranges.  This discharges their arithmetic layer but is not by
  itself a proof of either Hall range.
- `lean4/Erdos848/LowRangeCombinatorics.lean`: exact Hall-completion partition,
  a single-pivot exhaustive mod-4 trichotomy, unconditional raw-class count,
  and direct closure of all three mixed mechanisms in both low ranges from
  their diagonal and one-pivot degree estimates.  The archived residual-density
  scans are not premises of these strengthened close theorems.
- `lean4/Erdos848/LowRangeDegreeReduction.lean`: kernel proof of the complete
  one-pivot prime-square split.  It closes all sixty primes below `300` by
  CRT, counts directly on `Icc 1 N` without the former per-progression endpoint
  loss, and returns enough Hall slack to the certificate interface.  Each low
  range now has one combined `p ≥ 301` cardinality bound (`342` and `447`),
  rather than separate exact even/middle/tail maxima.
- `lean4/Erdos848/LowRangeDiagonalChecker.lean`: generic kernel checker for
  exact outside-base diagonal coverage, sorted marker projections, cutoffs,
  and rational count envelopes.
- `lean4/Erdos848/GeneratedLowDiagonalCoverage`: the exact certificate through
  `N < 5,000,000`.  It kernel-checks 174,193 prime root pairs, proves that every
  outside-base non-squarefree value `x^2 + 1` is in the 125,808-entry marker,
  verifies the odd and two mod-4 projections, and proves both low-range
  diagonal envelopes.
- `lean4/Erdos848/LowRangeGeneratedDiagonal.lean`: inserts those generated
  envelopes into the existing low-range Hall contracts.  These structural
  layers are retained for independent audit; the exact five-million trace now
  closes both low ranges without additional premises.
- `lean4/Erdos848/GeneratedDiagonalCoverage`,
  `GeneratedPrattCoverage`, and `GeneratedFactorCoverage`: split official
  numerical payloads and their kernel-checked assembly theorems.
- `lean4/Erdos848/GeneratedFiveMillionPrattCoverage` and
  `GeneratedFiveMillionFactorCoverage`: the kernel-checked primality and
  squarefreeness tables used by the five-million trace.
- `lean4/Erdos848/GeneratedFiveMillionPrefixTrace`: the exact full trace
  payload through `N = 5,000,000`; `Erdos848.erdos848_through_five_million`
  is its public kernel-checked endpoint.  The older
  `GeneratedPrefixTraceCoverage` namespace is retained as the independently
  checkable historical prefix certificate.
- `scripts/build_generated_certificate.py`: bounded, resumable direct-OLean
  builder for the generated proof leaves.  It bypasses Lake's `leanArts`
  backend, so proof builds do not emit C, IR JSON, or generated-file LSP
  indexes; enforces per-process time and memory ceilings plus a global
  active-leaf cap; records durable state under `lean4/.lake`; rejects every
  concurrent certificate builder; and kills the complete child process tree
  on failure, timeout, or loss of the invoking shell.
- `scripts/verify_publication.py`: fail-closed source/manuscript checker.
- `scripts/verify_axioms.py`: exact `--trust=0` axiom-output checker.

Research logs, failed approaches, generated chain-status reports, finite-search
programs, and exploratory certificates are not part of this publication
repository.

## Main Lean endpoints

```lean
theorem erdos848_original_asymptotic :
    ∃ N₀ : ℕ, ∀ N ≥ N₀, OriginalProblem848Statement N

theorem erdos848_finite_reduction :
    ∃ N₀ : ℕ,
      (∀ N ≥ N₀, OriginalProblem848Statement N) ∧
      ((∀ N, OriginalProblem848Statement N) ↔
        ∀ N < N₀, OriginalProblem848Statement N)

theorem originalProblem_of_prefixColouringState {N : ℕ}
    (state : PrefixColouringState N) : OriginalProblem848Statement N

theorem erdos848_through_five_million :
    ∀ N, N ≤ 5_000_000 → OriginalProblem848Statement N

theorem erdos848_full_of_five_million_tail
    (htail : Erdos848FiveMillionTailClose) :
    ∀ N, OriginalProblem848Statement N

theorem erdos848_full_of_branchedPairTailTerminalBound
    (hterminal : Erdos848GlobalMixedBranchedPairTailTerminalBound) :
    ∀ N, OriginalProblem848Statement N
```

The five-million prefix theorem is unconditional.  The direct global assembly
is now recorded in `Erdos848/TailClose.lean` and has exactly one remaining
bundled premise: `Erdos848GlobalMixedBranchedPairTailTerminalBound`.  Its even
component is the literal uniform count of the off-base diagonal set, the
cutoff-95 threshold-five finite set on the two base progressions, and its
pair-tail set.  Its odd component replaces the global diagonal by the literal
defect-dependent `hallResidual`; prime `2` forces a base family of density
`1/50`, so the former one-size global-diagonal budget cannot close an odd
valuation class.  Both components apply directly for every
`N >= 5,000,000`; neither is a five-to-ten-million interval certificate.

The reductions to those terminal counts and the two-range splice are proved.
The terminal counts themselves are not yet proved: the present cutoff-95 Bellman
rows check their exact rational recurrence, but do not yet supply the semantic
upper bound for the literal finite payment; the even diagonal/pair-tail bound
and the odd defect-residual/pair-tail bound remain to be established.
Consequently this repository is not yet an unconditional full close.  In
particular, endpoint calibration or a conditional assembler must not be
reported as the theorem.

## Verification

The first Lean build is resource-intensive: the main source is about 5,450
lines and elaborates a large exact sieve argument. On the machine used for
this release, the first build of that file took about fourteen minutes and
peaked above 4 GB of memory; subsequent checks are incremental.

```powershell
python scripts/verify_publication.py
cd lean4
lake exe cache get
cd ..
python scripts/build_generated_certificate.py --kind diagonal --stage all
python scripts/build_generated_certificate.py --kind diagonal --module-prefix Erdos848.GeneratedLowDiagonalCoverage --stage all
python scripts/build_generated_certificate.py --kind pratt --stage all
python scripts/build_generated_certificate.py --kind factor --stage all
python scripts/build_generated_certificate.py --kind trace --stage all
python scripts/build_generated_certificate.py --kind pratt --module-prefix Erdos848.GeneratedFiveMillionPrattCoverage --stage all
python scripts/build_generated_certificate.py --kind factor --module-prefix Erdos848.GeneratedFiveMillionFactorCoverage --stage all
python scripts/build_generated_certificate.py --kind trace --module-prefix Erdos848.GeneratedFiveMillionPrefixTrace --stage all
cd lean4
python ../scripts/run_lean_guarded.py Erdos848/MainTheoremTheoremMap.lean
python ../scripts/verify_axioms.py
```

Do not use a full-library `lake build` for the generated payload.  In Lake 5,
even selecting a module's `:olean` facet can materialize the imported
`leanArts` jobs, exposing thousands of leaves and producing C/IR files larger
than the OLean closure.  The controlled builder instead invokes Lean directly,
atomically installs only successful OLeans, validates prerequisite freshness,
and skips only leaves whose recorded result is `passed` and whose OLean still
exists.  Any source, toolchain, or manifest change invalidates the relevant
resume records; a changed input signature requires a topological `--stage all`
rebuild.

The safe default is one compiler process, with a 4 GiB hard memory ceiling and
per-leaf timeout; single-threaded top-level certificate assemblies have a
separate 8 GiB ceiling because they load the complete transitive OLean
environment.  `--max-active-leaves` is a global resource ceiling across a
single builder, while a repository-wide lock prevents separate certificate
families from multiplying that limit.  Progress and multi-megabyte status
snapshots are throttled instead of being emitted after every leaf.  On entry,
the builder removes generated C/IR/ILEAN artifacts and orphaned archived build
namespaces; these are never read by kernel checking and direct-OLean rebuilds
do not recreate them.  Increase concurrency or memory only after measuring the
working set of the relevant generated layer.

Standalone semantic assemblies use `scripts/run_lean_guarded.py` rather than
an unbounded direct Lean invocation.  The runner serializes compiles inside
this repository, checks and reaps exact-repository Lean leftovers before and
after the run, scans every two seconds for an unguarded or detached Lean process
targeting the exact public repository (by command path or working directory)
and reaps it immediately, places the complete process tree in a kill-on-close
Windows job, and enforces default 6 GiB aggregate RSS and twenty-minute
wall-clock limits.  Before scanning imports or spawning Lean it rejects
insufficient free-memory headroom.  Iterative runs reject changed direct local
imports; publication rebuilds can add `--strict-import-preflight` to audit the
complete transitive local source/OLean closure.  A successful compile installs
its OLean by atomic replacement; a failed compile never damages the last good
artifact.  PRE/POST cleanup also removes only PID-tagged temporary OLeans whose
creator is dead and whose grace period has elapsed, while leaving live and
unrelated work untouched.  Both resource limits are explicit command-line options; a memory
breach exits `137` and a timeout exits `124` only after the process tree has
been reaped.

Every audited endpoint uses only the allowed standard set
`[propext, Classical.choice, Quot.sound]`; the structural modular-arithmetic
checker needs the strict subset `[propext, Quot.sound]`. There is no project
axiom, `sorry`, `admit`, `native_decide`, or unsafe proof escape in the
publication closure.

The toolchain and Mathlib revision are pinned. Use `lake exe cache get` with
the committed manifest; do not run `lake update` when reproducing the release.

## Provenance and licensing

The asymptotic Lean source is derived from Raymond Jung's `erdos-banger`
repository at commit `48e9c1aeb13a6e075d78ecf42dc1f2839d5ff071`; see
`NOTICE.md`. Lean source, scripts, metadata, and repository documentation are
Apache-2.0. The manuscript source and PDF are CC BY 4.0. See `LICENSE.md`.
