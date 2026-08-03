import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0265
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0386 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 386)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1897)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0386

theorem periodCandidateSetSpec0386 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      386 30030 packedWheelOffsets
      0 5760 1897
      periodCandidates0386 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 386)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1897)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0386

theorem period0386_primeCounting_candidate_step :
    Nat.primeCounting (386 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (386 * 30030 - 1) + 1897 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 386)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1897)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0386
    periodCandidateSetSpec0386
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0386_primeCounting_step :
    Nat.primeCounting (386 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (386 * 30030 - 1) + 2020 := by
  exact period0386_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1897 ≤ 2020)
      (Nat.primeCounting (386 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
