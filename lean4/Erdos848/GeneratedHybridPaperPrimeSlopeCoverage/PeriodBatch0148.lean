import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0148
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0269 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 269)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1841)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0269

theorem periodCandidateSetSpec0269 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      269 30030 packedWheelOffsets
      0 5760 1841
      periodCandidates0269 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 269)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1841)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0269

theorem period0269_primeCounting_candidate_step :
    Nat.primeCounting (269 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (269 * 30030 - 1) + 1841 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 269)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1841)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0269
    periodCandidateSetSpec0269
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0269_primeCounting_step :
    Nat.primeCounting (269 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (269 * 30030 - 1) + 2020 := by
  exact period0269_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1841 ≤ 2020)
      (Nat.primeCounting (269 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
