import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0007
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0128 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 128)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1963)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0128

theorem periodCandidateSetSpec0128 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      128 30030 packedWheelOffsets
      0 5760 1963
      periodCandidates0128 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 128)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1963)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0128

theorem period0128_primeCounting_candidate_step :
    Nat.primeCounting (128 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (128 * 30030 - 1) + 1963 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 128)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1963)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0128
    periodCandidateSetSpec0128
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0128_primeCounting_step :
    Nat.primeCounting (128 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (128 * 30030 - 1) + 2020 := by
  exact period0128_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1963 ≤ 2020)
      (Nat.primeCounting (128 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
