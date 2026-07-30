import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0403
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0524 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 524)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1823)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0524

theorem periodCandidateSetSpec0524 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      524 30030 packedWheelOffsets
      0 5760 1823
      periodCandidates0524 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 524)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1823)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0524

theorem period0524_primeCounting_candidate_step :
    Nat.primeCounting (524 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (524 * 30030 - 1) + 1823 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 524)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1823)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0524
    periodCandidateSetSpec0524
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0524_primeCounting_step :
    Nat.primeCounting (524 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (524 * 30030 - 1) + 2020 := by
  exact period0524_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1823 ≤ 2020)
      (Nat.primeCounting (524 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
