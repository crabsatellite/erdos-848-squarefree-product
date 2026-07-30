import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0271
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0392 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 392)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1863)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0392

theorem periodCandidateSetSpec0392 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      392 30030 packedWheelOffsets
      0 5760 1863
      periodCandidates0392 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 392)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1863)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0392

theorem period0392_primeCounting_candidate_step :
    Nat.primeCounting (392 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (392 * 30030 - 1) + 1863 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 392)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1863)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0392
    periodCandidateSetSpec0392
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0392_primeCounting_step :
    Nat.primeCounting (392 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (392 * 30030 - 1) + 2020 := by
  exact period0392_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1863 ≤ 2020)
      (Nat.primeCounting (392 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
