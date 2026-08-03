import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0392
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0513 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 513)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1802)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0513

theorem periodCandidateSetSpec0513 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      513 30030 packedWheelOffsets
      0 5760 1802
      periodCandidates0513 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 513)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1802)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0513

theorem period0513_primeCounting_candidate_step :
    Nat.primeCounting (513 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (513 * 30030 - 1) + 1802 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 513)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1802)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0513
    periodCandidateSetSpec0513
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0513_primeCounting_step :
    Nat.primeCounting (513 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (513 * 30030 - 1) + 2020 := by
  exact period0513_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1802 ≤ 2020)
      (Nat.primeCounting (513 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
