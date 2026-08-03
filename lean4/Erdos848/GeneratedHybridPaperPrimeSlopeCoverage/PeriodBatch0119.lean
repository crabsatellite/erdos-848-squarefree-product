import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0119
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0240 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 240)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1886)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0240

theorem periodCandidateSetSpec0240 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      240 30030 packedWheelOffsets
      0 5760 1886
      periodCandidates0240 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 240)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1886)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0240

theorem period0240_primeCounting_candidate_step :
    Nat.primeCounting (240 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (240 * 30030 - 1) + 1886 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 240)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1886)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0240
    periodCandidateSetSpec0240
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0240_primeCounting_step :
    Nat.primeCounting (240 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (240 * 30030 - 1) + 2020 := by
  exact period0240_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1886 ≤ 2020)
      (Nat.primeCounting (240 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
