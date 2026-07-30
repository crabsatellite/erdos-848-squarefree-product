import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0096
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0097
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0098
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0099
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0100
import Erdos848.GeneratedHybridPaperRootCoverage.Block3Data

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem block3MaskBatchCertificate0096
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0096) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0096 hp
  by_cases hp1187 : p = 1187
  · subst p
    simpa [block3SemanticBatchWords0096, block3QrMaskWords] using hlocal
  by_cases hp1193 : p = 1193
  · subst p
    simpa [block3SemanticBatchWords0096, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0096, semanticMaskPrimeGroupB3G0192, semanticMaskPrimeGroupB3G0193, hp1187, hp1193] at hp

theorem block3MaskBatchCertificate0097
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0097) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0097 hp
  by_cases hp1201 : p = 1201
  · subst p
    simpa [block3SemanticBatchWords0097, block3QrMaskWords] using hlocal
  by_cases hp1213 : p = 1213
  · subst p
    simpa [block3SemanticBatchWords0097, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0097, semanticMaskPrimeGroupB3G0194, semanticMaskPrimeGroupB3G0195, hp1201, hp1213] at hp

theorem block3MaskBatchCertificate0098
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0098) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0098 hp
  by_cases hp1217 : p = 1217
  · subst p
    simpa [block3SemanticBatchWords0098, block3QrMaskWords] using hlocal
  by_cases hp1223 : p = 1223
  · subst p
    simpa [block3SemanticBatchWords0098, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0098, semanticMaskPrimeGroupB3G0196, semanticMaskPrimeGroupB3G0197, hp1217, hp1223] at hp

theorem block3MaskBatchCertificate0099
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0099) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0099 hp
  by_cases hp1229 : p = 1229
  · subst p
    simpa [block3SemanticBatchWords0099, block3QrMaskWords] using hlocal
  by_cases hp1231 : p = 1231
  · subst p
    simpa [block3SemanticBatchWords0099, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0099, semanticMaskPrimeGroupB3G0198, semanticMaskPrimeGroupB3G0199, hp1229, hp1231] at hp

theorem block3MaskBatchCertificate0100
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0100) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0100 hp
  by_cases hp1237 : p = 1237
  · subst p
    simpa [block3SemanticBatchWords0100, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0100, semanticMaskPrimeGroupB3G0200, hp1237] at hp

def block3SemanticChunkPrimes0006 : List Nat :=
    block3SemanticBatchPrimes0096 ++
    block3SemanticBatchPrimes0097 ++
    block3SemanticBatchPrimes0098 ++
    block3SemanticBatchPrimes0099 ++
    block3SemanticBatchPrimes0100

theorem block3MaskChunkCertificate0006
    {p : Nat} (hp : p ∈ block3SemanticChunkPrimes0006) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  simp only [block3SemanticChunkPrimes0006, List.mem_append] at hp
  exact match hp with
  | Or.inl hp =>
    match hp with
    | Or.inl hp =>
      match hp with
      | Or.inl hp =>
        match hp with
        | Or.inl hp =>
          block3MaskBatchCertificate0096 hp
        | Or.inr hp => block3MaskBatchCertificate0097 hp
      | Or.inr hp => block3MaskBatchCertificate0098 hp
    | Or.inr hp => block3MaskBatchCertificate0099 hp
  | Or.inr hp => block3MaskBatchCertificate0100 hp

end Erdos848.GeneratedHybridPaperRootCoverage
