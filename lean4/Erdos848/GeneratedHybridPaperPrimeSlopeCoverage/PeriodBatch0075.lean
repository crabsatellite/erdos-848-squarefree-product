import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0075
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0196 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 196)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1956)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0196

theorem periodCandidateSetSpec0196 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      196 30030 packedWheelOffsets
      0 5760 1956
      periodCandidates0196 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 196)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1956)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0196

theorem period0196_primeCounting_candidate_step :
    Nat.primeCounting (196 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (196 * 30030 - 1) + 1956 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 196)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1956)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0196
    periodCandidateSetSpec0196
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0196_primeCounting_step :
    Nat.primeCounting (196 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (196 * 30030 - 1) + 2020 := by
  exact period0196_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1956 ≤ 2020)
      (Nat.primeCounting (196 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
