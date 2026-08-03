import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0248
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0369 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 369)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0369

theorem periodCandidateSetSpec0369 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      369 30030 packedWheelOffsets
      0 5760 1877
      periodCandidates0369 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 369)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0369

theorem period0369_primeCounting_candidate_step :
    Nat.primeCounting (369 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (369 * 30030 - 1) + 1877 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 369)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0369
    periodCandidateSetSpec0369
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0369_primeCounting_step :
    Nat.primeCounting (369 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (369 * 30030 - 1) + 2020 := by
  exact period0369_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1877 ≤ 2020)
      (Nat.primeCounting (369 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
