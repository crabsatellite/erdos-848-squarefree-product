import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0097
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0218 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 218)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1919)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0218

theorem periodCandidateSetSpec0218 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      218 30030 packedWheelOffsets
      0 5760 1919
      periodCandidates0218 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 218)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1919)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0218

theorem period0218_primeCounting_candidate_step :
    Nat.primeCounting (218 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (218 * 30030 - 1) + 1919 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 218)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1919)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0218
    periodCandidateSetSpec0218
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0218_primeCounting_step :
    Nat.primeCounting (218 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (218 * 30030 - 1) + 2020 := by
  exact period0218_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1919 ≤ 2020)
      (Nat.primeCounting (218 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
