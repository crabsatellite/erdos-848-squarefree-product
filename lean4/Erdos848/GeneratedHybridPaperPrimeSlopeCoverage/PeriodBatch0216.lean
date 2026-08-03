import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0216
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0337 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 337)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1876)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0337

theorem periodCandidateSetSpec0337 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      337 30030 packedWheelOffsets
      0 5760 1876
      periodCandidates0337 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 337)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1876)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0337

theorem period0337_primeCounting_candidate_step :
    Nat.primeCounting (337 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (337 * 30030 - 1) + 1876 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 337)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1876)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0337
    periodCandidateSetSpec0337
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0337_primeCounting_step :
    Nat.primeCounting (337 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (337 * 30030 - 1) + 2020 := by
  exact period0337_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1876 ≤ 2020)
      (Nat.primeCounting (337 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
