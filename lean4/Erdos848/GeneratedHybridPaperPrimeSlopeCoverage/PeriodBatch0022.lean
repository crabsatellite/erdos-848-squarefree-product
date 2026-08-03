import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0022
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0143 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 143)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1959)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0143

theorem periodCandidateSetSpec0143 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      143 30030 packedWheelOffsets
      0 5760 1959
      periodCandidates0143 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 143)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1959)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0143

theorem period0143_primeCounting_candidate_step :
    Nat.primeCounting (143 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (143 * 30030 - 1) + 1959 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 143)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1959)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0143
    periodCandidateSetSpec0143
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0143_primeCounting_step :
    Nat.primeCounting (143 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (143 * 30030 - 1) + 2020 := by
  exact period0143_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1959 ≤ 2020)
      (Nat.primeCounting (143 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
