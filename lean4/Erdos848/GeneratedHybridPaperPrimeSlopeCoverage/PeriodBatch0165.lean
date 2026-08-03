import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0165
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0286 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 286)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1899)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0286

theorem periodCandidateSetSpec0286 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      286 30030 packedWheelOffsets
      0 5760 1899
      periodCandidates0286 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 286)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1899)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0286

theorem period0286_primeCounting_candidate_step :
    Nat.primeCounting (286 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (286 * 30030 - 1) + 1899 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 286)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1899)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0286
    periodCandidateSetSpec0286
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0286_primeCounting_step :
    Nat.primeCounting (286 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (286 * 30030 - 1) + 2020 := by
  exact period0286_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1899 ≤ 2020)
      (Nat.primeCounting (286 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
