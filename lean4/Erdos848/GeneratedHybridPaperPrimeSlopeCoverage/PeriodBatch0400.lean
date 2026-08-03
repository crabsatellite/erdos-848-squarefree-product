import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0400
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0521 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 521)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1849)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0521

theorem periodCandidateSetSpec0521 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      521 30030 packedWheelOffsets
      0 5760 1849
      periodCandidates0521 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 521)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1849)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0521

theorem period0521_primeCounting_candidate_step :
    Nat.primeCounting (521 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (521 * 30030 - 1) + 1849 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 521)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1849)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0521
    periodCandidateSetSpec0521
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0521_primeCounting_step :
    Nat.primeCounting (521 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (521 * 30030 - 1) + 2020 := by
  exact period0521_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1849 ≤ 2020)
      (Nat.primeCounting (521 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
