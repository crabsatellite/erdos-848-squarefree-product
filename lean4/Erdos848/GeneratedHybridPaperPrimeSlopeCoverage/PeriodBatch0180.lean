import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0180
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0301 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 301)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0301

theorem periodCandidateSetSpec0301 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      301 30030 packedWheelOffsets
      0 5760 1870
      periodCandidates0301 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 301)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0301

theorem period0301_primeCounting_candidate_step :
    Nat.primeCounting (301 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (301 * 30030 - 1) + 1870 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 301)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1870)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0301
    periodCandidateSetSpec0301
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0301_primeCounting_step :
    Nat.primeCounting (301 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (301 * 30030 - 1) + 2020 := by
  exact period0301_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1870 ≤ 2020)
      (Nat.primeCounting (301 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
