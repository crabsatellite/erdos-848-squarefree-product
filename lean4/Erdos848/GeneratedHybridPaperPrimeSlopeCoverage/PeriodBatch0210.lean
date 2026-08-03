import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0210
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0331 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 331)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1849)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0331

theorem periodCandidateSetSpec0331 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      331 30030 packedWheelOffsets
      0 5760 1849
      periodCandidates0331 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 331)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1849)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0331

theorem period0331_primeCounting_candidate_step :
    Nat.primeCounting (331 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (331 * 30030 - 1) + 1849 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 331)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1849)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0331
    periodCandidateSetSpec0331
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0331_primeCounting_step :
    Nat.primeCounting (331 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (331 * 30030 - 1) + 2020 := by
  exact period0331_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1849 ≤ 2020)
      (Nat.primeCounting (331 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
