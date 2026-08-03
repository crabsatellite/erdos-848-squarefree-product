import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0206
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0327 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 327)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1843)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0327

theorem periodCandidateSetSpec0327 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      327 30030 packedWheelOffsets
      0 5760 1843
      periodCandidates0327 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 327)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1843)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0327

theorem period0327_primeCounting_candidate_step :
    Nat.primeCounting (327 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (327 * 30030 - 1) + 1843 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 327)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1843)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0327
    periodCandidateSetSpec0327
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0327_primeCounting_step :
    Nat.primeCounting (327 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (327 * 30030 - 1) + 2020 := by
  exact period0327_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1843 ≤ 2020)
      (Nat.primeCounting (327 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
