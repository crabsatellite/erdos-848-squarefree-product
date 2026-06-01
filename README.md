# Erdos 848 Squarefree Product

Lean-first infrastructure for attacking Erdos Problem #848:

> Maximize `A subset {1,...,N}` subject to `ab + 1` never being squarefree
> for all `a,b in A`. The conjectural extremizers are the residue classes
> `7 mod 25` and `18 mod 25`.

## Source Of Truth

- `lean4/Erdos848/MainChain.lean`: route registry, whitelisted open cuts,
  frontier summaries, and audit declarations.
- `lean4/chain-status/`: generated ChainAudit reports. Do not hand-edit.
- `data/results/latest.json`: latest Python finite-shadow run.
- `audit/LEDGER.md`: compact manual round index only.

## Gates

```powershell
python build.py --mode smoke
python build.py --mode extended

cd lean4
lake build Erdos848.MainChain Erdos848.MainTheorem
lake exe erdos848_status
python ..\..\..\tools\chain-audit\ChainAudit\Postprocess\post_process.py --raw chain-status\raw.json --out chain-status
lake exe erdos848_check
```
