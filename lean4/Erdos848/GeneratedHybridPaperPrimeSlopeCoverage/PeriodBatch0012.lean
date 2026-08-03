import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0012
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0133 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 133)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1970)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0133

theorem periodCandidateSetSpec0133 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      133 30030 packedWheelOffsets
      0 5760 1970
      periodCandidates0133 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 133)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1970)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0133

theorem period0133_primeCounting_candidate_step :
    Nat.primeCounting (133 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (133 * 30030 - 1) + 1970 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 133)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1970)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0133
    periodCandidateSetSpec0133
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0133_primeCounting_step :
    Nat.primeCounting (133 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (133 * 30030 - 1) + 2020 := by
  exact period0133_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1970 ≤ 2020)
      (Nat.primeCounting (133 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
