import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0229
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0350 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 350)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1837)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0350

theorem periodCandidateSetSpec0350 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      350 30030 packedWheelOffsets
      0 5760 1837
      periodCandidates0350 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 350)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1837)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0350

theorem period0350_primeCounting_candidate_step :
    Nat.primeCounting (350 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (350 * 30030 - 1) + 1837 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 350)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1837)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0350
    periodCandidateSetSpec0350
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0350_primeCounting_step :
    Nat.primeCounting (350 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (350 * 30030 - 1) + 2020 := by
  exact period0350_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1837 ≤ 2020)
      (Nat.primeCounting (350 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
