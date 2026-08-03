import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0251
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0372 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 372)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1882)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0372

theorem periodCandidateSetSpec0372 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      372 30030 packedWheelOffsets
      0 5760 1882
      periodCandidates0372 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 372)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1882)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0372

theorem period0372_primeCounting_candidate_step :
    Nat.primeCounting (372 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (372 * 30030 - 1) + 1882 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 372)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1882)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0372
    periodCandidateSetSpec0372
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0372_primeCounting_step :
    Nat.primeCounting (372 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (372 * 30030 - 1) + 2020 := by
  exact period0372_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1882 ≤ 2020)
      (Nat.primeCounting (372 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
