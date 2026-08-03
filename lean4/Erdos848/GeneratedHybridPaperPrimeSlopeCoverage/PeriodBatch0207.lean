import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0207
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0328 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 328)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1845)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0328

theorem periodCandidateSetSpec0328 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      328 30030 packedWheelOffsets
      0 5760 1845
      periodCandidates0328 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 328)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1845)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0328

theorem period0328_primeCounting_candidate_step :
    Nat.primeCounting (328 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (328 * 30030 - 1) + 1845 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 328)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1845)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0328
    periodCandidateSetSpec0328
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0328_primeCounting_step :
    Nat.primeCounting (328 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (328 * 30030 - 1) + 2020 := by
  exact period0328_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1845 ≤ 2020)
      (Nat.primeCounting (328 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
