# Erdos848 Audit Ledger

This is the hand-written round index for #848.  The generated truth surface
remains `lean4/chain-status/`; update Lean/ChainAudit first, regenerate those
reports, then record only durable round movement here.

| round | file | durable movement |
|-------|------|------------------|
| R001 | `R001_infra_bootstrap.md` | bootstrapped the #848 workspace using #327/#727 shape and ChainAudit status entrypoints |
| R002-R018 | `R002_hall_assembly_close.md` | closed residue, rough-square, Hall assembly, partition/capacity bridges, matching-image count, active credit finite checker, global opposite matching restriction bridge, and global-relative active credit cut |
| R019 | `R019_finite_offset_split_credit.md` | compressed the two global cuts into one finite-offset split-credit cut and recorded the seven-offset matching shadow |
| R020 | `R020_finite_offset_split_capacity.md` | replaced the live split-credit cut with a count-level split-capacity cut and proved the incremental-capacity bridge in Lean |
| R021 | `R021_finite_offset_partitioned_capacity.md` | replaced the live split-capacity cut with direct partitioned capacity and proved the reverse union-to-incremental bridge |
| R022 | `R022_direct_partitioned_capacity.md` | removed finite-offset matching from the endpoint cut and made direct partitioned capacity the only live mathematical cut |
| R023 | `R023_middle_compressed_capacity.md` | proved the Lean bridge from finite-offset middle-compressed split capacity to direct partitioned capacity and made that structured certificate the live cut |
| R024 | `R024_offset_band_core.md` | proved the seven-offset value-band arithmetic in Lean and removed the band inequalities from the live middle-compression axiom |

## Current Frontier

Generated `lean4/chain-status/route-index.md` reports one mathematical cut:

- `Erdos848.finiteOffsetMiddleCompressionCoreCut`

The active replacement route is `chain:hall-expansion-compression`, with
primary gap `G-squarefree-ap-hall-expansion`.  The current certificate shape is
finite-offset middle-compression core capacity for compatible outside cliques,
from which Lean derives the `86` value band and then direct partitioned
neighbor capacity.

## Local Gate

```powershell
python build.py --mode smoke
python build.py --mode extended
cd lean4
lake build Erdos848.MainChain Erdos848.MainTheorem
lake exe erdos848_status
python ..\..\..\tools\chain-audit\ChainAudit\Postprocess\post_process.py --raw chain-status\raw.json --out chain-status
lake exe erdos848_check
```
