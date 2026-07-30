import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0294
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0415 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 415)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1825)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0415

theorem periodCandidateSetSpec0415 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      415 30030 packedWheelOffsets
      0 5760 1825
      periodCandidates0415 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 415)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1825)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0415

theorem period0415_primeCounting_candidate_step :
    Nat.primeCounting (415 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (415 * 30030 - 1) + 1825 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 415)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1825)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0415
    periodCandidateSetSpec0415
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0415_primeCounting_step :
    Nat.primeCounting (415 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (415 * 30030 - 1) + 2020 := by
  exact period0415_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1825 ≤ 2020)
      (Nat.primeCounting (415 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
