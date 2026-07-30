import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0220
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0341 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 341)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0341

theorem periodCandidateSetSpec0341 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      341 30030 packedWheelOffsets
      0 5760 1877
      periodCandidates0341 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 341)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0341

theorem period0341_primeCounting_candidate_step :
    Nat.primeCounting (341 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (341 * 30030 - 1) + 1877 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 341)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0341
    periodCandidateSetSpec0341
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0341_primeCounting_step :
    Nat.primeCounting (341 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (341 * 30030 - 1) + 2020 := by
  exact period0341_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1877 ≤ 2020)
      (Nat.primeCounting (341 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
