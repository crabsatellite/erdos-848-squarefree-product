import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0242
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0363 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 363)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1869)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0363

theorem periodCandidateSetSpec0363 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      363 30030 packedWheelOffsets
      0 5760 1869
      periodCandidates0363 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 363)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1869)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0363

theorem period0363_primeCounting_candidate_step :
    Nat.primeCounting (363 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (363 * 30030 - 1) + 1869 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 363)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1869)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0363
    periodCandidateSetSpec0363
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0363_primeCounting_step :
    Nat.primeCounting (363 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (363 * 30030 - 1) + 2020 := by
  exact period0363_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1869 ≤ 2020)
      (Nat.primeCounting (363 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
