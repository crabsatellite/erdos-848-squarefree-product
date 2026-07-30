import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0032
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0033
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0034
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0035
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0036
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0037
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0038
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0039
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0040
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0041
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0042
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0043
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0044
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0045
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0046
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0047
import Erdos848.GeneratedHybridPaperRootCoverage.Block3Data

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem block3MaskBatchCertificate0032
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0032) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0032 hp
  by_cases hp331 : p = 331
  · subst p
    simpa [block3SemanticBatchWords0032, block3QrMaskWords] using hlocal
  by_cases hp337 : p = 337
  · subst p
    simpa [block3SemanticBatchWords0032, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0032, semanticMaskPrimeGroupB3G0064, semanticMaskPrimeGroupB3G0065, hp331, hp337] at hp

theorem block3MaskBatchCertificate0033
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0033) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0033 hp
  by_cases hp347 : p = 347
  · subst p
    simpa [block3SemanticBatchWords0033, block3QrMaskWords] using hlocal
  by_cases hp349 : p = 349
  · subst p
    simpa [block3SemanticBatchWords0033, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0033, semanticMaskPrimeGroupB3G0066, semanticMaskPrimeGroupB3G0067, hp347, hp349] at hp

theorem block3MaskBatchCertificate0034
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0034) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0034 hp
  by_cases hp353 : p = 353
  · subst p
    simpa [block3SemanticBatchWords0034, block3QrMaskWords] using hlocal
  by_cases hp359 : p = 359
  · subst p
    simpa [block3SemanticBatchWords0034, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0034, semanticMaskPrimeGroupB3G0068, semanticMaskPrimeGroupB3G0069, hp353, hp359] at hp

theorem block3MaskBatchCertificate0035
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0035) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0035 hp
  by_cases hp367 : p = 367
  · subst p
    simpa [block3SemanticBatchWords0035, block3QrMaskWords] using hlocal
  by_cases hp373 : p = 373
  · subst p
    simpa [block3SemanticBatchWords0035, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0035, semanticMaskPrimeGroupB3G0070, semanticMaskPrimeGroupB3G0071, hp367, hp373] at hp

theorem block3MaskBatchCertificate0036
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0036) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0036 hp
  by_cases hp379 : p = 379
  · subst p
    simpa [block3SemanticBatchWords0036, block3QrMaskWords] using hlocal
  by_cases hp383 : p = 383
  · subst p
    simpa [block3SemanticBatchWords0036, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0036, semanticMaskPrimeGroupB3G0072, semanticMaskPrimeGroupB3G0073, hp379, hp383] at hp

theorem block3MaskBatchCertificate0037
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0037) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0037 hp
  by_cases hp389 : p = 389
  · subst p
    simpa [block3SemanticBatchWords0037, block3QrMaskWords] using hlocal
  by_cases hp397 : p = 397
  · subst p
    simpa [block3SemanticBatchWords0037, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0037, semanticMaskPrimeGroupB3G0074, semanticMaskPrimeGroupB3G0075, hp389, hp397] at hp

theorem block3MaskBatchCertificate0038
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0038) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0038 hp
  by_cases hp401 : p = 401
  · subst p
    simpa [block3SemanticBatchWords0038, block3QrMaskWords] using hlocal
  by_cases hp409 : p = 409
  · subst p
    simpa [block3SemanticBatchWords0038, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0038, semanticMaskPrimeGroupB3G0076, semanticMaskPrimeGroupB3G0077, hp401, hp409] at hp

theorem block3MaskBatchCertificate0039
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0039) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0039 hp
  by_cases hp419 : p = 419
  · subst p
    simpa [block3SemanticBatchWords0039, block3QrMaskWords] using hlocal
  by_cases hp421 : p = 421
  · subst p
    simpa [block3SemanticBatchWords0039, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0039, semanticMaskPrimeGroupB3G0078, semanticMaskPrimeGroupB3G0079, hp419, hp421] at hp

theorem block3MaskBatchCertificate0040
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0040) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0040 hp
  by_cases hp431 : p = 431
  · subst p
    simpa [block3SemanticBatchWords0040, block3QrMaskWords] using hlocal
  by_cases hp433 : p = 433
  · subst p
    simpa [block3SemanticBatchWords0040, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0040, semanticMaskPrimeGroupB3G0080, semanticMaskPrimeGroupB3G0081, hp431, hp433] at hp

theorem block3MaskBatchCertificate0041
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0041) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0041 hp
  by_cases hp439 : p = 439
  · subst p
    simpa [block3SemanticBatchWords0041, block3QrMaskWords] using hlocal
  by_cases hp443 : p = 443
  · subst p
    simpa [block3SemanticBatchWords0041, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0041, semanticMaskPrimeGroupB3G0082, semanticMaskPrimeGroupB3G0083, hp439, hp443] at hp

theorem block3MaskBatchCertificate0042
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0042) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0042 hp
  by_cases hp449 : p = 449
  · subst p
    simpa [block3SemanticBatchWords0042, block3QrMaskWords] using hlocal
  by_cases hp457 : p = 457
  · subst p
    simpa [block3SemanticBatchWords0042, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0042, semanticMaskPrimeGroupB3G0084, semanticMaskPrimeGroupB3G0085, hp449, hp457] at hp

