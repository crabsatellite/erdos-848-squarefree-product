import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0167
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0288 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 288)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1888)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0288

theorem periodCandidateSetSpec0288 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      288 30030 packedWheelOffsets
      0 5760 1888
      periodCandidates0288 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 288)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1888)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0288

theorem period0288_primeCounting_candidate_step :
    Nat.primeCounting (288 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (288 * 30030 - 1) + 1888 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 288)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1888)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0288
    periodCandidateSetSpec0288
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0288_primeCounting_step :
    Nat.primeCounting (288 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (288 * 30030 - 1) + 2020 := by
  exact period0288_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1888 ≤ 2020)
      (Nat.primeCounting (288 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
