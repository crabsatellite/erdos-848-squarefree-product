import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0393
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0514 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 514)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1812)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0514

theorem periodCandidateSetSpec0514 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      514 30030 packedWheelOffsets
      0 5760 1812
      periodCandidates0514 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 514)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1812)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0514

theorem period0514_primeCounting_candidate_step :
    Nat.primeCounting (514 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (514 * 30030 - 1) + 1812 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 514)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1812)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0514
    periodCandidateSetSpec0514
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0514_primeCounting_step :
    Nat.primeCounting (514 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (514 * 30030 - 1) + 2020 := by
  exact period0514_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1812 ≤ 2020)
      (Nat.primeCounting (514 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
