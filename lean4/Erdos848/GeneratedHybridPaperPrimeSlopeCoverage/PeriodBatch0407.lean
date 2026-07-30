import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0407
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0528 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 528)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1820)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0528

theorem periodCandidateSetSpec0528 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      528 30030 packedWheelOffsets
      0 5760 1820
      periodCandidates0528 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 528)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1820)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0528

theorem period0528_primeCounting_candidate_step :
    Nat.primeCounting (528 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (528 * 30030 - 1) + 1820 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 528)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1820)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0528
    periodCandidateSetSpec0528
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0528_primeCounting_step :
    Nat.primeCounting (528 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (528 * 30030 - 1) + 2020 := by
  exact period0528_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1820 ≤ 2020)
      (Nat.primeCounting (528 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
