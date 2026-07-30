import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0307
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0428 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 428)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1836)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0428

theorem periodCandidateSetSpec0428 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      428 30030 packedWheelOffsets
      0 5760 1836
      periodCandidates0428 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 428)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1836)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0428

theorem period0428_primeCounting_candidate_step :
    Nat.primeCounting (428 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (428 * 30030 - 1) + 1836 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 428)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1836)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0428
    periodCandidateSetSpec0428
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0428_primeCounting_step :
    Nat.primeCounting (428 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (428 * 30030 - 1) + 2020 := by
  exact period0428_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1836 ≤ 2020)
      (Nat.primeCounting (428 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
