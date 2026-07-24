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

The current state is intentionally:

```text
machine=open
manuscript=partial
alignment=open
```

The existing manuscript is the kernel-checked asymptotic and
five-million-prefix note.  It is not an all-\(N\) manuscript and cannot be
packaged as a closed proof.

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

## Conditions for a final release

All of the following must change together in one reviewed commit:

1. `Erdos848.erdos848_all_N` is an unconditional theorem reachable from
   `Erdos848.PublicationRoot`.
2. The paper theorem map includes that exact theorem, and both
   `PublicationTheoremMap.lean` and `PublicationAxiomAudit.lean` mirror the
   paper map in the same order.
3. The all-\(N\) TeX and PDF replace the partial manuscript checkpoint, and
   `paper/proof-contract.json` contains their exact SHA-256 values.
4. `main_theorem_status`, `manuscript_claim_status`, and
   `manuscript_alignment_status` become `closed`, `complete`, and `aligned`;
   the alignment blocker list becomes empty.
5. The Git worktree is clean.

The kernel gate then runs the exact publication root, theorem map, and axiom
audit with `--trust=0`.  Only `propext`, `Classical.choice`, and `Quot.sound`
are allowed.

```powershell
python -B scripts/run_kernel_gates.py
```

## Deterministic source package

The release builder refuses open, partial, unaligned, or dirty states.  It
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
