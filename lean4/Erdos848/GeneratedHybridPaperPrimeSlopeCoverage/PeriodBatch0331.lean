import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0331
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0452 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 452)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1838)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0452

theorem periodCandidateSetSpec0452 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      452 30030 packedWheelOffsets
      0 5760 1838
      periodCandidates0452 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 452)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1838)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0452

theorem period0452_primeCounting_candidate_step :
    Nat.primeCounting (452 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (452 * 30030 - 1) + 1838 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 452)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1838)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0452
    periodCandidateSetSpec0452
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0452_primeCounting_step :
    Nat.primeCounting (452 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (452 * 30030 - 1) + 2020 := by
  exact period0452_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1838 ≤ 2020)
      (Nat.primeCounting (452 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
