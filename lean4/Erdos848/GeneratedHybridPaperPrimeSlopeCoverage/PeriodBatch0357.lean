import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0357
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0478 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 478)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1836)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0478

theorem periodCandidateSetSpec0478 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      478 30030 packedWheelOffsets
      0 5760 1836
      periodCandidates0478 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 478)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1836)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0478

theorem period0478_primeCounting_candidate_step :
    Nat.primeCounting (478 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (478 * 30030 - 1) + 1836 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 478)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1836)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0478
    periodCandidateSetSpec0478
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0478_primeCounting_step :
    Nat.primeCounting (478 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (478 * 30030 - 1) + 2020 := by
  exact period0478_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1836 ≤ 2020)
      (Nat.primeCounting (478 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
