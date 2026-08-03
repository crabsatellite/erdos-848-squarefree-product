import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0296
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0417 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 417)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1815)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0417

theorem periodCandidateSetSpec0417 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      417 30030 packedWheelOffsets
      0 5760 1815
      periodCandidates0417 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 417)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1815)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0417

theorem period0417_primeCounting_candidate_step :
    Nat.primeCounting (417 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (417 * 30030 - 1) + 1815 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 417)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1815)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0417
    periodCandidateSetSpec0417
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0417_primeCounting_step :
    Nat.primeCounting (417 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (417 * 30030 - 1) + 2020 := by
  exact period0417_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1815 ≤ 2020)
      (Nat.primeCounting (417 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
