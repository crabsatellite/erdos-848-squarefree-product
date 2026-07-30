import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0156
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0277 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 277)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0277

theorem periodCandidateSetSpec0277 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      277 30030 packedWheelOffsets
      0 5760 1901
      periodCandidates0277 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 277)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0277

theorem period0277_primeCounting_candidate_step :
    Nat.primeCounting (277 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (277 * 30030 - 1) + 1901 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 277)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0277
    periodCandidateSetSpec0277
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0277_primeCounting_step :
    Nat.primeCounting (277 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (277 * 30030 - 1) + 2020 := by
  exact period0277_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1901 ≤ 2020)
      (Nat.primeCounting (277 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
