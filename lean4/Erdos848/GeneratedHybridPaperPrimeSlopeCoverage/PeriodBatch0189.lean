import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0189
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0310 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 310)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1874)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0310

theorem periodCandidateSetSpec0310 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      310 30030 packedWheelOffsets
      0 5760 1874
      periodCandidates0310 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 310)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1874)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0310

theorem period0310_primeCounting_candidate_step :
    Nat.primeCounting (310 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (310 * 30030 - 1) + 1874 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 310)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1874)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0310
    periodCandidateSetSpec0310
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0310_primeCounting_step :
    Nat.primeCounting (310 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (310 * 30030 - 1) + 2020 := by
  exact period0310_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1874 ≤ 2020)
      (Nat.primeCounting (310 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
