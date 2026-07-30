import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0150
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0271 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 271)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0271

theorem periodCandidateSetSpec0271 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      271 30030 packedWheelOffsets
      0 5760 1901
      periodCandidates0271 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 271)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0271

theorem period0271_primeCounting_candidate_step :
    Nat.primeCounting (271 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (271 * 30030 - 1) + 1901 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 271)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0271
    periodCandidateSetSpec0271
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0271_primeCounting_step :
    Nat.primeCounting (271 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (271 * 30030 - 1) + 2020 := by
  exact period0271_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1901 ≤ 2020)
      (Nat.primeCounting (271 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
