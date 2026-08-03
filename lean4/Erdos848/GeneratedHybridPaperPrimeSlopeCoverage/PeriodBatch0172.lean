import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0172
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0293 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 293)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1881)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0293

theorem periodCandidateSetSpec0293 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      293 30030 packedWheelOffsets
      0 5760 1881
      periodCandidates0293 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 293)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1881)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0293

theorem period0293_primeCounting_candidate_step :
    Nat.primeCounting (293 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (293 * 30030 - 1) + 1881 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 293)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1881)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0293
    periodCandidateSetSpec0293
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0293_primeCounting_step :
    Nat.primeCounting (293 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (293 * 30030 - 1) + 2020 := by
  exact period0293_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1881 ≤ 2020)
      (Nat.primeCounting (293 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
