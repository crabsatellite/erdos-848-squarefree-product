import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0399
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0520 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 520)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1791)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0520

theorem periodCandidateSetSpec0520 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      520 30030 packedWheelOffsets
      0 5760 1791
      periodCandidates0520 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 520)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1791)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0520

theorem period0520_primeCounting_candidate_step :
    Nat.primeCounting (520 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (520 * 30030 - 1) + 1791 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 520)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1791)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0520
    periodCandidateSetSpec0520
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0520_primeCounting_step :
    Nat.primeCounting (520 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (520 * 30030 - 1) + 2020 := by
  exact period0520_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1791 ≤ 2020)
      (Nat.primeCounting (520 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
