import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0375
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0496 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 496)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1792)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0496

theorem periodCandidateSetSpec0496 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      496 30030 packedWheelOffsets
      0 5760 1792
      periodCandidates0496 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 496)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1792)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0496

theorem period0496_primeCounting_candidate_step :
    Nat.primeCounting (496 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (496 * 30030 - 1) + 1792 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 496)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1792)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0496
    periodCandidateSetSpec0496
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0496_primeCounting_step :
    Nat.primeCounting (496 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (496 * 30030 - 1) + 2020 := by
  exact period0496_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1792 ≤ 2020)
      (Nat.primeCounting (496 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
