import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0334
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0455 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 455)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1854)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0455

theorem periodCandidateSetSpec0455 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      455 30030 packedWheelOffsets
      0 5760 1854
      periodCandidates0455 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 455)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1854)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0455

theorem period0455_primeCounting_candidate_step :
    Nat.primeCounting (455 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (455 * 30030 - 1) + 1854 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 455)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1854)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0455
    periodCandidateSetSpec0455
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0455_primeCounting_step :
    Nat.primeCounting (455 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (455 * 30030 - 1) + 2020 := by
  exact period0455_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1854 ≤ 2020)
      (Nat.primeCounting (455 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
