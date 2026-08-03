import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0001
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0122 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 122)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2002)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0122

theorem periodCandidateSetSpec0122 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      122 30030 packedWheelOffsets
      0 5760 2002
      periodCandidates0122 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 122)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2002)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0122

theorem period0122_primeCounting_candidate_step :
    Nat.primeCounting (122 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (122 * 30030 - 1) + 2002 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 122)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 2002)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0122
    periodCandidateSetSpec0122
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0122_primeCounting_step :
    Nat.primeCounting (122 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (122 * 30030 - 1) + 2020 := by
  exact period0122_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 2002 ≤ 2020)
      (Nat.primeCounting (122 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
