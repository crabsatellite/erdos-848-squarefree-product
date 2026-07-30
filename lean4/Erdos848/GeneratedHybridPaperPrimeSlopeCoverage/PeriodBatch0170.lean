import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0170
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0291 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 291)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1898)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0291

theorem periodCandidateSetSpec0291 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      291 30030 packedWheelOffsets
      0 5760 1898
      periodCandidates0291 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 291)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1898)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0291

theorem period0291_primeCounting_candidate_step :
    Nat.primeCounting (291 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (291 * 30030 - 1) + 1898 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 291)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1898)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0291
    periodCandidateSetSpec0291
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0291_primeCounting_step :
    Nat.primeCounting (291 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (291 * 30030 - 1) + 2020 := by
  exact period0291_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1898 ≤ 2020)
      (Nat.primeCounting (291 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
