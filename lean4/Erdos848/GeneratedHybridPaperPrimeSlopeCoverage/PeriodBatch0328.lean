import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0328
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0449 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 449)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1819)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0449

theorem periodCandidateSetSpec0449 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      449 30030 packedWheelOffsets
      0 5760 1819
      periodCandidates0449 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 449)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1819)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0449

theorem period0449_primeCounting_candidate_step :
    Nat.primeCounting (449 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (449 * 30030 - 1) + 1819 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 449)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1819)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0449
    periodCandidateSetSpec0449
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0449_primeCounting_step :
    Nat.primeCounting (449 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (449 * 30030 - 1) + 2020 := by
  exact period0449_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1819 ≤ 2020)
      (Nat.primeCounting (449 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
