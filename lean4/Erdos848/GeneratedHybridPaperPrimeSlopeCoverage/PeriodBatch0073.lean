import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0073
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0194 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 194)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1931)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0194

theorem periodCandidateSetSpec0194 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      194 30030 packedWheelOffsets
      0 5760 1931
      periodCandidates0194 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 194)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1931)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0194

theorem period0194_primeCounting_candidate_step :
    Nat.primeCounting (194 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (194 * 30030 - 1) + 1931 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 194)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1931)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0194
    periodCandidateSetSpec0194
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0194_primeCounting_step :
    Nat.primeCounting (194 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (194 * 30030 - 1) + 2020 := by
  exact period0194_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1931 ≤ 2020)
      (Nat.primeCounting (194 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
