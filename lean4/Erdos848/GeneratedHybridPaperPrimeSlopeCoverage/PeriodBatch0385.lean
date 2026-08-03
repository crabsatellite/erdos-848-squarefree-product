import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0385
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0506 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 506)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1798)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0506

theorem periodCandidateSetSpec0506 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      506 30030 packedWheelOffsets
      0 5760 1798
      periodCandidates0506 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 506)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1798)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0506

theorem period0506_primeCounting_candidate_step :
    Nat.primeCounting (506 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (506 * 30030 - 1) + 1798 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 506)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1798)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0506
    periodCandidateSetSpec0506
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0506_primeCounting_step :
    Nat.primeCounting (506 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (506 * 30030 - 1) + 2020 := by
  exact period0506_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1798 ≤ 2020)
      (Nat.primeCounting (506 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
