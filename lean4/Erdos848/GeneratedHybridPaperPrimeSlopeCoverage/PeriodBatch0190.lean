import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0190
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0311 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 311)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1884)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0311

theorem periodCandidateSetSpec0311 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      311 30030 packedWheelOffsets
      0 5760 1884
      periodCandidates0311 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 311)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1884)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0311

theorem period0311_primeCounting_candidate_step :
    Nat.primeCounting (311 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (311 * 30030 - 1) + 1884 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 311)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1884)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0311
    periodCandidateSetSpec0311
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0311_primeCounting_step :
    Nat.primeCounting (311 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (311 * 30030 - 1) + 2020 := by
  exact period0311_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1884 ≤ 2020)
      (Nat.primeCounting (311 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
