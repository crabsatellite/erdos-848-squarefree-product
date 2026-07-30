import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0077
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0198 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 198)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1899)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0198

theorem periodCandidateSetSpec0198 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      198 30030 packedWheelOffsets
      0 5760 1899
      periodCandidates0198 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 198)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1899)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0198

theorem period0198_primeCounting_candidate_step :
    Nat.primeCounting (198 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (198 * 30030 - 1) + 1899 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 198)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1899)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0198
    periodCandidateSetSpec0198
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0198_primeCounting_step :
    Nat.primeCounting (198 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (198 * 30030 - 1) + 2020 := by
  exact period0198_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1899 ≤ 2020)
      (Nat.primeCounting (198 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
