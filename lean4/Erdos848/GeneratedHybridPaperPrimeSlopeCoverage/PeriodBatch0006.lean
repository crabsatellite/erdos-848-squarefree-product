import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0006
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0127 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 127)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2007)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0127

theorem periodCandidateSetSpec0127 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      127 30030 packedWheelOffsets
      0 5760 2007
      periodCandidates0127 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 127)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2007)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0127

theorem period0127_primeCounting_candidate_step :
    Nat.primeCounting (127 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (127 * 30030 - 1) + 2007 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 127)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 2007)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0127
    periodCandidateSetSpec0127
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0127_primeCounting_step :
    Nat.primeCounting (127 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (127 * 30030 - 1) + 2020 := by
  exact period0127_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 2007 ≤ 2020)
      (Nat.primeCounting (127 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
