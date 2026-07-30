import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0025
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0146 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 146)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1947)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0146

theorem periodCandidateSetSpec0146 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      146 30030 packedWheelOffsets
      0 5760 1947
      periodCandidates0146 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 146)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1947)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0146

theorem period0146_primeCounting_candidate_step :
    Nat.primeCounting (146 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (146 * 30030 - 1) + 1947 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 146)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1947)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0146
    periodCandidateSetSpec0146
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0146_primeCounting_step :
    Nat.primeCounting (146 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (146 * 30030 - 1) + 2020 := by
  exact period0146_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1947 ≤ 2020)
      (Nat.primeCounting (146 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
