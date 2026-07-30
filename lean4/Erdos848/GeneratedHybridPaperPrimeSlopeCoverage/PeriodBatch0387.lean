import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0387
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0508 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 508)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1831)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0508

theorem periodCandidateSetSpec0508 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      508 30030 packedWheelOffsets
      0 5760 1831
      periodCandidates0508 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 508)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1831)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0508

theorem period0508_primeCounting_candidate_step :
    Nat.primeCounting (508 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (508 * 30030 - 1) + 1831 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 508)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1831)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0508
    periodCandidateSetSpec0508
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0508_primeCounting_step :
    Nat.primeCounting (508 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (508 * 30030 - 1) + 2020 := by
  exact period0508_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1831 ≤ 2020)
      (Nat.primeCounting (508 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
