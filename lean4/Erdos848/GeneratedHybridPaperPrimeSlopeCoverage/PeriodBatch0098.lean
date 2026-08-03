import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0098
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0219 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 219)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1934)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0219

theorem periodCandidateSetSpec0219 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      219 30030 packedWheelOffsets
      0 5760 1934
      periodCandidates0219 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 219)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1934)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0219

theorem period0219_primeCounting_candidate_step :
    Nat.primeCounting (219 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (219 * 30030 - 1) + 1934 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 219)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1934)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0219
    periodCandidateSetSpec0219
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0219_primeCounting_step :
    Nat.primeCounting (219 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (219 * 30030 - 1) + 2020 := by
  exact period0219_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1934 ≤ 2020)
      (Nat.primeCounting (219 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
