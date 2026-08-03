import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0030
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0151 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 151)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1962)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0151

theorem periodCandidateSetSpec0151 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      151 30030 packedWheelOffsets
      0 5760 1962
      periodCandidates0151 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 151)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1962)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0151

theorem period0151_primeCounting_candidate_step :
    Nat.primeCounting (151 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (151 * 30030 - 1) + 1962 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 151)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1962)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0151
    periodCandidateSetSpec0151
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0151_primeCounting_step :
    Nat.primeCounting (151 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (151 * 30030 - 1) + 2020 := by
  exact period0151_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1962 ≤ 2020)
      (Nat.primeCounting (151 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
