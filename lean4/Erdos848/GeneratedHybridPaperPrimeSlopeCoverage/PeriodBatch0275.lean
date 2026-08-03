import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0275
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0396 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 396)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1840)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0396

theorem periodCandidateSetSpec0396 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      396 30030 packedWheelOffsets
      0 5760 1840
      periodCandidates0396 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 396)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1840)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0396

theorem period0396_primeCounting_candidate_step :
    Nat.primeCounting (396 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (396 * 30030 - 1) + 1840 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 396)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1840)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0396
    periodCandidateSetSpec0396
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0396_primeCounting_step :
    Nat.primeCounting (396 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (396 * 30030 - 1) + 2020 := by
  exact period0396_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1840 ≤ 2020)
      (Nat.primeCounting (396 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
