# Erdos848 -- orphan report (W1)

Orphans are files that EXIST but are NOT wired into the chain.
For each orphan, the user should either:
1. Wire it in (add an import from an on-chain file).
2. Quarantine it (add to the host project's `config.quarantine`).
3. Delete it.


* loaded-but-orphan: **0**
* on-disk-but-unloaded: **3**


## Loaded-but-orphan (the env has them, no closure)

(none)

## On-disk-but-unloaded (file exists, never imported)

- `Erdos848.lean`
- `Erdos848/Scripts/CheckEntry.lean`
- `Erdos848/Scripts/StatusEntry.lean`
