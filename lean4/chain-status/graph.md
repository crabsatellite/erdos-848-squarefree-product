# Erdos848 -- chain DAG (Mermaid)

Source nodes = kernel axioms (squares).  Sink nodes = endpoints
(hexagons).  Cuts = whitelisted open axioms (diamonds).  Drift
axioms = unwhitelisted axioms in the closure (highlighted).


```mermaid
graph TD
  classDef kernel fill:#eef,stroke:#557
  classDef cut fill:#ffd,stroke:#a80
  classDef drift fill:#fdd,stroke:#a00,stroke-width:3px
  classDef endpoint fill:#dfd,stroke:#080
  propext{{ "propext" }}:::cut
  Erdos848_finiteOffsetMiddleCompressionEighteenTypedCreditSelfCanonicalTargetUniformDirectInjectiveSumCodeCut{{ "finiteOffsetMiddleCompressionEighteenTypedCreditSelfCanonicalTargetUniformDirectInjectiveSumCodeCut" }}:::cut
  Classical_choice{{ "choice" }}:::cut
  Quot_sound{{ "sound" }}:::cut
  Erdos848_erdos848_main>"erdos848_main"]:::endpoint
  Erdos848_erdos848_main --> Classical_choice
  Erdos848_erdos848_main --> Erdos848_finiteOffsetMiddleCompressionEighteenTypedCreditSelfCanonicalTargetUniformDirectInjectiveSumCodeCut
  Erdos848_erdos848_main --> Quot_sound
  Erdos848_erdos848_main --> propext
```


## Route Overlay (Generated)

The first graph is the endpoint/axiom trust DAG.  This overlay is generated from `researchChains` and `researchGaps`; use it to choose the next proof attack.  When `primaryGapId` and `replacementRouteId` are configured, the replacement edge is drawn explicitly and priority labels come from `gapPriority`.

```mermaid
graph TD
  classDef routeMain fill:#dfd,stroke:#080,stroke-width:2px
  classDef routeActive fill:#e7f0ff,stroke:#246,stroke-width:2px
  classDef routeSupport fill:#eef,stroke:#557
  classDef routeDead fill:#fdd,stroke:#a00,stroke-width:2px
  classDef gapOpen fill:#ffd,stroke:#a80,stroke-width:2px
  classDef gapClosed fill:#eee,stroke:#777
  classDef gapLegacy fill:#eee,stroke:#777,stroke-dasharray:3 3
  classDef gapDead fill:#fdd,stroke:#a00,stroke-dasharray:4 2
  chain_main_full_close["chain:main-full-close\nopen"]:::routeMain
  chain_hall_expansion_compression["chain:hall-expansion-compression\nactive"]:::routeActive
  chain_residue_certificate["chain:residue-certificate\nclosed-local"]:::routeSupport
  chain_finite_search_only["chain:finite-search-only\ndead"]:::routeDead
  gap_G_hall_expansion_global{{"gap:G-hall-expansion-global\nclosed-local"}}:::gapClosed
  gap_G_candidate_p5_sharpness{{"gap:G-candidate-p5-sharpness\nclosed-local"}}:::gapClosed
  gap_G_squarefree_ap_hall_expansion{{"gap:G-squarefree-ap-hall-expansion\nopen"}}:::gapOpen
  gap_G_rough_square_divisor_unpacking{{"gap:G-rough-square-divisor-unpacking\nclosed-local"}}:::gapClosed
  gap_D_finite_search_only{{"gap:D-finite-search-only\ndead"}}:::gapDead
  chain_main_full_close -->|P2| gap_G_hall_expansion_global
  chain_main_full_close -->|P3| gap_G_candidate_p5_sharpness
  chain_main_full_close -->|P1| gap_G_squarefree_ap_hall_expansion
  chain_main_full_close -->|P4| gap_G_rough_square_divisor_unpacking
  chain_residue_certificate --> chain_hall_expansion_compression
  gap_G_squarefree_ap_hall_expansion -->|replacement route| chain_hall_expansion_compression
  chain_hall_expansion_compression -->|P4| gap_G_rough_square_divisor_unpacking
  chain_residue_certificate -->|P3| gap_G_candidate_p5_sharpness
  chain_finite_search_only -->|P5| gap_D_finite_search_only
```
