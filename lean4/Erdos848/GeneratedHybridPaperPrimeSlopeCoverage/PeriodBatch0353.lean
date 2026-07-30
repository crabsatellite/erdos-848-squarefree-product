import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0353
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0474 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 474)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1842)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0474

theorem periodCandidateSetSpec0474 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      474 30030 packedWheelOffsets
      0 5760 1842
      periodCandidates0474 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 474)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1842)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0474

theorem period0474_primeCounting_candidate_step :
    Nat.primeCounting (474 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (474 * 30030 - 1) + 1842 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 474)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1842)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0474
    periodCandidateSetSpec0474
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0474_primeCounting_step :
    Nat.primeCounting (474 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (474 * 30030 - 1) + 2020 := by
  exact period0474_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1842 ≤ 2020)
      (Nat.primeCounting (474 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
