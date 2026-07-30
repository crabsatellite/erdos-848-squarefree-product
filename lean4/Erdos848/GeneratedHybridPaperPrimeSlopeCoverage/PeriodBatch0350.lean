import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0350
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0471 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 471)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1793)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0471

theorem periodCandidateSetSpec0471 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      471 30030 packedWheelOffsets
      0 5760 1793
      periodCandidates0471 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 471)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1793)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0471

theorem period0471_primeCounting_candidate_step :
    Nat.primeCounting (471 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (471 * 30030 - 1) + 1793 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 471)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1793)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0471
    periodCandidateSetSpec0471
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0471_primeCounting_step :
    Nat.primeCounting (471 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (471 * 30030 - 1) + 2020 := by
  exact period0471_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1793 ≤ 2020)
      (Nat.primeCounting (471 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
