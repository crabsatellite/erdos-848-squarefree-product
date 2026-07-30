import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0360
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0481 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 481)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1804)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0481

theorem periodCandidateSetSpec0481 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      481 30030 packedWheelOffsets
      0 5760 1804
      periodCandidates0481 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 481)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1804)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0481

theorem period0481_primeCounting_candidate_step :
    Nat.primeCounting (481 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (481 * 30030 - 1) + 1804 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 481)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1804)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0481
    periodCandidateSetSpec0481
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0481_primeCounting_step :
    Nat.primeCounting (481 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (481 * 30030 - 1) + 2020 := by
  exact period0481_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1804 ≤ 2020)
      (Nat.primeCounting (481 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
