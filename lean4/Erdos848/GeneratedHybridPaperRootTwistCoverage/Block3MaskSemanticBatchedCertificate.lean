import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticChunk0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticChunk0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticChunk0002
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticChunk0003
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticChunk0004
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticChunk0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticChunk0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticChunk0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticChunk0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticChunk0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes : List Nat :=
    block3TwistSemanticChunkPrimes0000 ++
    block3TwistSemanticChunkPrimes0001 ++
    block3TwistSemanticChunkPrimes0002 ++
    block3TwistSemanticChunkPrimes0003 ++
    block3TwistSemanticChunkPrimes0004 ++
    block3TwistSemanticChunkPrimes0005 ++
    block3TwistSemanticChunkPrimes0006 ++
    block3TwistSemanticChunkPrimes0007 ++
    block3TwistSemanticChunkPrimes0008 ++
    block3TwistSemanticChunkPrimes0009

theorem block3TwistSemanticBatchPrimes_eq_maskPrimes :
    block3TwistSemanticBatchPrimes = Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes := by
  decide

theorem block3TwistQrMaskWords_batched_certificate
    {p : Nat} (hp : p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  rw [← block3TwistSemanticBatchPrimes_eq_maskPrimes] at hp
  simp only [block3TwistSemanticBatchPrimes, List.mem_append] at hp
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
                    block3TwistMaskChunkCertificate0000 hp
                  | Or.inr hp => block3TwistMaskChunkCertificate0001 hp
                | Or.inr hp => block3TwistMaskChunkCertificate0002 hp
              | Or.inr hp => block3TwistMaskChunkCertificate0003 hp
            | Or.inr hp => block3TwistMaskChunkCertificate0004 hp
          | Or.inr hp => block3TwistMaskChunkCertificate0005 hp
        | Or.inr hp => block3TwistMaskChunkCertificate0006 hp
      | Or.inr hp => block3TwistMaskChunkCertificate0007 hp
    | Or.inr hp => block3TwistMaskChunkCertificate0008 hp
  | Or.inr hp => block3TwistMaskChunkCertificate0009 hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
