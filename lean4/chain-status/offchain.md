# Erdos848 -- off-chain files

Files NOT transitively reached from any endpoint, grouped by
five-way classification:


* quarantine: **0** (explicit failed-route list)
* infra:      **1** (standalone tools, audit scripts)
* registered: **0** (configured research route/gap files, off endpoint closure)
* orphan:     **0** (loaded but unreachable - investigate)
* on-disk-unloaded: **3** (file exists but not imported by any chain)


## Quarantine (0)

(none)


## Infra (standalone) (1)

| file | decls | axioms |
|------|------:|-------:|
| `Erdos848/MainChain.lean` | 1 | 0 |

## Registered research routes/gaps (0)

(none)


## Orphan (warning - investigate) (0)

(none)


## On-disk-unloaded (3)

Files present in the source tree but NOT imported by the entry script.  Either wire them into the chain, mark them quarantine, or delete them.

- `Erdos848.lean`
- `Erdos848/Scripts/CheckEntry.lean`
- `Erdos848/Scripts/StatusEntry.lean`
