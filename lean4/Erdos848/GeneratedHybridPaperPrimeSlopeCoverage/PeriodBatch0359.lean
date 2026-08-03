import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0359
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0480 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 480)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1826)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0480

theorem periodCandidateSetSpec0480 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      480 30030 packedWheelOffsets
      0 5760 1826
      periodCandidates0480 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 480)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1826)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0480

theorem period0480_primeCounting_candidate_step :
    Nat.primeCounting (480 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (480 * 30030 - 1) + 1826 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 480)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1826)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0480
    periodCandidateSetSpec0480
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0480_primeCounting_step :
    Nat.primeCounting (480 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (480 * 30030 - 1) + 2020 := by
  exact period0480_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1826 ≤ 2020)
      (Nat.primeCounting (480 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
