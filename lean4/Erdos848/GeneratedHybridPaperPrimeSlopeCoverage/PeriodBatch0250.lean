import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0250
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0371 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 371)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0371

theorem periodCandidateSetSpec0371 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      371 30030 packedWheelOffsets
      0 5760 1870
      periodCandidates0371 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 371)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0371

theorem period0371_primeCounting_candidate_step :
    Nat.primeCounting (371 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (371 * 30030 - 1) + 1870 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 371)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0371
    periodCandidateSetSpec0371
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0371_primeCounting_step :
    Nat.primeCounting (371 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (371 * 30030 - 1) + 2020 := by
  exact period0371_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1870 ≤ 2020)
      (Nat.primeCounting (371 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
