import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0396
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0517 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 517)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1835)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0517

theorem periodCandidateSetSpec0517 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      517 30030 packedWheelOffsets
      0 5760 1835
      periodCandidates0517 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 517)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1835)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0517

theorem period0517_primeCounting_candidate_step :
    Nat.primeCounting (517 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (517 * 30030 - 1) + 1835 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 517)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1835)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0517
    periodCandidateSetSpec0517
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0517_primeCounting_step :
    Nat.primeCounting (517 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (517 * 30030 - 1) + 2020 := by
  exact period0517_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1835 ≤ 2020)
      (Nat.primeCounting (517 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
