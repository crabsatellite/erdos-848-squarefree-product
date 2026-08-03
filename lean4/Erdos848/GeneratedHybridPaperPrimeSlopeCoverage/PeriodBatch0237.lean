import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0237
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0358 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 358)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1827)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0358

theorem periodCandidateSetSpec0358 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      358 30030 packedWheelOffsets
      0 5760 1827
      periodCandidates0358 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 358)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1827)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0358

theorem period0358_primeCounting_candidate_step :
    Nat.primeCounting (358 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (358 * 30030 - 1) + 1827 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 358)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1827)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0358
    periodCandidateSetSpec0358
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0358_primeCounting_step :
    Nat.primeCounting (358 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (358 * 30030 - 1) + 2020 := by
  exact period0358_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1827 ≤ 2020)
      (Nat.primeCounting (358 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
