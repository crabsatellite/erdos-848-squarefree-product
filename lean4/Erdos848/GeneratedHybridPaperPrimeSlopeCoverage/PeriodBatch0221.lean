import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0221
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0342 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 342)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1839)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0342

theorem periodCandidateSetSpec0342 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      342 30030 packedWheelOffsets
      0 5760 1839
      periodCandidates0342 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 342)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1839)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0342

theorem period0342_primeCounting_candidate_step :
    Nat.primeCounting (342 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (342 * 30030 - 1) + 1839 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 342)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1839)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0342
    periodCandidateSetSpec0342
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0342_primeCounting_step :
    Nat.primeCounting (342 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (342 * 30030 - 1) + 2020 := by
  exact period0342_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1839 ≤ 2020)
      (Nat.primeCounting (342 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
