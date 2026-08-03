import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0372
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0493 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 493)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1808)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0493

theorem periodCandidateSetSpec0493 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      493 30030 packedWheelOffsets
      0 5760 1808
      periodCandidates0493 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 493)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1808)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0493

theorem period0493_primeCounting_candidate_step :
    Nat.primeCounting (493 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (493 * 30030 - 1) + 1808 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 493)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1808)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0493
    periodCandidateSetSpec0493
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0493_primeCounting_step :
    Nat.primeCounting (493 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (493 * 30030 - 1) + 2020 := by
  exact period0493_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1808 ≤ 2020)
      (Nat.primeCounting (493 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
