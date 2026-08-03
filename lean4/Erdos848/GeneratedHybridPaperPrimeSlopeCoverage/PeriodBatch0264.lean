import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0264
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0385 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 385)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1860)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0385

theorem periodCandidateSetSpec0385 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      385 30030 packedWheelOffsets
      0 5760 1860
      periodCandidates0385 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 385)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1860)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0385

theorem period0385_primeCounting_candidate_step :
    Nat.primeCounting (385 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (385 * 30030 - 1) + 1860 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 385)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1860)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0385
    periodCandidateSetSpec0385
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0385_primeCounting_step :
    Nat.primeCounting (385 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (385 * 30030 - 1) + 2020 := by
  exact period0385_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1860 ≤ 2020)
      (Nat.primeCounting (385 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
