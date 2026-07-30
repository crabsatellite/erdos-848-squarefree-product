import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0378
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0499 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 499)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1811)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0499

theorem periodCandidateSetSpec0499 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      499 30030 packedWheelOffsets
      0 5760 1811
      periodCandidates0499 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 499)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1811)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0499

theorem period0499_primeCounting_candidate_step :
    Nat.primeCounting (499 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (499 * 30030 - 1) + 1811 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 499)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1811)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0499
    periodCandidateSetSpec0499
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0499_primeCounting_step :
    Nat.primeCounting (499 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (499 * 30030 - 1) + 2020 := by
  exact period0499_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1811 ≤ 2020)
      (Nat.primeCounting (499 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
