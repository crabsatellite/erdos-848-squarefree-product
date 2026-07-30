import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0087
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0208 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 208)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1933)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0208

theorem periodCandidateSetSpec0208 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      208 30030 packedWheelOffsets
      0 5760 1933
      periodCandidates0208 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 208)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1933)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0208

theorem period0208_primeCounting_candidate_step :
    Nat.primeCounting (208 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (208 * 30030 - 1) + 1933 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 208)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1933)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0208
    periodCandidateSetSpec0208
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0208_primeCounting_step :
    Nat.primeCounting (208 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (208 * 30030 - 1) + 2020 := by
  exact period0208_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1933 ≤ 2020)
      (Nat.primeCounting (208 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
