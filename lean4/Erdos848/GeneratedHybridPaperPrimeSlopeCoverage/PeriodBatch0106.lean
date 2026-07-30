import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0106
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0227 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 227)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1924)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0227

theorem periodCandidateSetSpec0227 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      227 30030 packedWheelOffsets
      0 5760 1924
      periodCandidates0227 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 227)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1924)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0227

theorem period0227_primeCounting_candidate_step :
    Nat.primeCounting (227 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (227 * 30030 - 1) + 1924 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 227)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1924)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0227
    periodCandidateSetSpec0227
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0227_primeCounting_step :
    Nat.primeCounting (227 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (227 * 30030 - 1) + 2020 := by
  exact period0227_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1924 ≤ 2020)
      (Nat.primeCounting (227 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
