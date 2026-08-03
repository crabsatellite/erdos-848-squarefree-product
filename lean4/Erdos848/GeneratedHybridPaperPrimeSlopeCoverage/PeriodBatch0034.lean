import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0034
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0155 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 155)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1964)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0155

theorem periodCandidateSetSpec0155 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      155 30030 packedWheelOffsets
      0 5760 1964
      periodCandidates0155 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 155)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1964)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0155

theorem period0155_primeCounting_candidate_step :
    Nat.primeCounting (155 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (155 * 30030 - 1) + 1964 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 155)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1964)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0155
    periodCandidateSetSpec0155
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0155_primeCounting_step :
    Nat.primeCounting (155 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (155 * 30030 - 1) + 2020 := by
  exact period0155_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1964 ≤ 2020)
      (Nat.primeCounting (155 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
