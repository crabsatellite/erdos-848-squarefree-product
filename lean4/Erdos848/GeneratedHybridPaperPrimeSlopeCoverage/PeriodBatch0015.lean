import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0015
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0136 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 136)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1981)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0136

theorem periodCandidateSetSpec0136 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      136 30030 packedWheelOffsets
      0 5760 1981
      periodCandidates0136 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 136)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1981)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0136

theorem period0136_primeCounting_candidate_step :
    Nat.primeCounting (136 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (136 * 30030 - 1) + 1981 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 136)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1981)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0136
    periodCandidateSetSpec0136
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0136_primeCounting_step :
    Nat.primeCounting (136 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (136 * 30030 - 1) + 2020 := by
  exact period0136_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1981 ≤ 2020)
      (Nat.primeCounting (136 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
