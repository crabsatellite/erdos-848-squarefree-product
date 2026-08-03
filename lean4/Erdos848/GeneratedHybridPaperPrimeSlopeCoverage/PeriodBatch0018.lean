import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0018
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0139 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 139)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1987)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0139

theorem periodCandidateSetSpec0139 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      139 30030 packedWheelOffsets
      0 5760 1987
      periodCandidates0139 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 139)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1987)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0139

theorem period0139_primeCounting_candidate_step :
    Nat.primeCounting (139 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (139 * 30030 - 1) + 1987 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 139)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1987)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0139
    periodCandidateSetSpec0139
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0139_primeCounting_step :
    Nat.primeCounting (139 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (139 * 30030 - 1) + 2020 := by
  exact period0139_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1987 ≤ 2020)
      (Nat.primeCounting (139 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
