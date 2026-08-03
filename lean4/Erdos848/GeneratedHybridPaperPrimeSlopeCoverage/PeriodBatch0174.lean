import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0174
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0295 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 295)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1883)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0295

theorem periodCandidateSetSpec0295 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      295 30030 packedWheelOffsets
      0 5760 1883
      periodCandidates0295 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 295)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1883)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0295

theorem period0295_primeCounting_candidate_step :
    Nat.primeCounting (295 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (295 * 30030 - 1) + 1883 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 295)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1883)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0295
    periodCandidateSetSpec0295
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0295_primeCounting_step :
    Nat.primeCounting (295 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (295 * 30030 - 1) + 2020 := by
  exact period0295_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1883 ≤ 2020)
      (Nat.primeCounting (295 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
