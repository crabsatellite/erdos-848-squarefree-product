import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0121
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0242 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 242)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1914)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0242

theorem periodCandidateSetSpec0242 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      242 30030 packedWheelOffsets
      0 5760 1914
      periodCandidates0242 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 242)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1914)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0242

theorem period0242_primeCounting_candidate_step :
    Nat.primeCounting (242 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (242 * 30030 - 1) + 1914 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 242)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1914)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0242
    periodCandidateSetSpec0242
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0242_primeCounting_step :
    Nat.primeCounting (242 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (242 * 30030 - 1) + 2020 := by
  exact period0242_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1914 ≤ 2020)
      (Nat.primeCounting (242 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
