import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0329
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0450 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 450)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1817)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0450

theorem periodCandidateSetSpec0450 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      450 30030 packedWheelOffsets
      0 5760 1817
      periodCandidates0450 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 450)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1817)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0450

theorem period0450_primeCounting_candidate_step :
    Nat.primeCounting (450 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (450 * 30030 - 1) + 1817 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 450)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1817)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0450
    periodCandidateSetSpec0450
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0450_primeCounting_step :
    Nat.primeCounting (450 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (450 * 30030 - 1) + 2020 := by
  exact period0450_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1817 ≤ 2020)
      (Nat.primeCounting (450 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
