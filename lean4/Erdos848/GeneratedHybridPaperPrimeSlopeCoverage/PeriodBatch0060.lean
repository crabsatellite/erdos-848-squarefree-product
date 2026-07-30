import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0060
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0181 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 181)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1962)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0181

theorem periodCandidateSetSpec0181 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      181 30030 packedWheelOffsets
      0 5760 1962
      periodCandidates0181 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 181)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1962)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0181

theorem period0181_primeCounting_candidate_step :
    Nat.primeCounting (181 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (181 * 30030 - 1) + 1962 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 181)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1962)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0181
    periodCandidateSetSpec0181
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0181_primeCounting_step :
    Nat.primeCounting (181 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (181 * 30030 - 1) + 2020 := by
  exact period0181_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1962 ≤ 2020)
      (Nat.primeCounting (181 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
