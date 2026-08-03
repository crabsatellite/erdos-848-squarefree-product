import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0315
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0436 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 436)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1832)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0436

theorem periodCandidateSetSpec0436 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      436 30030 packedWheelOffsets
      0 5760 1832
      periodCandidates0436 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 436)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1832)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0436

theorem period0436_primeCounting_candidate_step :
    Nat.primeCounting (436 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (436 * 30030 - 1) + 1832 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 436)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1832)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0436
    periodCandidateSetSpec0436
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0436_primeCounting_step :
    Nat.primeCounting (436 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (436 * 30030 - 1) + 2020 := by
  exact period0436_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1832 ≤ 2020)
      (Nat.primeCounting (436 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
