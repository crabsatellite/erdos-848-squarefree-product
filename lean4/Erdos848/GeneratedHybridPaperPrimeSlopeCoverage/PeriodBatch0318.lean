import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0318
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0439 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 439)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0439

theorem periodCandidateSetSpec0439 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      439 30030 packedWheelOffsets
      0 5760 1848
      periodCandidates0439 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 439)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0439

theorem period0439_primeCounting_candidate_step :
    Nat.primeCounting (439 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (439 * 30030 - 1) + 1848 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 439)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1848)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0439
    periodCandidateSetSpec0439
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0439_primeCounting_step :
    Nat.primeCounting (439 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (439 * 30030 - 1) + 2020 := by
  exact period0439_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1848 ≤ 2020)
      (Nat.primeCounting (439 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
