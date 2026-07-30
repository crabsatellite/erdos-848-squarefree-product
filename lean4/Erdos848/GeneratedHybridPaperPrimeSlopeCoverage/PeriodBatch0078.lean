import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0078
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0199 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 199)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1921)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0199

theorem periodCandidateSetSpec0199 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      199 30030 packedWheelOffsets
      0 5760 1921
      periodCandidates0199 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 199)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1921)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0199

theorem period0199_primeCounting_candidate_step :
    Nat.primeCounting (199 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (199 * 30030 - 1) + 1921 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 199)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1921)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0199
    periodCandidateSetSpec0199
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0199_primeCounting_step :
    Nat.primeCounting (199 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (199 * 30030 - 1) + 2020 := by
  exact period0199_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1921 ≤ 2020)
      (Nat.primeCounting (199 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
