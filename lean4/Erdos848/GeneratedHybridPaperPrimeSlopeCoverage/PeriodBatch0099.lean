import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0099
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0220 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 220)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1894)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0220

theorem periodCandidateSetSpec0220 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      220 30030 packedWheelOffsets
      0 5760 1894
      periodCandidates0220 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 220)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1894)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0220

theorem period0220_primeCounting_candidate_step :
    Nat.primeCounting (220 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (220 * 30030 - 1) + 1894 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 220)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1894)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0220
    periodCandidateSetSpec0220
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0220_primeCounting_step :
    Nat.primeCounting (220 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (220 * 30030 - 1) + 2020 := by
  exact period0220_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1894 ≤ 2020)
      (Nat.primeCounting (220 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
