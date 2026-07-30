import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0178
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0299 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 299)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0299

theorem periodCandidateSetSpec0299 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      299 30030 packedWheelOffsets
      0 5760 1877
      periodCandidates0299 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 299)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0299

theorem period0299_primeCounting_candidate_step :
    Nat.primeCounting (299 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (299 * 30030 - 1) + 1877 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 299)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1877)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0299
    periodCandidateSetSpec0299
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0299_primeCounting_step :
    Nat.primeCounting (299 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (299 * 30030 - 1) + 2020 := by
  exact period0299_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1877 ≤ 2020)
      (Nat.primeCounting (299 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
