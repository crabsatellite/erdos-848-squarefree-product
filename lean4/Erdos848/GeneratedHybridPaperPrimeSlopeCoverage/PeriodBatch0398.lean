import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0398
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0519 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 519)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1836)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0519

theorem periodCandidateSetSpec0519 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      519 30030 packedWheelOffsets
      0 5760 1836
      periodCandidates0519 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 519)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1836)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0519

theorem period0519_primeCounting_candidate_step :
    Nat.primeCounting (519 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (519 * 30030 - 1) + 1836 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 519)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1836)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0519
    periodCandidateSetSpec0519
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0519_primeCounting_step :
    Nat.primeCounting (519 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (519 * 30030 - 1) + 2020 := by
  exact period0519_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1836 ≤ 2020)
      (Nat.primeCounting (519 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
