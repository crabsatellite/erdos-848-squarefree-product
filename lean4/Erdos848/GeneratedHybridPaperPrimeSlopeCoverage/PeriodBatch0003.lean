import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0003
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0124 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 124)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2013)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0124

theorem periodCandidateSetSpec0124 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      124 30030 packedWheelOffsets
      0 5760 2013
      periodCandidates0124 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 124)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2013)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0124

theorem period0124_primeCounting_candidate_step :
    Nat.primeCounting (124 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (124 * 30030 - 1) + 2013 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 124)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 2013)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0124
    periodCandidateSetSpec0124
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0124_primeCounting_step :
    Nat.primeCounting (124 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (124 * 30030 - 1) + 2020 := by
  exact period0124_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 2013 ≤ 2020)
      (Nat.primeCounting (124 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
