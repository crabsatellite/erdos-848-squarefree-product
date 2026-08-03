import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0000
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0121 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 121)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1939)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0121

theorem periodCandidateSetSpec0121 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      121 30030 packedWheelOffsets
      0 5760 1939
      periodCandidates0121 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 121)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1939)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0121

theorem period0121_primeCounting_candidate_step :
    Nat.primeCounting (121 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (121 * 30030 - 1) + 1939 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 121)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1939)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0121
    periodCandidateSetSpec0121
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0121_primeCounting_step :
    Nat.primeCounting (121 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (121 * 30030 - 1) + 2020 := by
  exact period0121_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1939 ≤ 2020)
      (Nat.primeCounting (121 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
