import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0214
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0335 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 335)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0335

theorem periodCandidateSetSpec0335 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      335 30030 packedWheelOffsets
      0 5760 1870
      periodCandidates0335 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 335)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0335

theorem period0335_primeCounting_candidate_step :
    Nat.primeCounting (335 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (335 * 30030 - 1) + 1870 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 335)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0335
    periodCandidateSetSpec0335
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0335_primeCounting_step :
    Nat.primeCounting (335 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (335 * 30030 - 1) + 2020 := by
  exact period0335_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1870 ≤ 2020)
      (Nat.primeCounting (335 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
