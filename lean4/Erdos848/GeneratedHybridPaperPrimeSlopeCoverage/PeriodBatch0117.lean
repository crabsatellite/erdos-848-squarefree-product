import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0117
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0238 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 238)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1887)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0238

theorem periodCandidateSetSpec0238 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      238 30030 packedWheelOffsets
      0 5760 1887
      periodCandidates0238 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 238)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1887)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0238

theorem period0238_primeCounting_candidate_step :
    Nat.primeCounting (238 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (238 * 30030 - 1) + 1887 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 238)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1887)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0238
    periodCandidateSetSpec0238
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0238_primeCounting_step :
    Nat.primeCounting (238 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (238 * 30030 - 1) + 2020 := by
  exact period0238_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1887 ≤ 2020)
      (Nat.primeCounting (238 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