theorem block3MaskBatchCertificate0043
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0043) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0043 hp
  by_cases hp461 : p = 461
  · subst p
    simpa [block3SemanticBatchWords0043, block3QrMaskWords] using hlocal
  by_cases hp463 : p = 463
  · subst p
    simpa [block3SemanticBatchWords0043, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0043, semanticMaskPrimeGroupB3G0086, semanticMaskPrimeGroupB3G0087, hp461, hp463] at hp

theorem block3MaskBatchCertificate0044
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0044) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0044 hp
  by_cases hp467 : p = 467
  · subst p
    simpa [block3SemanticBatchWords0044, block3QrMaskWords] using hlocal
  by_cases hp479 : p = 479
  · subst p
    simpa [block3SemanticBatchWords0044, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0044, semanticMaskPrimeGroupB3G0088, semanticMaskPrimeGroupB3G0089, hp467, hp479] at hp

theorem block3MaskBatchCertificate0045
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0045) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0045 hp
  by_cases hp487 : p = 487
  · subst p
    simpa [block3SemanticBatchWords0045, block3QrMaskWords] using hlocal
  by_cases hp491 : p = 491
  · subst p
    simpa [block3SemanticBatchWords0045, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0045, semanticMaskPrimeGroupB3G0090, semanticMaskPrimeGroupB3G0091, hp487, hp491] at hp

theorem block3MaskBatchCertificate0046
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0046) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0046 hp
  by_cases hp499 : p = 499
  · subst p
    simpa [block3SemanticBatchWords0046, block3QrMaskWords] using hlocal
  by_cases hp503 : p = 503
  · subst p
    simpa [block3SemanticBatchWords0046, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0046, semanticMaskPrimeGroupB3G0092, semanticMaskPrimeGroupB3G0093, hp499, hp503] at hp

theorem block3MaskBatchCertificate0047
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0047) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0047 hp
  by_cases hp509 : p = 509
  · subst p
    simpa [block3SemanticBatchWords0047, block3QrMaskWords] using hlocal
  by_cases hp521 : p = 521
  · subst p
    simpa [block3SemanticBatchWords0047, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0047, semanticMaskPrimeGroupB3G0094, semanticMaskPrimeGroupB3G0095, hp509, hp521] at hp

def block3SemanticChunkPrimes0002 : List Nat :=
    block3SemanticBatchPrimes0032 ++
    block3SemanticBatchPrimes0033 ++
    block3SemanticBatchPrimes0034 ++
    block3SemanticBatchPrimes0035 ++
    block3SemanticBatchPrimes0036 ++
    block3SemanticBatchPrimes0037 ++
    block3SemanticBatchPrimes0038 ++
    block3SemanticBatchPrimes0039 ++
    block3SemanticBatchPrimes0040 ++
    block3SemanticBatchPrimes0041 ++
    block3SemanticBatchPrimes0042 ++
    block3SemanticBatchPrimes0043 ++
    block3SemanticBatchPrimes0044 ++
    block3SemanticBatchPrimes0045 ++
    block3SemanticBatchPrimes0046 ++
    block3SemanticBatchPrimes0047

theorem block3MaskChunkCertificate0002
    {p : Nat} (hp : p ∈ block3SemanticChunkPrimes0002) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  simp only [block3SemanticChunkPrimes0002, List.mem_append] at hp
  exact match hp with
  | Or.inl hp =>
    match hp with
    | Or.inl hp =>
      match hp with
      | Or.inl hp =>
        match hp with
        | Or.inl hp =>
          match hp with
          | Or.inl hp =>
            match hp with
            | Or.inl hp =>
              match hp with
              | Or.inl hp =>
                match hp with
                | Or.inl hp =>
                  match hp with
                  | Or.inl hp =>
                    match hp with
                    | Or.inl hp =>
                      match hp with
                      | Or.inl hp =>
                        match hp with
                        | Or.inl hp =>
                          match hp with
                          | Or.inl hp =>
                            match hp with
                            | Or.inl hp =>
                              match hp with
                              | Or.inl hp =>
                                block3MaskBatchCertificate0032 hp
                              | Or.inr hp => block3MaskBatchCertificate0033 hp
                            | Or.inr hp => block3MaskBatchCertificate0034 hp
                          | Or.inr hp => block3MaskBatchCertificate0035 hp
                        | Or.inr hp => block3MaskBatchCertificate0036 hp
                      | Or.inr hp => block3MaskBatchCertificate0037 hp
                    | Or.inr hp => block3MaskBatchCertificate0038 hp
                  | Or.inr hp => block3MaskBatchCertificate0039 hp
                | Or.inr hp => block3MaskBatchCertificate0040 hp
              | Or.inr hp => block3MaskBatchCertificate0041 hp
            | Or.inr hp => block3MaskBatchCertificate0042 hp
          | Or.inr hp => block3MaskBatchCertificate0043 hp
        | Or.inr hp => block3MaskBatchCertificate0044 hp
      | Or.inr hp => block3MaskBatchCertificate0045 hp
    | Or.inr hp => block3MaskBatchCertificate0046 hp
  | Or.inr hp => block3MaskBatchCertificate0047 hp

end Erdos848.GeneratedHybridPaperRootCoverage
