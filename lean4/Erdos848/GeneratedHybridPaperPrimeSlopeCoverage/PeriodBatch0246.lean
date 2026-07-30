import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0246
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0367 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 367)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1857)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0367

theorem periodCandidateSetSpec0367 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      367 30030 packedWheelOffsets
      0 5760 1857
      periodCandidates0367 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 367)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1857)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0367

theorem period0367_primeCounting_candidate_step :
    Nat.primeCounting (367 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (367 * 30030 - 1) + 1857 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 367)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1857)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0367
    periodCandidateSetSpec0367
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0367_primeCounting_step :
    Nat.primeCounting (367 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (367 * 30030 - 1) + 2020 := by
  exact period0367_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1857 ≤ 2020)
      (Nat.primeCounting (367 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
