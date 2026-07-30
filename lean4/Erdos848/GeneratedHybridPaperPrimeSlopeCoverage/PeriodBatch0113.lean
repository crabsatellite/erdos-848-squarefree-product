import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0113
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0234 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 234)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1953)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0234

theorem periodCandidateSetSpec0234 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      234 30030 packedWheelOffsets
      0 5760 1953
      periodCandidates0234 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 234)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1953)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0234

theorem period0234_primeCounting_candidate_step :
    Nat.primeCounting (234 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (234 * 30030 - 1) + 1953 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 234)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1953)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0234
    periodCandidateSetSpec0234
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0234_primeCounting_step :
    Nat.primeCounting (234 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (234 * 30030 - 1) + 2020 := by
  exact period0234_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1953 ≤ 2020)
      (Nat.primeCounting (234 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
