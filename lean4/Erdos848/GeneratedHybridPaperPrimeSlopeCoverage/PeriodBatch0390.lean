import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0390
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0511 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 511)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1802)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0511

theorem periodCandidateSetSpec0511 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      511 30030 packedWheelOffsets
      0 5760 1802
      periodCandidates0511 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 511)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1802)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0511

theorem period0511_primeCounting_candidate_step :
    Nat.primeCounting (511 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (511 * 30030 - 1) + 1802 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 511)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1802)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0511
    periodCandidateSetSpec0511
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0511_primeCounting_step :
    Nat.primeCounting (511 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (511 * 30030 - 1) + 2020 := by
  exact period0511_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1802 ≤ 2020)
      (Nat.primeCounting (511 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
