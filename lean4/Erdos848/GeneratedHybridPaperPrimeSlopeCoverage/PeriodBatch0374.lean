import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0374
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0495 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 495)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1799)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0495

theorem periodCandidateSetSpec0495 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      495 30030 packedWheelOffsets
      0 5760 1799
      periodCandidates0495 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 495)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1799)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0495

theorem period0495_primeCounting_candidate_step :
    Nat.primeCounting (495 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (495 * 30030 - 1) + 1799 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 495)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1799)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0495
    periodCandidateSetSpec0495
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0495_primeCounting_step :
    Nat.primeCounting (495 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (495 * 30030 - 1) + 2020 := by
  exact period0495_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1799 ≤ 2020)
      (Nat.primeCounting (495 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
