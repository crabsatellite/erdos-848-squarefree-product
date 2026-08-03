import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0065
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0186 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 186)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1915)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0186

theorem periodCandidateSetSpec0186 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      186 30030 packedWheelOffsets
      0 5760 1915
      periodCandidates0186 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 186)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1915)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0186

theorem period0186_primeCounting_candidate_step :
    Nat.primeCounting (186 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (186 * 30030 - 1) + 1915 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 186)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1915)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0186
    periodCandidateSetSpec0186
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0186_primeCounting_step :
    Nat.primeCounting (186 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (186 * 30030 - 1) + 2020 := by
  exact period0186_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1915 ≤ 2020)
      (Nat.primeCounting (186 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
