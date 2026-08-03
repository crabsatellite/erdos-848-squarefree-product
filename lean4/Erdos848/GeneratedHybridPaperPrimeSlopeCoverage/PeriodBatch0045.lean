import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0045
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0166 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 166)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1929)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0166

theorem periodCandidateSetSpec0166 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      166 30030 packedWheelOffsets
      0 5760 1929
      periodCandidates0166 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 166)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1929)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0166

theorem period0166_primeCounting_candidate_step :
    Nat.primeCounting (166 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (166 * 30030 - 1) + 1929 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 166)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1929)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0166
    periodCandidateSetSpec0166
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0166_primeCounting_step :
    Nat.primeCounting (166 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (166 * 30030 - 1) + 2020 := by
  exact period0166_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1929 ≤ 2020)
      (Nat.primeCounting (166 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
