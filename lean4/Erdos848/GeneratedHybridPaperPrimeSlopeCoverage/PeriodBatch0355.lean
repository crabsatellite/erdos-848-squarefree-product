import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0355
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0476 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 476)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1807)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0476

theorem periodCandidateSetSpec0476 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      476 30030 packedWheelOffsets
      0 5760 1807
      periodCandidates0476 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 476)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1807)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0476

theorem period0476_primeCounting_candidate_step :
    Nat.primeCounting (476 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (476 * 30030 - 1) + 1807 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 476)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1807)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0476
    periodCandidateSetSpec0476
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0476_primeCounting_step :
    Nat.primeCounting (476 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (476 * 30030 - 1) + 2020 := by
  exact period0476_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1807 ≤ 2020)
      (Nat.primeCounting (476 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
