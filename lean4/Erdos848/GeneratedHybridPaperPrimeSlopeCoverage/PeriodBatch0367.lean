import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0367
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0488 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 488)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1855)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0488

theorem periodCandidateSetSpec0488 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      488 30030 packedWheelOffsets
      0 5760 1855
      periodCandidates0488 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 488)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1855)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0488

theorem period0488_primeCounting_candidate_step :
    Nat.primeCounting (488 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (488 * 30030 - 1) + 1855 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 488)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1855)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0488
    periodCandidateSetSpec0488
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0488_primeCounting_step :
    Nat.primeCounting (488 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (488 * 30030 - 1) + 2020 := by
  exact period0488_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1855 ≤ 2020)
      (Nat.primeCounting (488 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
