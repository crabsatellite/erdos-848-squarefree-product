import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0351
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0472 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 472)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1784)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0472

theorem periodCandidateSetSpec0472 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      472 30030 packedWheelOffsets
      0 5760 1784
      periodCandidates0472 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 472)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1784)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0472

theorem period0472_primeCounting_candidate_step :
    Nat.primeCounting (472 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (472 * 30030 - 1) + 1784 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 472)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1784)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0472
    periodCandidateSetSpec0472
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0472_primeCounting_step :
    Nat.primeCounting (472 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (472 * 30030 - 1) + 2020 := by
  exact period0472_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1784 ≤ 2020)
      (Nat.primeCounting (472 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
