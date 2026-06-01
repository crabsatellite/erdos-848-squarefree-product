# Erdos848 Audit Ledger

This ledger is intentionally compact. The detailed route truth is generated
from `lean4/Erdos848/MainChain.lean` into `lean4/chain-status/`; keep that as
the source of truth and use this file only as a durable round index.

| round | durable movement |
|-------|------------------|
| R001-R018 | Bootstrapped the #848 workspace, closed the residue/Hall assembly layer, and routed the endpoint through ChainAudit. |
| R019-R023 | Compressed the live surface through split credit, split capacity, partitioned capacity, and middle-compressed capacity. |
| R024-R031 | Moved arithmetic, residue, decoder, typed-offset, boxed-target, and squarefree-edge data from the live cut into Lean code objects and bridges. |
| R032 | Moved reserve non-image data into a decoder-side anti-image witness-sum certificate; the only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiImageWitnessSumCodeCut`. |

For the current frontier, run `lake exe erdos848_status` and regenerate
`lean4/chain-status/`; `cuts.md` is the live cut ledger.
