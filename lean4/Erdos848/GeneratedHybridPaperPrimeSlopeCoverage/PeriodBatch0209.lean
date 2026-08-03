import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0209
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0330 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 330)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1861)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0330

theorem periodCandidateSetSpec0330 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      330 30030 packedWheelOffsets
      0 5760 1861
      periodCandidates0330 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 330)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1861)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0330

theorem period0330_primeCounting_candidate_step :
    Nat.primeCounting (330 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (330 * 30030 - 1) + 1861 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 330)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1861)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0330
    periodCandidateSetSpec0330
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0330_primeCounting_step :
    Nat.primeCounting (330 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (330 * 30030 - 1) + 2020 := by
  exact period0330_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1861 ≤ 2020)
      (Nat.primeCounting (330 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
