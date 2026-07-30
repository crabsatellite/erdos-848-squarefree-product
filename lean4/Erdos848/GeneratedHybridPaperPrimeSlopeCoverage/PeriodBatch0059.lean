import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0059
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0180 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 180)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1937)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0180

theorem periodCandidateSetSpec0180 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      180 30030 packedWheelOffsets
      0 5760 1937
      periodCandidates0180 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 180)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1937)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0180

theorem period0180_primeCounting_candidate_step :
    Nat.primeCounting (180 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (180 * 30030 - 1) + 1937 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 180)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1937)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0180
    periodCandidateSetSpec0180
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0180_primeCounting_step :
    Nat.primeCounting (180 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (180 * 30030 - 1) + 2020 := by
  exact period0180_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1937 ≤ 2020)
      (Nat.primeCounting (180 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
