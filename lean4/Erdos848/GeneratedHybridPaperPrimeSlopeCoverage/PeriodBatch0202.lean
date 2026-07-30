import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0202
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0323 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 323)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0323

theorem periodCandidateSetSpec0323 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      323 30030 packedWheelOffsets
      0 5760 1870
      periodCandidates0323 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 323)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0323

theorem period0323_primeCounting_candidate_step :
    Nat.primeCounting (323 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (323 * 30030 - 1) + 1870 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 323)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0323
    periodCandidateSetSpec0323
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0323_primeCounting_step :
    Nat.primeCounting (323 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (323 * 30030 - 1) + 2020 := by
  exact period0323_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1870 ≤ 2020)
      (Nat.primeCounting (323 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
