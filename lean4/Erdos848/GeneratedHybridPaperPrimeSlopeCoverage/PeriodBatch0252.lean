import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0252
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0373 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 373)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1814)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0373

theorem periodCandidateSetSpec0373 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      373 30030 packedWheelOffsets
      0 5760 1814
      periodCandidates0373 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 373)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1814)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0373

theorem period0373_primeCounting_candidate_step :
    Nat.primeCounting (373 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (373 * 30030 - 1) + 1814 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 373)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1814)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0373
    periodCandidateSetSpec0373
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0373_primeCounting_step :
    Nat.primeCounting (373 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (373 * 30030 - 1) + 2020 := by
  exact period0373_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1814 ≤ 2020)
      (Nat.primeCounting (373 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
