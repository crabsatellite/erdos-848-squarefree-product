import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0308
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0429 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 429)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1799)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0429

theorem periodCandidateSetSpec0429 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      429 30030 packedWheelOffsets
      0 5760 1799
      periodCandidates0429 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 429)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1799)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0429

theorem period0429_primeCounting_candidate_step :
    Nat.primeCounting (429 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (429 * 30030 - 1) + 1799 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 429)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1799)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0429
    periodCandidateSetSpec0429
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0429_primeCounting_step :
    Nat.primeCounting (429 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (429 * 30030 - 1) + 2020 := by
  exact period0429_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1799 ≤ 2020)
      (Nat.primeCounting (429 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
