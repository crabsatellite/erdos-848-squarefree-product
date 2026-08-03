import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0130
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0251 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 251)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0251

theorem periodCandidateSetSpec0251 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      251 30030 packedWheelOffsets
      0 5760 1901
      periodCandidates0251 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 251)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0251

theorem period0251_primeCounting_candidate_step :
    Nat.primeCounting (251 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (251 * 30030 - 1) + 1901 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 251)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0251
    periodCandidateSetSpec0251
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0251_primeCounting_step :
    Nat.primeCounting (251 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (251 * 30030 - 1) + 2020 := by
  exact period0251_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1901 ≤ 2020)
      (Nat.primeCounting (251 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
