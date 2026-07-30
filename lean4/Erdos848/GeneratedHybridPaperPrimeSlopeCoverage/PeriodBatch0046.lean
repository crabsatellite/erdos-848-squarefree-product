import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0046
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0167 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 167)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1951)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0167

theorem periodCandidateSetSpec0167 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      167 30030 packedWheelOffsets
      0 5760 1951
      periodCandidates0167 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 167)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1951)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0167

theorem period0167_primeCounting_candidate_step :
    Nat.primeCounting (167 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (167 * 30030 - 1) + 1951 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 167)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1951)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0167
    periodCandidateSetSpec0167
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0167_primeCounting_step :
    Nat.primeCounting (167 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (167 * 30030 - 1) + 2020 := by
  exact period0167_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1951 ≤ 2020)
      (Nat.primeCounting (167 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
