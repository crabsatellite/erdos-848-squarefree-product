import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0028
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0149 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 149)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1985)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0149

theorem periodCandidateSetSpec0149 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      149 30030 packedWheelOffsets
      0 5760 1985
      periodCandidates0149 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 149)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1985)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0149

theorem period0149_primeCounting_candidate_step :
    Nat.primeCounting (149 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (149 * 30030 - 1) + 1985 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 149)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1985)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0149
    periodCandidateSetSpec0149
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0149_primeCounting_step :
    Nat.primeCounting (149 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (149 * 30030 - 1) + 2020 := by
  exact period0149_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1985 ≤ 2020)
      (Nat.primeCounting (149 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
