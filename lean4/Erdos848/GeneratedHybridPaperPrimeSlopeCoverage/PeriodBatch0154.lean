import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0154
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0275 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 275)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1886)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0275

theorem periodCandidateSetSpec0275 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      275 30030 packedWheelOffsets
      0 5760 1886
      periodCandidates0275 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 275)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1886)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0275

theorem period0275_primeCounting_candidate_step :
    Nat.primeCounting (275 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (275 * 30030 - 1) + 1886 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 275)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1886)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0275
    periodCandidateSetSpec0275
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0275_primeCounting_step :
    Nat.primeCounting (275 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (275 * 30030 - 1) + 2020 := by
  exact period0275_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1886 ≤ 2020)
      (Nat.primeCounting (275 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
