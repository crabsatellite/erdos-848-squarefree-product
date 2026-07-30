import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0055
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0176 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 176)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1945)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0176

theorem periodCandidateSetSpec0176 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      176 30030 packedWheelOffsets
      0 5760 1945
      periodCandidates0176 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 176)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1945)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0176

theorem period0176_primeCounting_candidate_step :
    Nat.primeCounting (176 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (176 * 30030 - 1) + 1945 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 176)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1945)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0176
    periodCandidateSetSpec0176
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0176_primeCounting_step :
    Nat.primeCounting (176 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (176 * 30030 - 1) + 2020 := by
  exact period0176_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1945 ≤ 2020)
      (Nat.primeCounting (176 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
