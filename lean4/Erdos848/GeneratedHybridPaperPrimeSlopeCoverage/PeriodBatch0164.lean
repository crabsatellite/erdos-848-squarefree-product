import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0164
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0285 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 285)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1894)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0285

theorem periodCandidateSetSpec0285 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      285 30030 packedWheelOffsets
      0 5760 1894
      periodCandidates0285 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 285)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1894)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0285

theorem period0285_primeCounting_candidate_step :
    Nat.primeCounting (285 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (285 * 30030 - 1) + 1894 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 285)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1894)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0285
    periodCandidateSetSpec0285
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0285_primeCounting_step :
    Nat.primeCounting (285 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (285 * 30030 - 1) + 2020 := by
  exact period0285_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1894 ≤ 2020)
      (Nat.primeCounting (285 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
