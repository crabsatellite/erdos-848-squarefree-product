import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0297
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0418 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 418)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1818)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0418

theorem periodCandidateSetSpec0418 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      418 30030 packedWheelOffsets
      0 5760 1818
      periodCandidates0418 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 418)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1818)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0418

theorem period0418_primeCounting_candidate_step :
    Nat.primeCounting (418 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (418 * 30030 - 1) + 1818 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 418)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1818)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0418
    periodCandidateSetSpec0418
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0418_primeCounting_step :
    Nat.primeCounting (418 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (418 * 30030 - 1) + 2020 := by
  exact period0418_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1818 ≤ 2020)
      (Nat.primeCounting (418 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
