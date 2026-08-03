import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0100
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0221 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 221)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1897)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0221

theorem periodCandidateSetSpec0221 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      221 30030 packedWheelOffsets
      0 5760 1897
      periodCandidates0221 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 221)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1897)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0221

theorem period0221_primeCounting_candidate_step :
    Nat.primeCounting (221 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (221 * 30030 - 1) + 1897 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 221)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1897)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0221
    periodCandidateSetSpec0221
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0221_primeCounting_step :
    Nat.primeCounting (221 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (221 * 30030 - 1) + 2020 := by
  exact period0221_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1897 ≤ 2020)
      (Nat.primeCounting (221 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
