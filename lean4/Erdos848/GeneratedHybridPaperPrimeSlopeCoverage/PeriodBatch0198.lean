import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0198
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0319 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 319)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1895)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0319

theorem periodCandidateSetSpec0319 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      319 30030 packedWheelOffsets
      0 5760 1895
      periodCandidates0319 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 319)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1895)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0319

theorem period0319_primeCounting_candidate_step :
    Nat.primeCounting (319 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (319 * 30030 - 1) + 1895 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 319)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1895)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0319
    periodCandidateSetSpec0319
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0319_primeCounting_step :
    Nat.primeCounting (319 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (319 * 30030 - 1) + 2020 := by
  exact period0319_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1895 ≤ 2020)
      (Nat.primeCounting (319 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
