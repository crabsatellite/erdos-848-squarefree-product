import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0224
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0345 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 345)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1867)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0345

theorem periodCandidateSetSpec0345 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      345 30030 packedWheelOffsets
      0 5760 1867
      periodCandidates0345 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 345)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1867)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0345

theorem period0345_primeCounting_candidate_step :
    Nat.primeCounting (345 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (345 * 30030 - 1) + 1867 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 345)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1867)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0345
    periodCandidateSetSpec0345
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0345_primeCounting_step :
    Nat.primeCounting (345 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (345 * 30030 - 1) + 2020 := by
  exact period0345_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1867 ≤ 2020)
      (Nat.primeCounting (345 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
