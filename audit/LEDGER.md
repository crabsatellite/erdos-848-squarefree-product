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
| R033 | Moved new-middle non-opposite-neighbor data into a canonical source-decoder anti-neighbor certificate; the only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiNeighborWitnessSumCodeCut`. |
| R034 | Reduced new-middle anti-neighbor data to proving the canonical opposite-neighbor source is not an opposite source; the only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSourceAntiOppositeWitnessSumCodeCut`. |
| R035 | Reduced reserve and new-middle negative credit data to carrier-only decoder facts; the only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditCarrierWitnessSumCodeCut`. |
| R036 | Specialized the carrier-only credit negatives to concrete anti-`18 mod 25` decoder facts; the only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditAntiEighteenWitnessSumCodeCut`. |
| R037 | Strengthened the new-middle credit branch so its squarefree-edge witness source is the current strict-middle vertex; the only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfAntiEighteenWitnessSumCodeCut`. |
| R038 | Re-anchored the endpoint surface to literal #848 (`7 mod 25` sharpness and exact `candidateCount 7` bound) and replaced the new-middle decoder anti-`18 mod 25` obligation by direct freshness from every opposite source; the only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfFreshWitnessSumCodeCut`. |
| R039 | Replaced pointwise new-middle freshness by the exact non-opposite-neighbor side of `IncrementalStrictMiddleNeighbor`; the only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfIncrementalWitnessSumCodeCut`. |
| R040 | Reused the existing `ActiveStrictMiddleNewCreditCode` in the new-middle branch and kept only the current-source edge as extra self data; the only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfTargetSumCodeCut`. |
| R041 | Replaced the explicit new-middle current-source edge field by a canonical strict-middle source-decoder hit; Lean now derives the self-target edge from `squarefreeNeighborSourceDecoder_spec`, and the only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetSumCodeCut`. |
| R042 | Removed the explicit strict-middle credit decoder from the live cut: the certificate now carries direct target-value injectivity, and Lean constructs the decoder used by the previous decoded matching surface. The only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetInjectiveSumCodeCut`. |
| R043 | Bypassed the anti-`18`/carrier/source/anti-image/decoded credit ladder: the live strict-middle credit side now carries original reserve `notImage`, canonical new-middle hits, and direct target-value injectivity, from which Lean builds `ActiveStrictMiddleCreditMatching`. The only project mathematical cut is now `Erdos848.finiteOffsetMiddleCompressionEighteenDecodedSquarefreeBoxedCreditSelfCanonicalTargetDirectInjectiveSumCodeCut`. |

For the current frontier, run `lake exe erdos848_status` and regenerate
`lean4/chain-status/`; `cuts.md` is the live cut ledger.
