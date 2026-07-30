import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0127
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0248 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 248)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1882)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0248

theorem periodCandidateSetSpec0248 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      248 30030 packedWheelOffsets
      0 5760 1882
      periodCandidates0248 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 248)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1882)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0248

theorem period0248_primeCounting_candidate_step :
    Nat.primeCounting (248 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (248 * 30030 - 1) + 1882 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 248)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1882)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0248
    periodCandidateSetSpec0248
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0248_primeCounting_step :
    Nat.primeCounting (248 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (248 * 30030 - 1) + 2020 := by
  exact period0248_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1882 ≤ 2020)
      (Nat.primeCounting (248 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
