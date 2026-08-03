import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0009
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0130 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 130)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1994)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0130

theorem periodCandidateSetSpec0130 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      130 30030 packedWheelOffsets
      0 5760 1994
      periodCandidates0130 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 130)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1994)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0130

theorem period0130_primeCounting_candidate_step :
    Nat.primeCounting (130 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (130 * 30030 - 1) + 1994 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 130)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1994)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0130
    periodCandidateSetSpec0130
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0130_primeCounting_step :
    Nat.primeCounting (130 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (130 * 30030 - 1) + 2020 := by
  exact period0130_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1994 ≤ 2020)
      (Nat.primeCounting (130 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
