import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0095
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0216 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 216)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1916)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0216

theorem periodCandidateSetSpec0216 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      216 30030 packedWheelOffsets
      0 5760 1916
      periodCandidates0216 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 216)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1916)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0216

theorem period0216_primeCounting_candidate_step :
    Nat.primeCounting (216 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (216 * 30030 - 1) + 1916 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 216)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1916)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0216
    periodCandidateSetSpec0216
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0216_primeCounting_step :
    Nat.primeCounting (216 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (216 * 30030 - 1) + 2020 := by
  exact period0216_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1916 ≤ 2020)
      (Nat.primeCounting (216 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
