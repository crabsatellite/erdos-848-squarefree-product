import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0083
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0204 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 204)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1923)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0204

theorem periodCandidateSetSpec0204 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      204 30030 packedWheelOffsets
      0 5760 1923
      periodCandidates0204 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 204)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1923)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0204

theorem period0204_primeCounting_candidate_step :
    Nat.primeCounting (204 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (204 * 30030 - 1) + 1923 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 204)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1923)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0204
    periodCandidateSetSpec0204
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0204_primeCounting_step :
    Nat.primeCounting (204 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (204 * 30030 - 1) + 2020 := by
  exact period0204_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1923 ≤ 2020)
      (Nat.primeCounting (204 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
