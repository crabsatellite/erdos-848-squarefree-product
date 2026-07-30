import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0257
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0378 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 378)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1832)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0378

theorem periodCandidateSetSpec0378 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      378 30030 packedWheelOffsets
      0 5760 1832
      periodCandidates0378 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 378)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1832)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0378

theorem period0378_primeCounting_candidate_step :
    Nat.primeCounting (378 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (378 * 30030 - 1) + 1832 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 378)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1832)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0378
    periodCandidateSetSpec0378
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0378_primeCounting_step :
    Nat.primeCounting (378 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (378 * 30030 - 1) + 2020 := by
  exact period0378_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1832 ≤ 2020)
      (Nat.primeCounting (378 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
