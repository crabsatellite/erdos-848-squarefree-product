import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0230
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0351 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 351)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0351

theorem periodCandidateSetSpec0351 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      351 30030 packedWheelOffsets
      0 5760 1877
      periodCandidates0351 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 351)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0351

theorem period0351_primeCounting_candidate_step :
    Nat.primeCounting (351 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (351 * 30030 - 1) + 1877 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 351)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0351
    periodCandidateSetSpec0351
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0351_primeCounting_step :
    Nat.primeCounting (351 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (351 * 30030 - 1) + 2020 := by
  exact period0351_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1877 ≤ 2020)
      (Nat.primeCounting (351 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
