import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0005
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0126 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 126)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1986)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0126

theorem periodCandidateSetSpec0126 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      126 30030 packedWheelOffsets
      0 5760 1986
      periodCandidates0126 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 126)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1986)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0126

theorem period0126_primeCounting_candidate_step :
    Nat.primeCounting (126 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (126 * 30030 - 1) + 1986 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 126)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1986)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0126
    periodCandidateSetSpec0126
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0126_primeCounting_step :
    Nat.primeCounting (126 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (126 * 30030 - 1) + 2020 := by
  exact period0126_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1986 ≤ 2020)
      (Nat.primeCounting (126 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
