import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0389
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0510 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 510)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1805)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0510

theorem periodCandidateSetSpec0510 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      510 30030 packedWheelOffsets
      0 5760 1805
      periodCandidates0510 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 510)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1805)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0510

theorem period0510_primeCounting_candidate_step :
    Nat.primeCounting (510 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (510 * 30030 - 1) + 1805 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 510)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1805)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0510
    periodCandidateSetSpec0510
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0510_primeCounting_step :
    Nat.primeCounting (510 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (510 * 30030 - 1) + 2020 := by
  exact period0510_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1805 ≤ 2020)
      (Nat.primeCounting (510 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
