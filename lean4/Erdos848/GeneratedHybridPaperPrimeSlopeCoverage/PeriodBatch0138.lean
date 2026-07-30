import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0138
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0259 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 259)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1889)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0259

theorem periodCandidateSetSpec0259 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      259 30030 packedWheelOffsets
      0 5760 1889
      periodCandidates0259 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 259)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1889)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0259

theorem period0259_primeCounting_candidate_step :
    Nat.primeCounting (259 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (259 * 30030 - 1) + 1889 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 259)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1889)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0259
    periodCandidateSetSpec0259
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0259_primeCounting_step :
    Nat.primeCounting (259 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (259 * 30030 - 1) + 2020 := by
  exact period0259_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1889 ≤ 2020)
      (Nat.primeCounting (259 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
