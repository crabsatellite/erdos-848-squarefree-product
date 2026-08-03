import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0070
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0191 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 191)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1925)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0191

theorem periodCandidateSetSpec0191 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      191 30030 packedWheelOffsets
      0 5760 1925
      periodCandidates0191 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 191)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1925)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0191

theorem period0191_primeCounting_candidate_step :
    Nat.primeCounting (191 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (191 * 30030 - 1) + 1925 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 191)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1925)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0191
    periodCandidateSetSpec0191
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0191_primeCounting_step :
    Nat.primeCounting (191 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (191 * 30030 - 1) + 2020 := by
  exact period0191_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1925 ≤ 2020)
      (Nat.primeCounting (191 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
