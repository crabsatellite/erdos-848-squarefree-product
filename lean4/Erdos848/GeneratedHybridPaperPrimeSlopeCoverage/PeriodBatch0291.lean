import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0291
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0412 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 412)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1828)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0412

theorem periodCandidateSetSpec0412 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      412 30030 packedWheelOffsets
      0 5760 1828
      periodCandidates0412 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 412)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1828)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0412

theorem period0412_primeCounting_candidate_step :
    Nat.primeCounting (412 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (412 * 30030 - 1) + 1828 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 412)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1828)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0412
    periodCandidateSetSpec0412
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0412_primeCounting_step :
    Nat.primeCounting (412 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (412 * 30030 - 1) + 2020 := by
  exact period0412_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1828 ≤ 2020)
      (Nat.primeCounting (412 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
