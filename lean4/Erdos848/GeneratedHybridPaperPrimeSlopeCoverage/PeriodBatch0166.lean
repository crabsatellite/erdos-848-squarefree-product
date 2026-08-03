import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0166
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0287 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 287)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0287

theorem periodCandidateSetSpec0287 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      287 30030 packedWheelOffsets
      0 5760 1848
      periodCandidates0287 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 287)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0287

theorem period0287_primeCounting_candidate_step :
    Nat.primeCounting (287 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (287 * 30030 - 1) + 1848 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 287)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0287
    periodCandidateSetSpec0287
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0287_primeCounting_step :
    Nat.primeCounting (287 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (287 * 30030 - 1) + 2020 := by
  exact period0287_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1848 ≤ 2020)
      (Nat.primeCounting (287 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
