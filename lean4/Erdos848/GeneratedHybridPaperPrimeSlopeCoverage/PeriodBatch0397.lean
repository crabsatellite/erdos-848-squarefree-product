import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0397
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0518 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 518)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1810)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0518

theorem periodCandidateSetSpec0518 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      518 30030 packedWheelOffsets
      0 5760 1810
      periodCandidates0518 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 518)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1810)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0518

theorem period0518_primeCounting_candidate_step :
    Nat.primeCounting (518 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (518 * 30030 - 1) + 1810 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 518)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1810)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0518
    periodCandidateSetSpec0518
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0518_primeCounting_step :
    Nat.primeCounting (518 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (518 * 30030 - 1) + 2020 := by
  exact period0518_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1810 ≤ 2020)
      (Nat.primeCounting (518 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
