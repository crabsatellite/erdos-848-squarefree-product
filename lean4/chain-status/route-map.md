# Erdos848 -- route map
> AUTOGEN compatibility view. The source of truth is the Lean `ProjectConfig` serialized in `raw.json`; update Lean/audit config and rerun postprocess, not this file by hand.

Decision-first index for the next research round.  Treat this as the base map: the proof spine is the endpoint closure, route labels are generated automatically from the Lean import graph, file names, source text, and audit route taxonomy.  The goal is to show which proof routes are active, blocked, closed, or orphaned before a new agent starts editing.

* endpoints: **1**  *  open mathematical cuts: **2**  *  route taxonomy chains: **4**  *  route taxonomy gaps: **5**  *  debt components: **0**  *  branch heads: **0**

## Audit Truth Contract

This file is generated.  Future agents should update Lean files, audit rules, or the route taxonomy config, then regenerate the reports.  Do not maintain a separate hand-written route ledger.

## Next Agent Brief

Research attack target:
- Primary proof gap: `gap:G-squarefree-ap-hall-expansion` -- Replace finite Hall checks by two explicit typed seven-offset `18 mod 25` finite-offset middle-compression cuts for the endpoint-consumed `7 mod 25` progression: direct self-canonical active credit for the local repair-window mate, and nonempty-source repair-window local matching where repair-touched indices carry full edge data, untouched indices use period-six target coherence, and final-boundary boxedness plus gap checks are split between repair-touched and untouched period-six indices. Lean closes the empty-source case, transfers template-window active credit to the boxed source-count list-selector, and derives the endpoint Hall expansion through the decoded squarefree-boxed direct-credit route.
- Route owner(s): `chain:hall-expansion-compression`, `chain:main-full-close`
- Current constructive attack route: `chain:hall-expansion-compression`.  Use it to replace the primary cut; do not route around the configured gap ledger.
- Success criterion: A theorem of the shape `SquarefreeAPHallCertificate` is proved without `finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryLocalActiveCreditSelfCanonicalTargetDirectCut` and without `finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryNonemptyLocalMatchingCut`.

Kernel cut ledger.  These are audit-visible unresolved constants on the endpoint closure; use the configured route/gap above to decide the next research attack, not this flat list alone:
- `Erdos848.finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryLocalActiveCreditSelfCanonicalTargetDirectCut` in `Erdos848/Infrastructure/SquarefreeAP.lean`
- `Erdos848.finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryNonemptyLocalMatchingCut` in `Erdos848/Infrastructure/SquarefreeAP.lean`

## New Agent Attack Cards

Readiness verdict: **actionable**.  The main cut and replacement route are clear.  Start from the priority gap cards below.

Current replacement plan:
- Use the proved bipartite-neighborhood assembly as the exact replacement for the endpoint bound.
- Prove direct self-canonical active credit for the local repair-window mate and the split edge/boundary repair-window matching certificate.
- Use Lean to project matching, transfer active credit to the list-selector mate, then assemble the endpoint Hall expansion through the decoded squarefree-boxed direct-credit route.
- Final success criterion: A theorem of the shape `SquarefreeAPHallCertificate` is proved without `finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryLocalActiveCreditSelfCanonicalTargetDirectCut` and without `finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryNonemptyLocalMatchingCut`.

Do-not-attack inactive routes:
| gap | reason | evidence files |
|-----|--------|----------------|
| `gap:D-finite-search-only` | Exact checks for bounded `N` and local residue graphs are useful evidence, but they do not close the unbounded theorem unless promoted into a certificate plus analytic tail.  Do not treat brute force alone as the proof route. | - |

## Main Proof Spine

| endpoint | mathematical cuts | full axiom count |
|----------|-------------------|-----------------:|
| `Erdos848.erdos848_main` | `Erdos848.finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryLocalActiveCreditSelfCanonicalTargetDirectCut`, `Erdos848.finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryNonemptyLocalMatchingCut` | 5 |

Open mathematical cut ledger:
- `Erdos848.finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryLocalActiveCreditSelfCanonicalTargetDirectCut` in `Erdos848/Infrastructure/SquarefreeAP.lean`
- `Erdos848.finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryNonemptyLocalMatchingCut` in `Erdos848/Infrastructure/SquarefreeAP.lean`

## Route Taxonomy

| id | role | status | depends on | gaps | files |
|----|------|--------|------------|------|-------|
| `chain:main-full-close` | main | open | - | `gap:G-hall-expansion-global`, `gap:G-candidate-p5-sharpness`, `gap:G-squarefree-ap-hall-expansion`, `gap:G-rough-square-divisor-unpacking` | on-chain: 2 |
| `chain:hall-expansion-compression` | replacement | active | `chain:residue-certificate` | `gap:G-squarefree-ap-hall-expansion`, `gap:G-rough-square-divisor-unpacking` | cut: 1, on-chain: 2 |
| `chain:residue-certificate` | support | closed-local | - | `gap:G-candidate-p5-sharpness` | on-chain: 1 |
| `chain:finite-search-only` | dead | dead | - | `gap:D-finite-search-only` | (none) |

## Gap Ledger

