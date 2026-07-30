import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0002
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0123 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 123)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2005)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0123

theorem periodCandidateSetSpec0123 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      123 30030 packedWheelOffsets
      0 5760 2005
      periodCandidates0123 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 123)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2005)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0123

theorem period0123_primeCounting_candidate_step :
    Nat.primeCounting (123 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (123 * 30030 - 1) + 2005 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 123)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 2005)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0123
    periodCandidateSetSpec0123
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0123_primeCounting_step :
    Nat.primeCounting (123 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (123 * 30030 - 1) + 2020 := by
  exact period0123_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 2005 ≤ 2020)
      (Nat.primeCounting (123 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
