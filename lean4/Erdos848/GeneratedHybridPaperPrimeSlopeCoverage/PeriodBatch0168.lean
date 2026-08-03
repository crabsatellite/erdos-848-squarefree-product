import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0168
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0289 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 289)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1905)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0289

theorem periodCandidateSetSpec0289 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      289 30030 packedWheelOffsets
      0 5760 1905
      periodCandidates0289 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 289)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1905)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0289

theorem period0289_primeCounting_candidate_step :
    Nat.primeCounting (289 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (289 * 30030 - 1) + 1905 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 289)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1905)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0289
    periodCandidateSetSpec0289
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0289_primeCounting_step :
    Nat.primeCounting (289 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (289 * 30030 - 1) + 2020 := by
  exact period0289_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1905 ≤ 2020)
      (Nat.primeCounting (289 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
