import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0330
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0451 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 451)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1827)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0451

theorem periodCandidateSetSpec0451 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      451 30030 packedWheelOffsets
      0 5760 1827
      periodCandidates0451 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 451)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1827)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0451

theorem period0451_primeCounting_candidate_step :
    Nat.primeCounting (451 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (451 * 30030 - 1) + 1827 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 451)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1827)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0451
    periodCandidateSetSpec0451
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0451_primeCounting_step :
    Nat.primeCounting (451 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (451 * 30030 - 1) + 2020 := by
  exact period0451_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1827 ≤ 2020)
      (Nat.primeCounting (451 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
