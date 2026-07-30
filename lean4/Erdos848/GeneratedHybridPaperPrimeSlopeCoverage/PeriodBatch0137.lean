import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0137
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0258 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 258)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1887)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0258

theorem periodCandidateSetSpec0258 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      258 30030 packedWheelOffsets
      0 5760 1887
      periodCandidates0258 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 258)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1887)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0258

theorem period0258_primeCounting_candidate_step :
    Nat.primeCounting (258 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (258 * 30030 - 1) + 1887 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 258)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1887)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0258
    periodCandidateSetSpec0258
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0258_primeCounting_step :
    Nat.primeCounting (258 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (258 * 30030 - 1) + 2020 := by
  exact period0258_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1887 ≤ 2020)
      (Nat.primeCounting (258 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
