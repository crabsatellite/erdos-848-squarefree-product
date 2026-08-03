import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0064
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0185 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 185)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1950)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0185

theorem periodCandidateSetSpec0185 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      185 30030 packedWheelOffsets
      0 5760 1950
      periodCandidates0185 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 185)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1950)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0185

theorem period0185_primeCounting_candidate_step :
    Nat.primeCounting (185 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (185 * 30030 - 1) + 1950 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 185)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1950)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0185
    periodCandidateSetSpec0185
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0185_primeCounting_step :
    Nat.primeCounting (185 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (185 * 30030 - 1) + 2020 := by
  exact period0185_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1950 ≤ 2020)
      (Nat.primeCounting (185 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
