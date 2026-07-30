import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0323
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0444 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 444)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0444

theorem periodCandidateSetSpec0444 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      444 30030 packedWheelOffsets
      0 5760 1848
      periodCandidates0444 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 444)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0444

theorem period0444_primeCounting_candidate_step :
    Nat.primeCounting (444 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (444 * 30030 - 1) + 1848 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 444)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0444
    periodCandidateSetSpec0444
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0444_primeCounting_step :
    Nat.primeCounting (444 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (444 * 30030 - 1) + 2020 := by
  exact period0444_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1848 ≤ 2020)
      (Nat.primeCounting (444 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
