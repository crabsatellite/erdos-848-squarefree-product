import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0298
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0419 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 419)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1873)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0419

theorem periodCandidateSetSpec0419 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      419 30030 packedWheelOffsets
      0 5760 1873
      periodCandidates0419 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 419)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1873)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0419

theorem period0419_primeCounting_candidate_step :
    Nat.primeCounting (419 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (419 * 30030 - 1) + 1873 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 419)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1873)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0419
    periodCandidateSetSpec0419
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0419_primeCounting_step :
    Nat.primeCounting (419 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (419 * 30030 - 1) + 2020 := by
  exact period0419_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1873 ≤ 2020)
      (Nat.primeCounting (419 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
