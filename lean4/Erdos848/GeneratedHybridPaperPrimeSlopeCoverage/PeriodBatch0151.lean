import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0151
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0272 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 272)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1879)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0272

theorem periodCandidateSetSpec0272 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      272 30030 packedWheelOffsets
      0 5760 1879
      periodCandidates0272 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 272)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1879)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0272

theorem period0272_primeCounting_candidate_step :
    Nat.primeCounting (272 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (272 * 30030 - 1) + 1879 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 272)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1879)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0272
    periodCandidateSetSpec0272
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0272_primeCounting_step :
    Nat.primeCounting (272 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (272 * 30030 - 1) + 2020 := by
  exact period0272_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1879 ≤ 2020)
      (Nat.primeCounting (272 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
