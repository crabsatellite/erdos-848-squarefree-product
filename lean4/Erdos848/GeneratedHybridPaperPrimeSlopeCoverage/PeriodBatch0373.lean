import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0373
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0494 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 494)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1828)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0494

theorem periodCandidateSetSpec0494 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      494 30030 packedWheelOffsets
      0 5760 1828
      periodCandidates0494 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 494)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1828)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0494

theorem period0494_primeCounting_candidate_step :
    Nat.primeCounting (494 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (494 * 30030 - 1) + 1828 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 494)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1828)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0494
    periodCandidateSetSpec0494
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0494_primeCounting_step :
    Nat.primeCounting (494 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (494 * 30030 - 1) + 2020 := by
  exact period0494_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1828 ≤ 2020)
      (Nat.primeCounting (494 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
