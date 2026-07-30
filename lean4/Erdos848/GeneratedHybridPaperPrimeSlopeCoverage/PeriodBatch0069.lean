import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0069
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0190 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 190)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1922)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0190

theorem periodCandidateSetSpec0190 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      190 30030 packedWheelOffsets
      0 5760 1922
      periodCandidates0190 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 190)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1922)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0190

theorem period0190_primeCounting_candidate_step :
    Nat.primeCounting (190 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (190 * 30030 - 1) + 1922 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 190)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1922)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0190
    periodCandidateSetSpec0190
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0190_primeCounting_step :
    Nat.primeCounting (190 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (190 * 30030 - 1) + 2020 := by
  exact period0190_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1922 ≤ 2020)
      (Nat.primeCounting (190 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
