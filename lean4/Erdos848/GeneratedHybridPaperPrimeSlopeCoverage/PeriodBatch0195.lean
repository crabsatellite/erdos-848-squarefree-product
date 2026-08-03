import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0195
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0316 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 316)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1871)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0316

theorem periodCandidateSetSpec0316 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      316 30030 packedWheelOffsets
      0 5760 1871
      periodCandidates0316 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 316)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1871)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0316

theorem period0316_primeCounting_candidate_step :
    Nat.primeCounting (316 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (316 * 30030 - 1) + 1871 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 316)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1871)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0316
    periodCandidateSetSpec0316
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0316_primeCounting_step :
    Nat.primeCounting (316 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (316 * 30030 - 1) + 2020 := by
  exact period0316_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1871 ≤ 2020)
      (Nat.primeCounting (316 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
