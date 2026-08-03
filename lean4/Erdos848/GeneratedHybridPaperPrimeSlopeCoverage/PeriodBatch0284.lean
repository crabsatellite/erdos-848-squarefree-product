import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0284
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0405 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 405)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1821)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0405

theorem periodCandidateSetSpec0405 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      405 30030 packedWheelOffsets
      0 5760 1821
      periodCandidates0405 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 405)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1821)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0405

theorem period0405_primeCounting_candidate_step :
    Nat.primeCounting (405 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (405 * 30030 - 1) + 1821 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 405)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1821)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0405
    periodCandidateSetSpec0405
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0405_primeCounting_step :
    Nat.primeCounting (405 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (405 * 30030 - 1) + 2020 := by
  exact period0405_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1821 ≤ 2020)
      (Nat.primeCounting (405 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
