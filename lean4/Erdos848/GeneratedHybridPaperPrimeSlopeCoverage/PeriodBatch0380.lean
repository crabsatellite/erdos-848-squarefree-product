import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0380
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0501 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 501)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1800)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0501

theorem periodCandidateSetSpec0501 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      501 30030 packedWheelOffsets
      0 5760 1800
      periodCandidates0501 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 501)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1800)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0501

theorem period0501_primeCounting_candidate_step :
    Nat.primeCounting (501 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (501 * 30030 - 1) + 1800 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 501)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1800)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0501
    periodCandidateSetSpec0501
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0501_primeCounting_step :
    Nat.primeCounting (501 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (501 * 30030 - 1) + 2020 := by
  exact period0501_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1800 ≤ 2020)
      (Nat.primeCounting (501 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
