import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0040
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0161 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 161)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1968)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0161

theorem periodCandidateSetSpec0161 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      161 30030 packedWheelOffsets
      0 5760 1968
      periodCandidates0161 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 161)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1968)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0161

theorem period0161_primeCounting_candidate_step :
    Nat.primeCounting (161 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (161 * 30030 - 1) + 1968 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 161)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1968)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0161
    periodCandidateSetSpec0161
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0161_primeCounting_step :
    Nat.primeCounting (161 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (161 * 30030 - 1) + 2020 := by
  exact period0161_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1968 ≤ 2020)
      (Nat.primeCounting (161 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
