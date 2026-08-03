import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0188
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0309 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 309)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1868)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0309

theorem periodCandidateSetSpec0309 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      309 30030 packedWheelOffsets
      0 5760 1868
      periodCandidates0309 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 309)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1868)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0309

theorem period0309_primeCounting_candidate_step :
    Nat.primeCounting (309 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (309 * 30030 - 1) + 1868 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 309)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1868)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0309
    periodCandidateSetSpec0309
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0309_primeCounting_step :
    Nat.primeCounting (309 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (309 * 30030 - 1) + 2020 := by
  exact period0309_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1868 ≤ 2020)
      (Nat.primeCounting (309 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
