import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0391
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0512 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 512)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1774)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0512

theorem periodCandidateSetSpec0512 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      512 30030 packedWheelOffsets
      0 5760 1774
      periodCandidates0512 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 512)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1774)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0512

theorem period0512_primeCounting_candidate_step :
    Nat.primeCounting (512 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (512 * 30030 - 1) + 1774 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 512)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1774)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0512
    periodCandidateSetSpec0512
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0512_primeCounting_step :
    Nat.primeCounting (512 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (512 * 30030 - 1) + 2020 := by
  exact period0512_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1774 ≤ 2020)
      (Nat.primeCounting (512 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
