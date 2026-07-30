import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0115
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0236 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 236)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1932)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0236

theorem periodCandidateSetSpec0236 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      236 30030 packedWheelOffsets
      0 5760 1932
      periodCandidates0236 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 236)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1932)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0236

theorem period0236_primeCounting_candidate_step :
    Nat.primeCounting (236 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (236 * 30030 - 1) + 1932 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 236)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1932)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0236
    periodCandidateSetSpec0236
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0236_primeCounting_step :
    Nat.primeCounting (236 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (236 * 30030 - 1) + 2020 := by
  exact period0236_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1932 ≤ 2020)
      (Nat.primeCounting (236 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
