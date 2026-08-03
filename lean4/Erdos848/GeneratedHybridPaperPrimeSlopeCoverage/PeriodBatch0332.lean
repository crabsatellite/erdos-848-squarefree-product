import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0332
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0453 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 453)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0453

theorem periodCandidateSetSpec0453 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      453 30030 packedWheelOffsets
      0 5760 1848
      periodCandidates0453 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 453)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0453

theorem period0453_primeCounting_candidate_step :
    Nat.primeCounting (453 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (453 * 30030 - 1) + 1848 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 453)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0453
    periodCandidateSetSpec0453
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0453_primeCounting_step :
    Nat.primeCounting (453 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (453 * 30030 - 1) + 2020 := by
  exact period0453_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1848 ≤ 2020)
      (Nat.primeCounting (453 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
