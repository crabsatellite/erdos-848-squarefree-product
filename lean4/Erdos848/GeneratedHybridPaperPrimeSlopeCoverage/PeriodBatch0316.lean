import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0316
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0437 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 437)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1840)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0437

theorem periodCandidateSetSpec0437 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      437 30030 packedWheelOffsets
      0 5760 1840
      periodCandidates0437 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 437)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1840)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0437

theorem period0437_primeCounting_candidate_step :
    Nat.primeCounting (437 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (437 * 30030 - 1) + 1840 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 437)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1840)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0437
    periodCandidateSetSpec0437
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0437_primeCounting_step :
    Nat.primeCounting (437 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (437 * 30030 - 1) + 2020 := by
  exact period0437_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1840 ≤ 2020)
      (Nat.primeCounting (437 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
