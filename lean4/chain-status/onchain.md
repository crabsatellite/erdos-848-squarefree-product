# Erdos848 -- on-chain files

Files whose declarations are transitively reached from `config.endpoints` (and are not in the quarantine list).


* on-chain: **5**  *  cut: **1**  *  total reached: **6**

* closure constants: 2262  *  closure modules: 57


## On-chain files

| file | decls | on-chain decls (sample) |
|------|------:|--------------------------|
| `Erdos848/Basic.lean` | 15 | Squarefree, CandidateSevenSharp, candidateCount (+12 more) |
| `Erdos848/Infrastructure/HallExpansion.lean` | 2 | atMostCandidateBound_of_current_cuts, hallExpansionCut |
| `Erdos848/Infrastructure/ResidueCertificates.lean` | 10 | squareDivides_five_mul_add_one_of_candidate_eighteen, residueCandidateSharp, residueCandidateSevenSharp (+1 more) |
| `Erdos848/Infrastructure/RoughSquareDivisors.lean` | 2 | roughSquareDivisor, RoughSquareDivisorCertificate |
| `Erdos848/MainTheorem.lean` | 1 | erdos848_main |

## Cut files (on-chain + declares axiom)

| file | decls | axioms |
|------|------:|-------:|
| `Erdos848/Infrastructure/SquarefreeAP.lean` | 1535 | 2 |
