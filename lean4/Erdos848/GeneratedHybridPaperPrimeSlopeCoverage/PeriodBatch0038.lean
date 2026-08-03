import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0038
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0159 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 159)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1961)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0159

theorem periodCandidateSetSpec0159 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      159 30030 packedWheelOffsets
      0 5760 1961
      periodCandidates0159 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 159)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1961)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0159

theorem period0159_primeCounting_candidate_step :
    Nat.primeCounting (159 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (159 * 30030 - 1) + 1961 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 159)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1961)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0159
    periodCandidateSetSpec0159
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0159_primeCounting_step :
    Nat.primeCounting (159 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (159 * 30030 - 1) + 2020 := by
  exact period0159_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1961 ≤ 2020)
      (Nat.primeCounting (159 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
