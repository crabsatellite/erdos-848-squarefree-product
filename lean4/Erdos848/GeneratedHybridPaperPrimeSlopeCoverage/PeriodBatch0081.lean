import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0081
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0202 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 202)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1913)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0202

theorem periodCandidateSetSpec0202 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      202 30030 packedWheelOffsets
      0 5760 1913
      periodCandidates0202 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 202)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1913)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0202

theorem period0202_primeCounting_candidate_step :
    Nat.primeCounting (202 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (202 * 30030 - 1) + 1913 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 202)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1913)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0202
    periodCandidateSetSpec0202
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0202_primeCounting_step :
    Nat.primeCounting (202 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (202 * 30030 - 1) + 2020 := by
  exact period0202_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1913 ≤ 2020)
      (Nat.primeCounting (202 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
