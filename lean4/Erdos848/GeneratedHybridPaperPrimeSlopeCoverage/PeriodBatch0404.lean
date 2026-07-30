import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0404
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0525 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 525)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1790)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0525

theorem periodCandidateSetSpec0525 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      525 30030 packedWheelOffsets
      0 5760 1790
      periodCandidates0525 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 525)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1790)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0525

theorem period0525_primeCounting_candidate_step :
    Nat.primeCounting (525 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (525 * 30030 - 1) + 1790 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 525)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1790)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0525
    periodCandidateSetSpec0525
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0525_primeCounting_step :
    Nat.primeCounting (525 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (525 * 30030 - 1) + 2020 := by
  exact period0525_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1790 ≤ 2020)
      (Nat.primeCounting (525 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
