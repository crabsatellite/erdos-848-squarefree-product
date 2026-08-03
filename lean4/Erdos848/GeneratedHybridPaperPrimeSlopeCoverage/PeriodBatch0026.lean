import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0026
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0147 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 147)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2011)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0147

theorem periodCandidateSetSpec0147 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      147 30030 packedWheelOffsets
      0 5760 2011
      periodCandidates0147 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 147)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 2011)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0147

theorem period0147_primeCounting_candidate_step :
    Nat.primeCounting (147 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (147 * 30030 - 1) + 2011 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 147)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 2011)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0147
    periodCandidateSetSpec0147
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0147_primeCounting_step :
    Nat.primeCounting (147 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (147 * 30030 - 1) + 2020 := by
  exact period0147_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 2011 ≤ 2020)
      (Nat.primeCounting (147 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
