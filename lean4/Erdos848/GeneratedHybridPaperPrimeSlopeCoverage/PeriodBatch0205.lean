import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0205
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0326 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 326)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1895)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0326

theorem periodCandidateSetSpec0326 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      326 30030 packedWheelOffsets
      0 5760 1895
      periodCandidates0326 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 326)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1895)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0326

theorem period0326_primeCounting_candidate_step :
    Nat.primeCounting (326 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (326 * 30030 - 1) + 1895 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 326)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1895)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0326
    periodCandidateSetSpec0326
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0326_primeCounting_step :
    Nat.primeCounting (326 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (326 * 30030 - 1) + 2020 := by
  exact period0326_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1895 ≤ 2020)
      (Nat.primeCounting (326 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
