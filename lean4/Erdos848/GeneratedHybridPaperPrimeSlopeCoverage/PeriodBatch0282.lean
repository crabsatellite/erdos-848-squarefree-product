import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0282
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0403 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 403)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1846)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0403

theorem periodCandidateSetSpec0403 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      403 30030 packedWheelOffsets
      0 5760 1846
      periodCandidates0403 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 403)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1846)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0403

theorem period0403_primeCounting_candidate_step :
    Nat.primeCounting (403 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (403 * 30030 - 1) + 1846 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 403)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1846)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0403
    periodCandidateSetSpec0403
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0403_primeCounting_step :
    Nat.primeCounting (403 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (403 * 30030 - 1) + 2020 := by
  exact period0403_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1846 ≤ 2020)
      (Nat.primeCounting (403 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
