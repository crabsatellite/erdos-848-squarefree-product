import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0301
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0422 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 422)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1850)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0422

theorem periodCandidateSetSpec0422 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      422 30030 packedWheelOffsets
      0 5760 1850
      periodCandidates0422 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 422)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1850)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0422

theorem period0422_primeCounting_candidate_step :
    Nat.primeCounting (422 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (422 * 30030 - 1) + 1850 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 422)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1850)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0422
    periodCandidateSetSpec0422
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0422_primeCounting_step :
    Nat.primeCounting (422 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (422 * 30030 - 1) + 2020 := by
  exact period0422_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1850 ≤ 2020)
      (Nat.primeCounting (422 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
