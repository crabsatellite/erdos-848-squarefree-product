import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0379
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0500 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 500)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1835)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0500

theorem periodCandidateSetSpec0500 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      500 30030 packedWheelOffsets
      0 5760 1835
      periodCandidates0500 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 500)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1835)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0500

theorem period0500_primeCounting_candidate_step :
    Nat.primeCounting (500 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (500 * 30030 - 1) + 1835 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 500)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1835)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0500
    periodCandidateSetSpec0500
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0500_primeCounting_step :
    Nat.primeCounting (500 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (500 * 30030 - 1) + 2020 := by
  exact period0500_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1835 ≤ 2020)
      (Nat.primeCounting (500 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
