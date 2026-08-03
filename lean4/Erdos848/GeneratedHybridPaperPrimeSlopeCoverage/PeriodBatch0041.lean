import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0041
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0162 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 162)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1986)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0162

theorem periodCandidateSetSpec0162 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      162 30030 packedWheelOffsets
      0 5760 1986
      periodCandidates0162 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 162)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1986)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0162

theorem period0162_primeCounting_candidate_step :
    Nat.primeCounting (162 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (162 * 30030 - 1) + 1986 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 162)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1986)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0162
    periodCandidateSetSpec0162
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0162_primeCounting_step :
    Nat.primeCounting (162 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (162 * 30030 - 1) + 2020 := by
  exact period0162_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1986 ≤ 2020)
      (Nat.primeCounting (162 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
