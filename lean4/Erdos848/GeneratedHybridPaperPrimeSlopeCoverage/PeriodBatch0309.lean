import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0309
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0430 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 430)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1813)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0430

theorem periodCandidateSetSpec0430 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      430 30030 packedWheelOffsets
      0 5760 1813
      periodCandidates0430 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 430)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1813)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0430

theorem period0430_primeCounting_candidate_step :
    Nat.primeCounting (430 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (430 * 30030 - 1) + 1813 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 430)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1813)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0430
    periodCandidateSetSpec0430
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0430_primeCounting_step :
    Nat.primeCounting (430 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (430 * 30030 - 1) + 2020 := by
  exact period0430_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1813 ≤ 2020)
      (Nat.primeCounting (430 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
