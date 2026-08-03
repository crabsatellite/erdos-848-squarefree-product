import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0035
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0156 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 156)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1949)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0156

theorem periodCandidateSetSpec0156 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      156 30030 packedWheelOffsets
      0 5760 1949
      periodCandidates0156 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 156)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1949)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0156

theorem period0156_primeCounting_candidate_step :
    Nat.primeCounting (156 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (156 * 30030 - 1) + 1949 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 156)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1949)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0156
    periodCandidateSetSpec0156
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0156_primeCounting_step :
    Nat.primeCounting (156 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (156 * 30030 - 1) + 2020 := by
  exact period0156_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1949 ≤ 2020)
      (Nat.primeCounting (156 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
