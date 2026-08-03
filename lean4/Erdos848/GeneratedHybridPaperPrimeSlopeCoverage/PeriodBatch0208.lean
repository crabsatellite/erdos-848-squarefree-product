import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0208
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0329 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 329)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1857)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0329

theorem periodCandidateSetSpec0329 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      329 30030 packedWheelOffsets
      0 5760 1857
      periodCandidates0329 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 329)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1857)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0329

theorem period0329_primeCounting_candidate_step :
    Nat.primeCounting (329 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (329 * 30030 - 1) + 1857 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 329)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1857)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0329
    periodCandidateSetSpec0329
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0329_primeCounting_step :
    Nat.primeCounting (329 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (329 * 30030 - 1) + 2020 := by
  exact period0329_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1857 ≤ 2020)
      (Nat.primeCounting (329 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
