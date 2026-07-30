import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0157
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0278 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 278)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1872)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0278

theorem periodCandidateSetSpec0278 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      278 30030 packedWheelOffsets
      0 5760 1872
      periodCandidates0278 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 278)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1872)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0278

theorem period0278_primeCounting_candidate_step :
    Nat.primeCounting (278 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (278 * 30030 - 1) + 1872 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 278)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1872)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0278
    periodCandidateSetSpec0278
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0278_primeCounting_step :
    Nat.primeCounting (278 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (278 * 30030 - 1) + 2020 := by
  exact period0278_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1872 ≤ 2020)
      (Nat.primeCounting (278 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
