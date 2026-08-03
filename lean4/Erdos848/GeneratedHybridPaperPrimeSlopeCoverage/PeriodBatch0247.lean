import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0247
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0368 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 368)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1883)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0368

theorem periodCandidateSetSpec0368 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      368 30030 packedWheelOffsets
      0 5760 1883
      periodCandidates0368 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 368)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1883)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0368

theorem period0368_primeCounting_candidate_step :
    Nat.primeCounting (368 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (368 * 30030 - 1) + 1883 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 368)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1883)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0368
    periodCandidateSetSpec0368
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0368_primeCounting_step :
    Nat.primeCounting (368 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (368 * 30030 - 1) + 2020 := by
  exact period0368_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1883 ≤ 2020)
      (Nat.primeCounting (368 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
