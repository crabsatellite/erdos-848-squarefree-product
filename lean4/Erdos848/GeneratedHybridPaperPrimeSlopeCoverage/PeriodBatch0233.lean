import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0233
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0354 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 354)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1854)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0354

theorem periodCandidateSetSpec0354 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      354 30030 packedWheelOffsets
      0 5760 1854
      periodCandidates0354 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 354)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1854)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0354

theorem period0354_primeCounting_candidate_step :
    Nat.primeCounting (354 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (354 * 30030 - 1) + 1854 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 354)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1854)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0354
    periodCandidateSetSpec0354
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0354_primeCounting_step :
    Nat.primeCounting (354 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (354 * 30030 - 1) + 2020 := by
  exact period0354_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1854 ≤ 2020)
      (Nat.primeCounting (354 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
