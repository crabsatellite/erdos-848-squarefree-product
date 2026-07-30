import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0197
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0318 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 318)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1868)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0318

theorem periodCandidateSetSpec0318 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      318 30030 packedWheelOffsets
      0 5760 1868
      periodCandidates0318 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 318)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1868)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0318

theorem period0318_primeCounting_candidate_step :
    Nat.primeCounting (318 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (318 * 30030 - 1) + 1868 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 318)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1868)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0318
    periodCandidateSetSpec0318
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0318_primeCounting_step :
    Nat.primeCounting (318 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (318 * 30030 - 1) + 2020 := by
  exact period0318_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1868 ≤ 2020)
      (Nat.primeCounting (318 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
