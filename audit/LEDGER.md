# Erdos848 Audit Ledger

This is the hand-written round index for #848.  The generated truth surface
remains `lean4/chain-status/`; update Lean/ChainAudit first, regenerate those
reports, then record only durable round movement here.

| round | file | durable movement |
|-------|------|------------------|
| R001 | `R001_infra_bootstrap.md` | bootstrapped the #848 workspace using #327/#727 shape and ChainAudit status entrypoints |
| R002-R016 | `R002_hall_assembly_close.md` | closed residue, rough-square, Hall assembly, partition/capacity bridges, matching-image count, and active credit finite checker |

## Current Frontier

Generated `lean4/chain-status/route-index.md` reports two mathematical cuts:

- `Erdos848.oppositeNearbyMatchingImageCut`
- `Erdos848.activeStrictMiddleCreditMatchingCut`

The active replacement route is `chain:hall-expansion-compression`, with
primary gap `G-squarefree-ap-hall-expansion`.  The current certificate shape is
a banded opposite matching image plus a strict-middle credit matching into the
unused opposite surplus or genuinely new middle neighbors.

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
