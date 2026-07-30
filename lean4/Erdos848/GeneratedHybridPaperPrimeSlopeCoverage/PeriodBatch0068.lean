import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0068
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0189 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 189)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1954)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0189

theorem periodCandidateSetSpec0189 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      189 30030 packedWheelOffsets
      0 5760 1954
      periodCandidates0189 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 189)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1954)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0189

theorem period0189_primeCounting_candidate_step :
    Nat.primeCounting (189 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (189 * 30030 - 1) + 1954 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 189)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1954)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0189
    periodCandidateSetSpec0189
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0189_primeCounting_step :
    Nat.primeCounting (189 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (189 * 30030 - 1) + 2020 := by
  exact period0189_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1954 ≤ 2020)
      (Nat.primeCounting (189 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
