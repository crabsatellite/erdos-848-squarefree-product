import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0222
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0343 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 343)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1864)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0343

theorem periodCandidateSetSpec0343 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      343 30030 packedWheelOffsets
      0 5760 1864
      periodCandidates0343 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 343)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1864)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0343

theorem period0343_primeCounting_candidate_step :
    Nat.primeCounting (343 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (343 * 30030 - 1) + 1864 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 343)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1864)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0343
    periodCandidateSetSpec0343
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0343_primeCounting_step :
    Nat.primeCounting (343 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (343 * 30030 - 1) + 2020 := by
  exact period0343_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1864 ≤ 2020)
      (Nat.primeCounting (343 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
