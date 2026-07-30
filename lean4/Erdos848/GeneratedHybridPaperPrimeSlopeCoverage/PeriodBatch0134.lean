import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0134
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0255 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 255)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1903)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0255

theorem periodCandidateSetSpec0255 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      255 30030 packedWheelOffsets
      0 5760 1903
      periodCandidates0255 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 255)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1903)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0255

theorem period0255_primeCounting_candidate_step :
    Nat.primeCounting (255 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (255 * 30030 - 1) + 1903 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 255)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1903)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0255
    periodCandidateSetSpec0255
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0255_primeCounting_step :
    Nat.primeCounting (255 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (255 * 30030 - 1) + 2020 := by
  exact period0255_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1903 ≤ 2020)
      (Nat.primeCounting (255 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
