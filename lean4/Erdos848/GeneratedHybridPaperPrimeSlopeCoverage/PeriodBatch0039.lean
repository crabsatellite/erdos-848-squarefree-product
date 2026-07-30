import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0039
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0160 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 160)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1923)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0160

theorem periodCandidateSetSpec0160 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      160 30030 packedWheelOffsets
      0 5760 1923
      periodCandidates0160 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 160)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1923)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0160

theorem period0160_primeCounting_candidate_step :
    Nat.primeCounting (160 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (160 * 30030 - 1) + 1923 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 160)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1923)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0160
    periodCandidateSetSpec0160
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0160_primeCounting_step :
    Nat.primeCounting (160 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (160 * 30030 - 1) + 2020 := by
  exact period0160_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1923 ≤ 2020)
      (Nat.primeCounting (160 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
