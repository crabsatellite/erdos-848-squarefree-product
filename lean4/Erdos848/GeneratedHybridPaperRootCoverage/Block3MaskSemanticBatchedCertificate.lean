import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticChunk0000
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticChunk0001
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticChunk0002
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticChunk0003
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticChunk0004
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticChunk0005
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticChunk0006

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes : List Nat :=
    block3SemanticChunkPrimes0000 ++
    block3SemanticChunkPrimes0001 ++
    block3SemanticChunkPrimes0002 ++
    block3SemanticChunkPrimes0003 ++
    block3SemanticChunkPrimes0004 ++
    block3SemanticChunkPrimes0005 ++
    block3SemanticChunkPrimes0006

theorem block3SemanticBatchPrimes_eq_maskPrimes :
    block3SemanticBatchPrimes = maskPrimes := by
  decide

theorem block3QrMaskWords_batched_certificate
    {p : Nat} (hp : p ∈ maskPrimes) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  rw [← block3SemanticBatchPrimes_eq_maskPrimes] at hp
  simp only [block3SemanticBatchPrimes, List.mem_append] at hp
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
              block3MaskChunkCertificate0000 hp
            | Or.inr hp => block3MaskChunkCertificate0001 hp
          | Or.inr hp => block3MaskChunkCertificate0002 hp
        | Or.inr hp => block3MaskChunkCertificate0003 hp
      | Or.inr hp => block3MaskChunkCertificate0004 hp
    | Or.inr hp => block3MaskChunkCertificate0005 hp
  | Or.inr hp => block3MaskChunkCertificate0006 hp

end Erdos848.GeneratedHybridPaperRootCoverage
