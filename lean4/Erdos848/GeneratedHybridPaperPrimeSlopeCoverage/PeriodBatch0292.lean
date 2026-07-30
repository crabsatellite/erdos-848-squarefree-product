import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0292
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0413 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 413)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1856)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0413

theorem periodCandidateSetSpec0413 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      413 30030 packedWheelOffsets
      0 5760 1856
      periodCandidates0413 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 413)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1856)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0413

theorem period0413_primeCounting_candidate_step :
    Nat.primeCounting (413 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (413 * 30030 - 1) + 1856 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 413)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1856)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0413
    periodCandidateSetSpec0413
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0413_primeCounting_step :
    Nat.primeCounting (413 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (413 * 30030 - 1) + 2020 := by
  exact period0413_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1856 ≤ 2020)
      (Nat.primeCounting (413 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
