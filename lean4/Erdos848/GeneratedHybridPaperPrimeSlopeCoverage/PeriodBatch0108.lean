import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0108
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0229 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 229)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1904)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0229

theorem periodCandidateSetSpec0229 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      229 30030 packedWheelOffsets
      0 5760 1904
      periodCandidates0229 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 229)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1904)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0229

theorem period0229_primeCounting_candidate_step :
    Nat.primeCounting (229 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (229 * 30030 - 1) + 1904 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 229)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1904)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0229
    periodCandidateSetSpec0229
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0229_primeCounting_step :
    Nat.primeCounting (229 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (229 * 30030 - 1) + 2020 := by
  exact period0229_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1904 ≤ 2020)
      (Nat.primeCounting (229 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
