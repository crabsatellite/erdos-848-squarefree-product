import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0371
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0492 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 492)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1817)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0492

theorem periodCandidateSetSpec0492 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      492 30030 packedWheelOffsets
      0 5760 1817
      periodCandidates0492 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 492)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1817)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0492

theorem period0492_primeCounting_candidate_step :
    Nat.primeCounting (492 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (492 * 30030 - 1) + 1817 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 492)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1817)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0492
    periodCandidateSetSpec0492
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0492_primeCounting_step :
    Nat.primeCounting (492 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (492 * 30030 - 1) + 2020 := by
  exact period0492_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1817 ≤ 2020)
      (Nat.primeCounting (492 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
