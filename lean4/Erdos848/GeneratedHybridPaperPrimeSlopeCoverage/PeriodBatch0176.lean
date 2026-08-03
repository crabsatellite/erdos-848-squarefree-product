import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0176
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0297 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 297)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1905)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0297

theorem periodCandidateSetSpec0297 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      297 30030 packedWheelOffsets
      0 5760 1905
      periodCandidates0297 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 297)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1905)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0297

theorem period0297_primeCounting_candidate_step :
    Nat.primeCounting (297 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (297 * 30030 - 1) + 1905 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 297)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1905)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0297
    periodCandidateSetSpec0297
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0297_primeCounting_step :
    Nat.primeCounting (297 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (297 * 30030 - 1) + 2020 := by
  exact period0297_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1905 ≤ 2020)
      (Nat.primeCounting (297 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
