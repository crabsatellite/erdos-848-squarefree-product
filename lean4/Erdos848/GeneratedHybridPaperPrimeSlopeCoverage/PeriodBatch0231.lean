import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0231
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0352 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 352)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1845)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0352

theorem periodCandidateSetSpec0352 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      352 30030 packedWheelOffsets
      0 5760 1845
      periodCandidates0352 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 352)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1845)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0352

theorem period0352_primeCounting_candidate_step :
    Nat.primeCounting (352 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (352 * 30030 - 1) + 1845 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 352)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1845)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0352
    periodCandidateSetSpec0352
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0352_primeCounting_step :
    Nat.primeCounting (352 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (352 * 30030 - 1) + 2020 := by
  exact period0352_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1845 ≤ 2020)
      (Nat.primeCounting (352 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
