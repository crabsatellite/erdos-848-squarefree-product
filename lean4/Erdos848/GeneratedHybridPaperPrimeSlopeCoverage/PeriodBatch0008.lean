import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0008
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0129 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 129)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1983)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0129

theorem periodCandidateSetSpec0129 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      129 30030 packedWheelOffsets
      0 5760 1983
      periodCandidates0129 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 129)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1983)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0129

theorem period0129_primeCounting_candidate_step :
    Nat.primeCounting (129 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (129 * 30030 - 1) + 1983 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 129)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1983)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0129
    periodCandidateSetSpec0129
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0129_primeCounting_step :
    Nat.primeCounting (129 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (129 * 30030 - 1) + 2020 := by
  exact period0129_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1983 ≤ 2020)
      (Nat.primeCounting (129 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
