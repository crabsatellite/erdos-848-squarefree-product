import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0017
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0138 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 138)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1980)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0138

theorem periodCandidateSetSpec0138 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      138 30030 packedWheelOffsets
      0 5760 1980
      periodCandidates0138 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 138)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1980)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0138

theorem period0138_primeCounting_candidate_step :
    Nat.primeCounting (138 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (138 * 30030 - 1) + 1980 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 138)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1980)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0138
    periodCandidateSetSpec0138
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0138_primeCounting_step :
    Nat.primeCounting (138 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (138 * 30030 - 1) + 2020 := by
  exact period0138_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1980 ≤ 2020)
      (Nat.primeCounting (138 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
