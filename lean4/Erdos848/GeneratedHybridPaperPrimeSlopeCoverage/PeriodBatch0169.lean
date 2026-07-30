import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0169
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0290 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 290)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1895)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0290

theorem periodCandidateSetSpec0290 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      290 30030 packedWheelOffsets
      0 5760 1895
      periodCandidates0290 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 290)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1895)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0290

theorem period0290_primeCounting_candidate_step :
    Nat.primeCounting (290 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (290 * 30030 - 1) + 1895 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 290)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1895)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0290
    periodCandidateSetSpec0290
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0290_primeCounting_step :
    Nat.primeCounting (290 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (290 * 30030 - 1) + 2020 := by
  exact period0290_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1895 ≤ 2020)
      (Nat.primeCounting (290 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
