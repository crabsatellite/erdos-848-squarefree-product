import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0044
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0165 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 165)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1973)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0165

theorem periodCandidateSetSpec0165 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      165 30030 packedWheelOffsets
      0 5760 1973
      periodCandidates0165 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 165)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1973)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0165

theorem period0165_primeCounting_candidate_step :
    Nat.primeCounting (165 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (165 * 30030 - 1) + 1973 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 165)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1973)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0165
    periodCandidateSetSpec0165
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0165_primeCounting_step :
    Nat.primeCounting (165 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (165 * 30030 - 1) + 2020 := by
  exact period0165_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1973 ≤ 2020)
      (Nat.primeCounting (165 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
