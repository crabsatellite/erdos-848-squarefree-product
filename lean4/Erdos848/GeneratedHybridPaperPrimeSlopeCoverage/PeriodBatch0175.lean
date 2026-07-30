import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0175
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0296 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 296)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1862)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0296

theorem periodCandidateSetSpec0296 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      296 30030 packedWheelOffsets
      0 5760 1862
      periodCandidates0296 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 296)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1862)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0296

theorem period0296_primeCounting_candidate_step :
    Nat.primeCounting (296 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (296 * 30030 - 1) + 1862 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 296)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1862)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0296
    periodCandidateSetSpec0296
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0296_primeCounting_step :
    Nat.primeCounting (296 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (296 * 30030 - 1) + 2020 := by
  exact period0296_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1862 ≤ 2020)
      (Nat.primeCounting (296 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
