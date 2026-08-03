import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0259
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0380 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 380)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1824)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0380

theorem periodCandidateSetSpec0380 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      380 30030 packedWheelOffsets
      0 5760 1824
      periodCandidates0380 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 380)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1824)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0380

theorem period0380_primeCounting_candidate_step :
    Nat.primeCounting (380 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (380 * 30030 - 1) + 1824 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 380)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1824)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0380
    periodCandidateSetSpec0380
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0380_primeCounting_step :
    Nat.primeCounting (380 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (380 * 30030 - 1) + 2020 := by
  exact period0380_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1824 ≤ 2020)
      (Nat.primeCounting (380 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
