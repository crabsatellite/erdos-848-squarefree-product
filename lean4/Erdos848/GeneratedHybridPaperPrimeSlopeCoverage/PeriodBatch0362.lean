import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0362
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0483 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 483)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1806)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0483

theorem periodCandidateSetSpec0483 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      483 30030 packedWheelOffsets
      0 5760 1806
      periodCandidates0483 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 483)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1806)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0483

theorem period0483_primeCounting_candidate_step :
    Nat.primeCounting (483 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (483 * 30030 - 1) + 1806 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 483)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1806)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0483
    periodCandidateSetSpec0483
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0483_primeCounting_step :
    Nat.primeCounting (483 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (483 * 30030 - 1) + 2020 := by
  exact period0483_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1806 ≤ 2020)
      (Nat.primeCounting (483 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
