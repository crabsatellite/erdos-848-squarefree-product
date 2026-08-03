import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0287
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0408 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 408)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1842)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0408

theorem periodCandidateSetSpec0408 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      408 30030 packedWheelOffsets
      0 5760 1842
      periodCandidates0408 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 408)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1842)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0408

theorem period0408_primeCounting_candidate_step :
    Nat.primeCounting (408 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (408 * 30030 - 1) + 1842 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 408)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1842)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0408
    periodCandidateSetSpec0408
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0408_primeCounting_step :
    Nat.primeCounting (408 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (408 * 30030 - 1) + 2020 := by
  exact period0408_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1842 ≤ 2020)
      (Nat.primeCounting (408 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
