import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0310
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0431 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 431)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1823)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0431

theorem periodCandidateSetSpec0431 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      431 30030 packedWheelOffsets
      0 5760 1823
      periodCandidates0431 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 431)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1823)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0431

theorem period0431_primeCounting_candidate_step :
    Nat.primeCounting (431 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (431 * 30030 - 1) + 1823 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 431)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1823)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0431
    periodCandidateSetSpec0431
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0431_primeCounting_step :
    Nat.primeCounting (431 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (431 * 30030 - 1) + 2020 := by
  exact period0431_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1823 ≤ 2020)
      (Nat.primeCounting (431 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
