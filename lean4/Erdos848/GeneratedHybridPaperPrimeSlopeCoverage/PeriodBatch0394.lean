import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0394
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0515 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 515)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1803)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0515

theorem periodCandidateSetSpec0515 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      515 30030 packedWheelOffsets
      0 5760 1803
      periodCandidates0515 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 515)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1803)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0515

theorem period0515_primeCounting_candidate_step :
    Nat.primeCounting (515 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (515 * 30030 - 1) + 1803 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 515)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1803)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0515
    periodCandidateSetSpec0515
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0515_primeCounting_step :
    Nat.primeCounting (515 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (515 * 30030 - 1) + 2020 := by
  exact period0515_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1803 ≤ 2020)
      (Nat.primeCounting (515 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
