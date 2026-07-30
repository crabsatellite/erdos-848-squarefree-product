import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0241
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0362 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 362)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1833)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0362

theorem periodCandidateSetSpec0362 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      362 30030 packedWheelOffsets
      0 5760 1833
      periodCandidates0362 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 362)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1833)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0362

theorem period0362_primeCounting_candidate_step :
    Nat.primeCounting (362 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (362 * 30030 - 1) + 1833 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 362)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1833)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0362
    periodCandidateSetSpec0362
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0362_primeCounting_step :
    Nat.primeCounting (362 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (362 * 30030 - 1) + 2020 := by
  exact period0362_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1833 ≤ 2020)
      (Nat.primeCounting (362 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
