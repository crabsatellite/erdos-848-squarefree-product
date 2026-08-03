import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0112
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0233 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 233)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1908)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0233

theorem periodCandidateSetSpec0233 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      233 30030 packedWheelOffsets
      0 5760 1908
      periodCandidates0233 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 233)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1908)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0233

theorem period0233_primeCounting_candidate_step :
    Nat.primeCounting (233 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (233 * 30030 - 1) + 1908 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 233)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1908)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0233
    periodCandidateSetSpec0233
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0233_primeCounting_step :
    Nat.primeCounting (233 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (233 * 30030 - 1) + 2020 := by
  exact period0233_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1908 ≤ 2020)
      (Nat.primeCounting (233 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
