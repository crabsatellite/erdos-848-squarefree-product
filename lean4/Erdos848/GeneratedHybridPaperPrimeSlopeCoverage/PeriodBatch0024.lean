import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0024
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0145 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 145)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1967)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0145

theorem periodCandidateSetSpec0145 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      145 30030 packedWheelOffsets
      0 5760 1967
      periodCandidates0145 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 145)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1967)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0145

theorem period0145_primeCounting_candidate_step :
    Nat.primeCounting (145 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (145 * 30030 - 1) + 1967 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 145)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1967)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0145
    periodCandidateSetSpec0145
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0145_primeCounting_step :
    Nat.primeCounting (145 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (145 * 30030 - 1) + 2020 := by
  exact period0145_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1967 ≤ 2020)
      (Nat.primeCounting (145 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