| gap | status | route owners | declarations | files |
|-----|--------|--------------|--------------|-------|
| `gap:G-hall-expansion-global` | closed-local | `chain:main-full-close` | `Erdos848.hallExpansionCut`, `Erdos848.atMostCandidateBound_of_current_cuts`, `Erdos848.erdos848_main` | on-chain: 3 |
| `gap:G-candidate-p5-sharpness` | closed-local | `chain:main-full-close`, `chain:residue-certificate` | `Erdos848.squareDivides_five_mul_add_one_of_candidate_seven`, `Erdos848.squareDivides_five_mul_add_one_of_candidate_eighteen`, `Erdos848.not_squareDivides_five_mul_add_one_of_candidate_seven_eighteen`, +6 more | on-chain: 1 |
| `gap:G-squarefree-ap-hall-expansion` | open | `chain:hall-expansion-compression`, `chain:main-full-close` | `Erdos848.finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryLocalActiveCreditSelfCanonicalTargetDirectCut`, `Erdos848.GlobalFiniteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryLocalActiveCreditSelfCanonicalTargetDirectCertificate`, `Erdos848.finiteOffsetMiddleCompressionEighteenTypedMateSplitSourceIndexTemplateWindowRepairTouchedDefaultEdgeBoundaryNonemptyLocalMatchingCut`, +879 more | cut: 1 |
| `gap:G-rough-square-divisor-unpacking` | closed-local | `chain:hall-expansion-compression`, `chain:main-full-close` | `Erdos848.roughSquareDivisor`, `Erdos848.RoughSquareDivisorCertificate` | on-chain: 1 |
| `gap:D-finite-search-only` | dead | `chain:finite-search-only` | - | (none) |

## Automatic Route Labels

These labels are generated for debt files from imports, names, source text, and the audit route taxonomy.  They are the route map an agent should use before opening individual files.

(no automatic route labels)

## Branch Head State Summary

(no branch heads)

## Branch Work Queue

Branch heads are off-chain files that no other off-chain debt file imports.  Their closure follows real Lean imports downward.  This table is sorted by generated state, recency, and size so live, mixed, and blocked attempts are visible without opening the files first.

(no automatically labelled branch heads)

## Component Triage

Components are connected by actual Lean imports.  Large components should be split by strengthening automatic route rules, renaming ambiguous files, or quarantining failed tracks.

| component | state | files | bucket | automatic route labels | anchors |
|-----------|-------|------:|--------|------------------------|---------|

## Unowned Debt

Files with no automatic route label.  These are the safest next candidates for comment-only classification, naming cleanup, quarantine, or deletion after a compile check.

(none)

## Route Details

### `chain:main-full-close` -- Main #848 full close

Endpoint chain proving the exact #848 extremal bound and sharpness of the `7 mod 25` construction.  The `18 mod 25` residue class is retained only as support data inside the compression route.  The outer Hall compression is kernel-closed; the open endpoint input is the squarefree AP/Hall-neighborhood expansion.

Entry declarations:
- `Erdos848.erdos848_main`

Taxonomy files:
- `Erdos848/Basic.lean` -- on-chain
- `Erdos848/MainTheorem.lean` -- on-chain

### `chain:hall-expansion-compression` -- Hall expansion compression

Compress any admissible set outside the `7 mod 25` candidate class back into that class.  The finite counting assembly is kernel-closed; the live obligation is nonnegative Hall defect for every compatible outside clique.

Entry declarations:
- `Erdos848.hallExpansionCut`
- `Erdos848.atMostCandidateBound_of_current_cuts`

Taxonomy files:
- `Erdos848/Infrastructure/HallExpansion.lean` -- on-chain
- `Erdos848/Infrastructure/SquarefreeAP.lean` -- cut
- `Erdos848/Infrastructure/RoughSquareDivisors.lean` -- on-chain

### `chain:residue-certificate` -- Finite residue certificate chain

Kernel-local `5^2` residue algebra proves the literal `7 mod 25` sharpness construction and records the parallel `18 mod 25` support class plus cross-pair diagnostics.  It also proves the local `70 mod 169` obstruction used to explain the current active-credit middle deficit pattern.  The broader Python `25*13^2` evidence remains diagnostic support for designing the Hall route, but the endpoint no longer consumes it as an axiom.

Entry declarations:
- `Erdos848.squareDivides_five_mul_add_one_of_candidate_seven`
- `Erdos848.squareDivides_five_mul_add_one_of_candidate_eighteen`
- `Erdos848.not_squareDivides_five_mul_add_one_of_candidate_seven_eighteen`
- `Erdos848.not_squareDivides_five_mul_add_one_of_candidate_eighteen_seven`
- `Erdos848.squareDivides_thirteen_mul_add_one_of_mod169_seventy`
- `Erdos848.not_forbiddenSquarefreeEdge_of_mod169_seventy`
- `Erdos848.residueSecondLayer`
- `Erdos848.residueCandidateSevenSharp`
- `Erdos848.residueCandidateSharp`

Taxonomy files:
- `Erdos848/Infrastructure/ResidueCertificates.lean` -- on-chain

### `chain:finite-search-only` -- Finite search only

Bounded exact clique/Hall checks are useful diagnostics but cannot close #848 without a certificate format and unbounded analytic tail.
