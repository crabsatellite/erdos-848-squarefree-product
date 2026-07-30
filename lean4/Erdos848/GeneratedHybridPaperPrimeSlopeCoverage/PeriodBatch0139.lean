import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0139
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0260 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 260)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1887)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0260

theorem periodCandidateSetSpec0260 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      260 30030 packedWheelOffsets
      0 5760 1887
      periodCandidates0260 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 260)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1887)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0260

theorem period0260_primeCounting_candidate_step :
    Nat.primeCounting (260 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (260 * 30030 - 1) + 1887 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 260)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1887)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0260
    periodCandidateSetSpec0260
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0260_primeCounting_step :
    Nat.primeCounting (260 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (260 * 30030 - 1) + 2020 := by
  exact period0260_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1887 ≤ 2020)
      (Nat.primeCounting (260 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
