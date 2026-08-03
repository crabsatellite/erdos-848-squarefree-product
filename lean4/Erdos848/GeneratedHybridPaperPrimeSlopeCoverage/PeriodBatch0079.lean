import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0079
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0200 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 200)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1928)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0200

theorem periodCandidateSetSpec0200 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      200 30030 packedWheelOffsets
      0 5760 1928
      periodCandidates0200 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 200)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1928)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0200

theorem period0200_primeCounting_candidate_step :
    Nat.primeCounting (200 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (200 * 30030 - 1) + 1928 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 200)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1928)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0200
    periodCandidateSetSpec0200
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0200_primeCounting_step :
    Nat.primeCounting (200 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (200 * 30030 - 1) + 2020 := by
  exact period0200_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1928 ≤ 2020)
      (Nat.primeCounting (200 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
