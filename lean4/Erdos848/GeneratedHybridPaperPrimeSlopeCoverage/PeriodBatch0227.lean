import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0227
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0348 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 348)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1873)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0348

theorem periodCandidateSetSpec0348 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      348 30030 packedWheelOffsets
      0 5760 1873
      periodCandidates0348 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 348)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1873)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0348

theorem period0348_primeCounting_candidate_step :
    Nat.primeCounting (348 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (348 * 30030 - 1) + 1873 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 348)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1873)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0348
    periodCandidateSetSpec0348
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0348_primeCounting_step :
    Nat.primeCounting (348 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (348 * 30030 - 1) + 2020 := by
  exact period0348_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1873 ≤ 2020)
      (Nat.primeCounting (348 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
