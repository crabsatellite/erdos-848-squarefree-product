import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0048
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0169 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 169)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1945)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0169

theorem periodCandidateSetSpec0169 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      169 30030 packedWheelOffsets
      0 5760 1945
      periodCandidates0169 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 169)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1945)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0169

theorem period0169_primeCounting_candidate_step :
    Nat.primeCounting (169 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (169 * 30030 - 1) + 1945 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 169)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1945)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0169
    periodCandidateSetSpec0169
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0169_primeCounting_step :
    Nat.primeCounting (169 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (169 * 30030 - 1) + 2020 := by
  exact period0169_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1945 ≤ 2020)
      (Nat.primeCounting (169 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
