import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0402
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0523 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 523)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1798)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0523

theorem periodCandidateSetSpec0523 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      523 30030 packedWheelOffsets
      0 5760 1798
      periodCandidates0523 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 523)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1798)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0523

theorem period0523_primeCounting_candidate_step :
    Nat.primeCounting (523 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (523 * 30030 - 1) + 1798 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 523)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1798)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0523
    periodCandidateSetSpec0523
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0523_primeCounting_step :
    Nat.primeCounting (523 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (523 * 30030 - 1) + 2020 := by
  exact period0523_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1798 ≤ 2020)
      (Nat.primeCounting (523 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
