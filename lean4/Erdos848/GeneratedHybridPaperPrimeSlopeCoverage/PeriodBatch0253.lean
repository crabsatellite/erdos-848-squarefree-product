import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0253
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0374 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 374)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1863)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0374

theorem periodCandidateSetSpec0374 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      374 30030 packedWheelOffsets
      0 5760 1863
      periodCandidates0374 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 374)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1863)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0374

theorem period0374_primeCounting_candidate_step :
    Nat.primeCounting (374 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (374 * 30030 - 1) + 1863 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 374)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1863)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0374
    periodCandidateSetSpec0374
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0374_primeCounting_step :
    Nat.primeCounting (374 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (374 * 30030 - 1) + 2020 := by
  exact period0374_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1863 ≤ 2020)
      (Nat.primeCounting (374 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
