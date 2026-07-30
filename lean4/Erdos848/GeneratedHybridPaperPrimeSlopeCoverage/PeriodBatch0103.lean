import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0103
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0224 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 224)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1921)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0224

theorem periodCandidateSetSpec0224 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      224 30030 packedWheelOffsets
      0 5760 1921
      periodCandidates0224 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 224)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1921)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0224

theorem period0224_primeCounting_candidate_step :
    Nat.primeCounting (224 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (224 * 30030 - 1) + 1921 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 224)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1921)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0224
    periodCandidateSetSpec0224
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0224_primeCounting_step :
    Nat.primeCounting (224 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (224 * 30030 - 1) + 2020 := by
  exact period0224_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1921 ≤ 2020)
      (Nat.primeCounting (224 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
