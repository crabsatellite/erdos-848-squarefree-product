import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0409
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0530 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 530)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1822)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0530

theorem periodCandidateSetSpec0530 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      530 30030 packedWheelOffsets
      0 5760 1822
      periodCandidates0530 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 530)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1822)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0530

theorem period0530_primeCounting_candidate_step :
    Nat.primeCounting (530 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (530 * 30030 - 1) + 1822 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 530)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1822)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0530
    periodCandidateSetSpec0530
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0530_primeCounting_step :
    Nat.primeCounting (530 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (530 * 30030 - 1) + 2020 := by
  exact period0530_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1822 ≤ 2020)
      (Nat.primeCounting (530 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
