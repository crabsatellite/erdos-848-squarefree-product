import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0256
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0377 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 377)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1839)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0377

theorem periodCandidateSetSpec0377 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      377 30030 packedWheelOffsets
      0 5760 1839
      periodCandidates0377 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 377)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1839)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0377

theorem period0377_primeCounting_candidate_step :
    Nat.primeCounting (377 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (377 * 30030 - 1) + 1839 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 377)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1839)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0377
    periodCandidateSetSpec0377
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0377_primeCounting_step :
    Nat.primeCounting (377 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (377 * 30030 - 1) + 2020 := by
  exact period0377_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1839 ≤ 2020)
      (Nat.primeCounting (377 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
