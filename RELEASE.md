# Erdos 848 paper/kernel release contract

The final package is allowed to exist only when one exact manuscript version
and one exact Lean proof version describe the same all-\(N\) theorem.

## Single release contract

`proof-state.json` is the release state of truth.  Its
`proof_contract_version` is mirrored by:

- `paper/proof-contract.json`, which pins the TeX, PDF, and paper theorem map
  by SHA-256;
- `lean4/Erdos848/PublicationContract.lean`, which records the machine status
  and contract version inside the Lean source package.

The current proof state is:

```text
machine=closed
manuscript=complete
alignment=aligned
```

The audited manuscript is an all-\(N\) paper proof.  The Lean publication
root uses the same prefix, two low ranges, and four tail intervals.  The
parameterized mathematical boundary
`Erdos848.erdos848_all_N_of_certificates` and the unconditional endpoint
`Erdos848.PaperGeneratedCertificateProvider.all_N` are kernel-checked with no
project-specific axiom.  The latter specializes the former with generated
finite numerical certificates.

Run the fast contract check and its fail-closed tests from this directory:

```powershell
python -B scripts/check_proof_state.py
python -B scripts/test_publication_contract.py
```

Run the full source-closure/token audit when preparing a checkpoint:

```powershell
python -B scripts/check_proof_state.py --audit-sources
```

The full audit reads only Lean import headers while discovering the local
dependency closure, then uses one native token scan.  It does not repeatedly
read the multi-gigabyte generated certificate corpus.

## Release invariants

All of the following must hold together:

1. `PaperGeneratedCertificateProvider.numericalCertificates` is built entirely
   from kernel-checked generated modules.
2. `Erdos848.PaperGeneratedCertificateProvider.all_N` is defined by specializing
   `erdos848_all_N_of_certificates`, has no project-specific axioms, and is
   reachable from the publication theorem map and axiom audit.
3. The paper theorem map includes that exact theorem, and both
   `PublicationTheoremMap.lean` and `PublicationAxiomAudit.lean` mirror the
   paper map in the same order.
4. `paper/proof-contract.json` still contains the exact SHA-256 values of the
   reviewed all-\(N\) TeX, PDF, and theorem map.
5. `main_theorem_status`, `manuscript_claim_status`, and
   `manuscript_alignment_status` are `closed`, `complete`, and `aligned`; the
   alignment blocker list is empty.
6. The Git worktree is clean.

The kernel gate then runs the exact publication root, theorem map, and axiom
audit with `--trust=0`.  Only `propext`, `Classical.choice`, and `Quot.sound`
are allowed.

```powershell
python -B scripts/run_kernel_gates.py
```

## Deterministic source package

The release builder refuses open, unaligned, or dirty states.  It
packages only:

- the exact local Lean dependency closure of the three publication
  entrypoints;
- the pinned TeX, PDF, paper theorem map, and paper contract;
- the pinned Lean/Lake project files and the verification infrastructure.

It excludes `.olean`, caches, logs, temporary files, generator runtimes, and
all Lean sources outside the actual publication closure.

```powershell
python -B scripts/build_release_package.py
python -B scripts/verify_publication_package.py --fresh-lake-build
```

The ZIP has fixed timestamps, a clean Git commit, and a SHA-256 record for
every included source file.  Verification extracts it to a short temporary
directory, reruns the trusted local contract checker, optionally rebuilds
with the pinned toolchain, and always removes the temporary directory.
