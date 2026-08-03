import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0366
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0487 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 487)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1796)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0487

theorem periodCandidateSetSpec0487 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      487 30030 packedWheelOffsets
      0 5760 1796
      periodCandidates0487 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 487)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1796)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0487

theorem period0487_primeCounting_candidate_step :
    Nat.primeCounting (487 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (487 * 30030 - 1) + 1796 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 487)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1796)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0487
    periodCandidateSetSpec0487
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0487_primeCounting_step :
    Nat.primeCounting (487 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (487 * 30030 - 1) + 2020 := by
  exact period0487_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1796 ≤ 2020)
      (Nat.primeCounting (487 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
