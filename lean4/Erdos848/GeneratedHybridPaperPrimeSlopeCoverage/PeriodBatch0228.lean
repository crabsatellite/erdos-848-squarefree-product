import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0228
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0349 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 349)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1876)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0349

theorem periodCandidateSetSpec0349 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      349 30030 packedWheelOffsets
      0 5760 1876
      periodCandidates0349 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 349)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1876)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0349

theorem period0349_primeCounting_candidate_step :
    Nat.primeCounting (349 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (349 * 30030 - 1) + 1876 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 349)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1876)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0349
    periodCandidateSetSpec0349
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0349_primeCounting_step :
    Nat.primeCounting (349 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (349 * 30030 - 1) + 2020 := by
  exact period0349_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1876 ≤ 2020)
      (Nat.primeCounting (349 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
