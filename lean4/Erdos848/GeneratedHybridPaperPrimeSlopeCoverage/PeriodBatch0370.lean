import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0370
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0491 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 491)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1857)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0491

theorem periodCandidateSetSpec0491 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      491 30030 packedWheelOffsets
      0 5760 1857
      periodCandidates0491 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 491)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1857)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0491

theorem period0491_primeCounting_candidate_step :
    Nat.primeCounting (491 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (491 * 30030 - 1) + 1857 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 491)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1857)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0491
    periodCandidateSetSpec0491
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0491_primeCounting_step :
    Nat.primeCounting (491 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (491 * 30030 - 1) + 2020 := by
  exact period0491_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1857 ≤ 2020)
      (Nat.primeCounting (491 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
