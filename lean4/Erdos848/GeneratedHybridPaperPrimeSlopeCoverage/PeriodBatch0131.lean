import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0131
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0252 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 252)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0252

theorem periodCandidateSetSpec0252 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      252 30030 packedWheelOffsets
      0 5760 1901
      periodCandidates0252 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 252)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0252

theorem period0252_primeCounting_candidate_step :
    Nat.primeCounting (252 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (252 * 30030 - 1) + 1901 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 252)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1901)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0252
    periodCandidateSetSpec0252
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0252_primeCounting_step :
    Nat.primeCounting (252 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (252 * 30030 - 1) + 2020 := by
  exact period0252_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1901 ≤ 2020)
      (Nat.primeCounting (252 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
