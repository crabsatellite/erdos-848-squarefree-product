import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0105
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0226 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 226)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1902)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0226

theorem periodCandidateSetSpec0226 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      226 30030 packedWheelOffsets
      0 5760 1902
      periodCandidates0226 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 226)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1902)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0226

theorem period0226_primeCounting_candidate_step :
    Nat.primeCounting (226 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (226 * 30030 - 1) + 1902 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 226)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1902)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0226
    periodCandidateSetSpec0226
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0226_primeCounting_step :
    Nat.primeCounting (226 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (226 * 30030 - 1) + 2020 := by
  exact period0226_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1902 ≤ 2020)
      (Nat.primeCounting (226 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
