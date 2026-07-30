import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0346
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0467 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 467)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1815)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0467

theorem periodCandidateSetSpec0467 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      467 30030 packedWheelOffsets
      0 5760 1815
      periodCandidates0467 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 467)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1815)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0467

theorem period0467_primeCounting_candidate_step :
    Nat.primeCounting (467 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (467 * 30030 - 1) + 1815 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 467)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1815)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0467
    periodCandidateSetSpec0467
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0467_primeCounting_step :
    Nat.primeCounting (467 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (467 * 30030 - 1) + 2020 := by
  exact period0467_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1815 ≤ 2020)
      (Nat.primeCounting (467 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
