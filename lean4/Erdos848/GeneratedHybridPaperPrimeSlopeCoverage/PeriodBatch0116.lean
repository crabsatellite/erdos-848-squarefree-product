import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0116
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0237 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 237)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1858)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0237

theorem periodCandidateSetSpec0237 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      237 30030 packedWheelOffsets
      0 5760 1858
      periodCandidates0237 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 237)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1858)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0237

theorem period0237_primeCounting_candidate_step :
    Nat.primeCounting (237 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (237 * 30030 - 1) + 1858 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 237)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1858)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0237
    periodCandidateSetSpec0237
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0237_primeCounting_step :
    Nat.primeCounting (237 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (237 * 30030 - 1) + 2020 := by
  exact period0237_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1858 ≤ 2020)
      (Nat.primeCounting (237 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
