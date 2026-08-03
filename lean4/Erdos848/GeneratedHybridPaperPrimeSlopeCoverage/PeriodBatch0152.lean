import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0152
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0273 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 273)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1913)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0273

theorem periodCandidateSetSpec0273 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      273 30030 packedWheelOffsets
      0 5760 1913
      periodCandidates0273 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 273)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1913)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0273

theorem period0273_primeCounting_candidate_step :
    Nat.primeCounting (273 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (273 * 30030 - 1) + 1913 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 273)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1913)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0273
    periodCandidateSetSpec0273
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0273_primeCounting_step :
    Nat.primeCounting (273 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (273 * 30030 - 1) + 2020 := by
  exact period0273_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1913 ≤ 2020)
      (Nat.primeCounting (273 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
