import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0066
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0187 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 187)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1916)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0187

theorem periodCandidateSetSpec0187 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      187 30030 packedWheelOffsets
      0 5760 1916
      periodCandidates0187 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 187)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1916)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0187

theorem period0187_primeCounting_candidate_step :
    Nat.primeCounting (187 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (187 * 30030 - 1) + 1916 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 187)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1916)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0187
    periodCandidateSetSpec0187
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0187_primeCounting_step :
    Nat.primeCounting (187 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (187 * 30030 - 1) + 2020 := by
  exact period0187_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1916 ≤ 2020)
      (Nat.primeCounting (187 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
