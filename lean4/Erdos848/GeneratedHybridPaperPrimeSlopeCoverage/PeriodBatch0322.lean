import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0322
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0443 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 443)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1830)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0443

theorem periodCandidateSetSpec0443 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      443 30030 packedWheelOffsets
      0 5760 1830
      periodCandidates0443 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 443)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1830)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0443

theorem period0443_primeCounting_candidate_step :
    Nat.primeCounting (443 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (443 * 30030 - 1) + 1830 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 443)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1830)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0443
    periodCandidateSetSpec0443
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0443_primeCounting_step :
    Nat.primeCounting (443 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (443 * 30030 - 1) + 2020 := by
  exact period0443_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1830 ≤ 2020)
      (Nat.primeCounting (443 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
