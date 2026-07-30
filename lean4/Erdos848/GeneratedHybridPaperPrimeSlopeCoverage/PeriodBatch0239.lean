import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0239
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0360 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 360)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1864)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0360

theorem periodCandidateSetSpec0360 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      360 30030 packedWheelOffsets
      0 5760 1864
      periodCandidates0360 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 360)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1864)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0360

theorem period0360_primeCounting_candidate_step :
    Nat.primeCounting (360 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (360 * 30030 - 1) + 1864 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 360)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1864)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0360
    periodCandidateSetSpec0360
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0360_primeCounting_step :
    Nat.primeCounting (360 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (360 * 30030 - 1) + 2020 := by
  exact period0360_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1864 ≤ 2020)
      (Nat.primeCounting (360 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
