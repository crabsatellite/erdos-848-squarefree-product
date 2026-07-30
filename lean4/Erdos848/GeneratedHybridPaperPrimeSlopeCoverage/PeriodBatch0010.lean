import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0010
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0131 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 131)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1962)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0131

theorem periodCandidateSetSpec0131 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      131 30030 packedWheelOffsets
      0 5760 1962
      periodCandidates0131 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 131)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1962)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0131

theorem period0131_primeCounting_candidate_step :
    Nat.primeCounting (131 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (131 * 30030 - 1) + 1962 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 131)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1962)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0131
    periodCandidateSetSpec0131
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0131_primeCounting_step :
    Nat.primeCounting (131 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (131 * 30030 - 1) + 2020 := by
  exact period0131_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1962 ≤ 2020)
      (Nat.primeCounting (131 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
