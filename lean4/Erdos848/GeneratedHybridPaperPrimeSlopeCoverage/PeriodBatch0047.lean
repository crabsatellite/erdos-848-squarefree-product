import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0047
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0168 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 168)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1940)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0168

theorem periodCandidateSetSpec0168 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      168 30030 packedWheelOffsets
      0 5760 1940
      periodCandidates0168 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 168)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1940)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0168

theorem period0168_primeCounting_candidate_step :
    Nat.primeCounting (168 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (168 * 30030 - 1) + 1940 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 168)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1940)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0168
    periodCandidateSetSpec0168
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0168_primeCounting_step :
    Nat.primeCounting (168 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (168 * 30030 - 1) + 2020 := by
  exact period0168_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1940 ≤ 2020)
      (Nat.primeCounting (168 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
