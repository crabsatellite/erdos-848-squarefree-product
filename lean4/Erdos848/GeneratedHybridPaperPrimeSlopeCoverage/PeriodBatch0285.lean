import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0285
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0406 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 406)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1837)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0406

theorem periodCandidateSetSpec0406 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      406 30030 packedWheelOffsets
      0 5760 1837
      periodCandidates0406 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 406)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1837)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0406

theorem period0406_primeCounting_candidate_step :
    Nat.primeCounting (406 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (406 * 30030 - 1) + 1837 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 406)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1837)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0406
    periodCandidateSetSpec0406
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0406_primeCounting_step :
    Nat.primeCounting (406 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (406 * 30030 - 1) + 2020 := by
  exact period0406_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1837 ≤ 2020)
      (Nat.primeCounting (406 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
