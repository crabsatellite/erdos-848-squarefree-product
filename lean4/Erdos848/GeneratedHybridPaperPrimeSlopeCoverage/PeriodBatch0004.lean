import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0004
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0125 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 125)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1938)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0125

theorem periodCandidateSetSpec0125 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      125 30030 packedWheelOffsets
      0 5760 1938
      periodCandidates0125 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 125)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1938)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0125

theorem period0125_primeCounting_candidate_step :
    Nat.primeCounting (125 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (125 * 30030 - 1) + 1938 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 125)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1938)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0125
    periodCandidateSetSpec0125
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0125_primeCounting_step :
    Nat.primeCounting (125 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (125 * 30030 - 1) + 2020 := by
  exact period0125_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1938 ≤ 2020)
      (Nat.primeCounting (125 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
