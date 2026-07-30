# Erdos Problem 848: a kernel-checked proof

This repository is the clean public proof package for Erdos Problem 848.  It
contains the audited manuscript and exactly the transitive Lean source closure
required by the publication entrypoints.  Research logs, probes, abandoned
proof routes, generators, caches, and unrelated Lean modules are excluded.

## Result

For every natural number `N`, the first `N` positive integers contain a
7-element subset such that the product of any two distinct selected integers
is not squarefree.  The unconditional Lean endpoint is:

`Erdos848.PaperGeneratedCertificateProvider.all_N`

The paper and machine proof are linked through `paper/theorem-map.json`,
`\leanname{...}` annotations in the TeX source, the trust-zero theorem map,
the axiom audit, and `PUBLICATION_MANIFEST.json`.

## Contents

- `paper/erdos_848_kernel_asymptotic.tex`: manuscript source.
- `paper/Li_Erdos_848_Kernel_Asymptotic_2026.pdf`: audited 66-page PDF.
- `paper/theorem-map.json`: paper-label to Lean-declaration map.
- `lean4/`: the exact 30,572-module publication source closure.
- `scripts/verify_public_repository.py`: public source/claim/hash gate.
- `scripts/build_generated_certificate.py`: bounded resumable OLean builder.
- `scripts/install_release_cache.py`: hash-bound release-cache installer.
- `scripts/run_kernel_gates.py`: read-only trust-zero theorem and axiom gate.
- `scripts/verify_four_range_paper_arithmetic.py`: exact rational check of the
  four range budgets printed in the manuscript.

## Verification

Use the pinned manifest directly; do not run `lake update`, and do not use an
unbounded `lake build` for this generated closure.

```powershell
python -B scripts/verify_public_repository.py
python -B scripts/verify_four_range_paper_arithmetic.py
python -B scripts/build_generated_certificate.py --kind generic --module-prefix Erdos848 --generic-target Erdos848.PaperGeneratedCertificateProvider --workers 2 --max-active-leaves 2 --max-memory-mib 15360 --final-max-memory-mib 32768 --core-max-memory-mib 32768 --leaf-timeout-seconds 1800 --final-timeout-seconds 7200 --core-timeout-seconds 3600 --preflight-leaves 0 --stage all
python -B scripts/run_kernel_gates.py --memory-mib 32768
```

The matching GitHub Release provides the 30,572 project OLean files as
sub-2-GiB ZIP shards.  Download every cache asset into one directory, then run:

```powershell
python -B scripts/install_release_cache.py --asset-dir <download-directory> --prepare-dependencies --kernel --memory-mib 32768
```

The installer verifies the checked-out public commit, pinned Lean toolchain,
publication manifest, every ZIP shard, and every decompressed OLean before the
trust-zero gate.  Dependency preparation uses `lake exe cache get` against the
pinned manifest.  Never run `lake update`.

The only accepted logical dependencies are `propext`, `Classical.choice`, and
`Quot.sound`.  There is no project axiom, `sorry`, `admit`, `native_decide`,
or compiler-trust escape in the publication closure.

This tree was materialized from internal source commit `47d46477d5b41897600c7a7933703fe39c8becc9`.

## Licensing

See `LICENSE.md` and `NOTICE.md`.
