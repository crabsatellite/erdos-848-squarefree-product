import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0141
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0262 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 262)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1917)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0262

theorem periodCandidateSetSpec0262 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      262 30030 packedWheelOffsets
      0 5760 1917
      periodCandidates0262 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 262)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1917)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0262

theorem period0262_primeCounting_candidate_step :
    Nat.primeCounting (262 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (262 * 30030 - 1) + 1917 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 262)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1917)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0262
    periodCandidateSetSpec0262
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0262_primeCounting_step :
    Nat.primeCounting (262 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (262 * 30030 - 1) + 2020 := by
  exact period0262_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1917 ≤ 2020)
      (Nat.primeCounting (262 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
