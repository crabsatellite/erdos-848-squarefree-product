import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0280
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0401 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 401)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1850)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0401

theorem periodCandidateSetSpec0401 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      401 30030 packedWheelOffsets
      0 5760 1850
      periodCandidates0401 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 401)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1850)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0401

theorem period0401_primeCounting_candidate_step :
    Nat.primeCounting (401 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (401 * 30030 - 1) + 1850 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 401)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1850)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0401
    periodCandidateSetSpec0401
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0401_primeCounting_step :
    Nat.primeCounting (401 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (401 * 30030 - 1) + 2020 := by
  exact period0401_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1850 ≤ 2020)
      (Nat.primeCounting (401 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
