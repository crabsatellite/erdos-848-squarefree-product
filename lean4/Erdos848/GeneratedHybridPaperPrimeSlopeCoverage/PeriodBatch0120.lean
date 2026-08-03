import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0120
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0241 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 241)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1926)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0241

theorem periodCandidateSetSpec0241 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      241 30030 packedWheelOffsets
      0 5760 1926
      periodCandidates0241 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 241)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1926)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0241

theorem period0241_primeCounting_candidate_step :
    Nat.primeCounting (241 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (241 * 30030 - 1) + 1926 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 241)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1926)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0241
    periodCandidateSetSpec0241
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0241_primeCounting_step :
    Nat.primeCounting (241 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (241 * 30030 - 1) + 2020 := by
  exact period0241_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1926 ≤ 2020)
      (Nat.primeCounting (241 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
