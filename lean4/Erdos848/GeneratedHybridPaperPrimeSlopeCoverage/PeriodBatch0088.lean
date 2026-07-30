import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0088
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0209 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 209)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1976)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0209

theorem periodCandidateSetSpec0209 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      209 30030 packedWheelOffsets
      0 5760 1976
      periodCandidates0209 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 209)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1976)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0209

theorem period0209_primeCounting_candidate_step :
    Nat.primeCounting (209 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (209 * 30030 - 1) + 1976 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 209)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1976)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0209
    periodCandidateSetSpec0209
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0209_primeCounting_step :
    Nat.primeCounting (209 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (209 * 30030 - 1) + 2020 := by
  exact period0209_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1976 ≤ 2020)
      (Nat.primeCounting (209 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
