import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0089
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0210 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 210)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1918)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0210

theorem periodCandidateSetSpec0210 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      210 30030 packedWheelOffsets
      0 5760 1918
      periodCandidates0210 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 210)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1918)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0210

theorem period0210_primeCounting_candidate_step :
    Nat.primeCounting (210 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (210 * 30030 - 1) + 1918 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 210)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1918)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0210
    periodCandidateSetSpec0210
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0210_primeCounting_step :
    Nat.primeCounting (210 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (210 * 30030 - 1) + 2020 := by
  exact period0210_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1918 ≤ 2020)
      (Nat.primeCounting (210 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
