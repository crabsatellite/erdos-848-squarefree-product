import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0325
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0446 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 446)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1805)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0446

theorem periodCandidateSetSpec0446 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      446 30030 packedWheelOffsets
      0 5760 1805
      periodCandidates0446 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 446)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1805)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0446

theorem period0446_primeCounting_candidate_step :
    Nat.primeCounting (446 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (446 * 30030 - 1) + 1805 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 446)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1805)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0446
    periodCandidateSetSpec0446
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0446_primeCounting_step :
    Nat.primeCounting (446 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (446 * 30030 - 1) + 2020 := by
  exact period0446_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1805 ≤ 2020)
      (Nat.primeCounting (446 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
