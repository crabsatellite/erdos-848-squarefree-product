import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0223
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0344 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 344)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1851)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0344

theorem periodCandidateSetSpec0344 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      344 30030 packedWheelOffsets
      0 5760 1851
      periodCandidates0344 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 344)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1851)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0344

theorem period0344_primeCounting_candidate_step :
    Nat.primeCounting (344 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (344 * 30030 - 1) + 1851 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 344)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1851)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0344
    periodCandidateSetSpec0344
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0344_primeCounting_step :
    Nat.primeCounting (344 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (344 * 30030 - 1) + 2020 := by
  exact period0344_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1851 ≤ 2020)
      (Nat.primeCounting (344 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
