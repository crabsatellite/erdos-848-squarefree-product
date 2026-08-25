# Erdős Problem 848: a kernel-checked proof

This repository is the clean public proof package for Erdős Problem 848.  It
contains the audited manuscript and exactly the transitive Lean source closure
required by the publication entrypoints.  Research logs, probes, abandoned
proof routes, generators, caches, and unrelated Lean modules are excluded.

## Result

For every integer `N >= 1` and every `A` contained in `[1, N]`, if `ab + 1`
is nonsquarefree for all `a, b` in `A`, then
`|A| <= |{n <= N : n = 7 (mod 25)}|`.  Equality is attained by the residue
class `7 (mod 25)`.  The unconditional Lean endpoint is:

`Erdos848.PaperGeneratedCertificateProvider.all_N`

The paper and machine proof are linked through `paper/theorem-map.json`,
`\leanname{...}` annotations in the TeX source, the trust-zero theorem map,
the axiom audit, and `PUBLICATION_MANIFEST.json`.

## Prior work and attribution

Erdős Problem 848 is a problem of Paul Erdős and András Sárközy, recorded by
Erdős in [*Some of My Favourite Problems in Various Branches of
Combinatorics* (1992)](https://lematematiche.dmi.unict.it/index.php/lematematiche/article/view/587).
The exact all-`N` theorem in this repository builds on two preceding advances:

- [Mehtaab Sawhney (2025)](https://www.math.columbia.edu/~msawhney/Problem_848.pdf)
  proved that the `7 mod 25` construction is extremal for all sufficiently
  large `N` and established a stability statement identifying the two
  candidate extremal residue classes.
- [Nat Sothanaphan (2026)](https://drive.google.com/file/d/1ujhm4_WYpgRV_rd1rJXIfHyvx16COEKe/view)
  made the asymptotic inputs explicit and proved the same extremal bound for
  `N >= 2.64 * 10^17`.

This repository closes the remaining range and proves the exact statement for
every `N >= 1`, together with the kernel-checked certificate and replay stack.
Its claim is this exact all-`N` closure of the currently stated problem, not
sole authorship of the earlier asymptotic or explicit-threshold results.  Full
bibliographic data and pinned reference evidence are in `paper/references.bib`
and `paper/reference-evidence/`.

The retained Lean formalization of Sawhney's asymptotic argument comes from
Raymond Jung and contributors to
[`erdos-banger`](https://github.com/The-Obstacle-Is-The-Way/erdos-banger),
without mathematical changes; see `NOTICE.md` for the exact source commit and
license.

## Contents

- `paper/erdos_848_kernel_checked_exact_extremal_bound.tex`: manuscript source.
- `paper/Li_Erdos_848_Kernel_Checked_Exact_Extremal_Bound_2026.pdf`: audited PDF.
- `paper/theorem-map.json`: paper-label to Lean-declaration map.
- `paper/lean-proof-components.json`: exhaustive numbered-result to Lean-module
  map.
- `paper/numeric-claims.json`: manuscript/Lean numeric bindings.
- `paper/math-implementation-map.json`: proof-step to implementation-declaration
  bindings.
- `paper/reference-evidence/`: cached citation evidence and exact reference
  audit manifest.
- `certificate-pipeline.json`: certificate-family build and replay record.
- `lean4/`: the exact 30,638-module publication source closure.
- `scripts/verify_public_repository.py`: public source/claim/hash gate.
- `scripts/build_generated_certificate.py`: bounded resumable OLean builder.
- `scripts/install_release_cache.py`: hash-bound release-cache installer.
- `scripts/refresh_proof_contract.py`: atomic manuscript-hash refresher and
  drift check.
- `scripts/run_kernel_gates.py`: read-only trust-zero theorem and axiom gate.
- `scripts/verify_four_range_paper_arithmetic.py`: exact rational check of the
  four range budgets printed in the manuscript.

## Verification

Use the pinned manifest directly; do not run `lake update`, and do not use an
unbounded `lake build` for this generated closure.

```powershell
python -B scripts/verify_public_repository.py
python -B scripts/verify_paper_math_implementation.py
python -B scripts/verify_paper_lean_correspondence.py
python -B scripts/verify_paper_lean_numbers.py
python -B scripts/verify_reference_evidence.py --require-cited-coverage --require-entry-checks
python -B scripts/verify_four_range_paper_arithmetic.py
python -B scripts/build_generated_certificate.py --kind generic --module-prefix Erdos848 --generic-target Erdos848.PaperGeneratedCertificateProvider --workers 2 --max-active-leaves 2 --max-memory-mib 15360 --final-max-memory-mib 32768 --core-max-memory-mib 32768 --leaf-timeout-seconds 1800 --final-timeout-seconds 7200 --core-timeout-seconds 3600 --preflight-leaves 0 --stage all
python -B scripts/run_kernel_gates.py --memory-mib 32768
```

The precompiled cache is bound exactly to tag `v1.0.5-kernel`, commit
`bb8e1b10b0066639ee3440ba983c3f9774667d42`.  Check out that tag before using
the cache; a later documentation or manuscript commit will intentionally fail
the installer's source-binding check.  The `v1.0.5-kernel` GitHub Release
provides the 30,638 project OLean files as sub-2-GiB ZIP shards.
Download every cache asset into one directory, then run:

```powershell
python -B scripts/install_release_cache.py --asset-dir <download-directory> --prepare-dependencies --kernel --memory-mib 32768
```

The same bound source tree is archived automatically by the GitHub--Zenodo
integration under code concept DOI `10.5281/zenodo.21750213`; no code archive
is uploaded to Zenodo by hand.

The installer verifies the checked-out public commit, pinned Lean toolchain,
publication manifest, every ZIP shard, and every decompressed OLean before the
trust-zero gate.  Dependency preparation uses `lake exe cache get` against the
pinned manifest.  Never run `lake update`.

The only accepted logical dependencies are `propext`, `Classical.choice`, and
`Quot.sound`.  There is no project axiom, `sorry`, `admit`, `native_decide`,
or compiler-trust escape in the publication closure.

This tree was materialized from internal source commit `d5fa9a5ff389f3dbaac62ee43ef7297d8db11fa7`.

## Licensing

See `LICENSE.md` and `NOTICE.md`.
