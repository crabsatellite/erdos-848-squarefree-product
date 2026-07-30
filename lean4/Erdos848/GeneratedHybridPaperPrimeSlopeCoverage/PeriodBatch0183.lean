import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0183
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0304 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 304)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1878)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0304

theorem periodCandidateSetSpec0304 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      304 30030 packedWheelOffsets
      0 5760 1878
      periodCandidates0304 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 304)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1878)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0304

theorem period0304_primeCounting_candidate_step :
    Nat.primeCounting (304 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (304 * 30030 - 1) + 1878 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 304)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1878)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0304
    periodCandidateSetSpec0304
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0304_primeCounting_step :
    Nat.primeCounting (304 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (304 * 30030 - 1) + 2020 := by
  exact period0304_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1878 ≤ 2020)
      (Nat.primeCounting (304 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
