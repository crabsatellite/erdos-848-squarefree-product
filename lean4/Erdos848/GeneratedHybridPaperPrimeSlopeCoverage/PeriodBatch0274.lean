import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0274
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0395 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 395)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1852)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0395

theorem periodCandidateSetSpec0395 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      395 30030 packedWheelOffsets
      0 5760 1852
      periodCandidates0395 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 395)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1852)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0395

theorem period0395_primeCounting_candidate_step :
    Nat.primeCounting (395 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (395 * 30030 - 1) + 1852 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 395)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1852)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0395
    periodCandidateSetSpec0395
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0395_primeCounting_step :
    Nat.primeCounting (395 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (395 * 30030 - 1) + 2020 := by
  exact period0395_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1852 ≤ 2020)
      (Nat.primeCounting (395 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
