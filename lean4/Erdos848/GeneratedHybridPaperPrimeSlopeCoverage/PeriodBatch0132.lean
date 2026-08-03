import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0132
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0253 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 253)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1919)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0253

theorem periodCandidateSetSpec0253 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      253 30030 packedWheelOffsets
      0 5760 1919
      periodCandidates0253 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 253)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1919)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0253

theorem period0253_primeCounting_candidate_step :
    Nat.primeCounting (253 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (253 * 30030 - 1) + 1919 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 253)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1919)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0253
    periodCandidateSetSpec0253
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0253_primeCounting_step :
    Nat.primeCounting (253 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (253 * 30030 - 1) + 2020 := by
  exact period0253_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1919 ≤ 2020)
      (Nat.primeCounting (253 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
