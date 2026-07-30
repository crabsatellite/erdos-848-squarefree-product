import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0061
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0182 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 182)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1905)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0182

theorem periodCandidateSetSpec0182 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      182 30030 packedWheelOffsets
      0 5760 1905
      periodCandidates0182 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 182)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1905)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0182

theorem period0182_primeCounting_candidate_step :
    Nat.primeCounting (182 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (182 * 30030 - 1) + 1905 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 182)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1905)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0182
    periodCandidateSetSpec0182
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0182_primeCounting_step :
    Nat.primeCounting (182 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (182 * 30030 - 1) + 2020 := by
  exact period0182_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1905 ≤ 2020)
      (Nat.primeCounting (182 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
