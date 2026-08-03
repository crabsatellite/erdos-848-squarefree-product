import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0102
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0223 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 223)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1946)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0223

theorem periodCandidateSetSpec0223 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      223 30030 packedWheelOffsets
      0 5760 1946
      periodCandidates0223 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 223)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1946)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0223

theorem period0223_primeCounting_candidate_step :
    Nat.primeCounting (223 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (223 * 30030 - 1) + 1946 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 223)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1946)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0223
    periodCandidateSetSpec0223
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0223_primeCounting_step :
    Nat.primeCounting (223 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (223 * 30030 - 1) + 2020 := by
  exact period0223_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1946 ≤ 2020)
      (Nat.primeCounting (223 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
