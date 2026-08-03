import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0305
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0426 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 426)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1829)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0426

theorem periodCandidateSetSpec0426 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      426 30030 packedWheelOffsets
      0 5760 1829
      periodCandidates0426 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 426)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1829)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0426

theorem period0426_primeCounting_candidate_step :
    Nat.primeCounting (426 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (426 * 30030 - 1) + 1829 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 426)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1829)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0426
    periodCandidateSetSpec0426
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0426_primeCounting_step :
    Nat.primeCounting (426 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (426 * 30030 - 1) + 2020 := by
  exact period0426_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1829 ≤ 2020)
      (Nat.primeCounting (426 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
