import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0335
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0456 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 456)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1829)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0456

theorem periodCandidateSetSpec0456 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      456 30030 packedWheelOffsets
      0 5760 1829
      periodCandidates0456 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 456)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1829)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0456

theorem period0456_primeCounting_candidate_step :
    Nat.primeCounting (456 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (456 * 30030 - 1) + 1829 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 456)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1829)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0456
    periodCandidateSetSpec0456
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0456_primeCounting_step :
    Nat.primeCounting (456 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (456 * 30030 - 1) + 2020 := by
  exact period0456_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1829 ≤ 2020)
      (Nat.primeCounting (456 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
