import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0236
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0357 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 357)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1837)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0357

theorem periodCandidateSetSpec0357 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      357 30030 packedWheelOffsets
      0 5760 1837
      periodCandidates0357 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 357)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1837)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0357

theorem period0357_primeCounting_candidate_step :
    Nat.primeCounting (357 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (357 * 30030 - 1) + 1837 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 357)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1837)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0357
    periodCandidateSetSpec0357
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0357_primeCounting_step :
    Nat.primeCounting (357 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (357 * 30030 - 1) + 2020 := by
  exact period0357_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1837 ≤ 2020)
      (Nat.primeCounting (357 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
