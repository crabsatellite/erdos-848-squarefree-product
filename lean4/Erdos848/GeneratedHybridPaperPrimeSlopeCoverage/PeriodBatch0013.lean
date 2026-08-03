import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0013
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0134 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 134)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2016)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0134

theorem periodCandidateSetSpec0134 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      134 30030 packedWheelOffsets
      0 5760 2016
      periodCandidates0134 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 134)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2016)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0134

theorem period0134_primeCounting_candidate_step :
    Nat.primeCounting (134 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (134 * 30030 - 1) + 2016 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 134)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 2016)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0134
    periodCandidateSetSpec0134
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0134_primeCounting_step :
    Nat.primeCounting (134 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (134 * 30030 - 1) + 2020 := by
  exact period0134_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 2016 ≤ 2020)
      (Nat.primeCounting (134 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
