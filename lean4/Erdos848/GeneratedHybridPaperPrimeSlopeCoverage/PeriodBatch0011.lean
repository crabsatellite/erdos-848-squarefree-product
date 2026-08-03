import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0011
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0132 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 132)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1960)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0132

theorem periodCandidateSetSpec0132 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      132 30030 packedWheelOffsets
      0 5760 1960
      periodCandidates0132 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 132)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1960)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0132

theorem period0132_primeCounting_candidate_step :
    Nat.primeCounting (132 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (132 * 30030 - 1) + 1960 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 132)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1960)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0132
    periodCandidateSetSpec0132
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0132_primeCounting_step :
    Nat.primeCounting (132 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (132 * 30030 - 1) + 2020 := by
  exact period0132_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1960 ≤ 2020)
      (Nat.primeCounting (132 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
