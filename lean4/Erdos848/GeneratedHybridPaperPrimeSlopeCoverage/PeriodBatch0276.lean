import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0276
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0397 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 397)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1871)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0397

theorem periodCandidateSetSpec0397 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      397 30030 packedWheelOffsets
      0 5760 1871
      periodCandidates0397 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 397)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1871)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0397

theorem period0397_primeCounting_candidate_step :
    Nat.primeCounting (397 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (397 * 30030 - 1) + 1871 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 397)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1871)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0397
    periodCandidateSetSpec0397
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0397_primeCounting_step :
    Nat.primeCounting (397 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (397 * 30030 - 1) + 2020 := by
  exact period0397_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1871 ≤ 2020)
      (Nat.primeCounting (397 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
