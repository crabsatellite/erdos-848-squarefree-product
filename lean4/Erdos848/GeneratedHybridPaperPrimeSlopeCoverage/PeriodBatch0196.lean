import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0196
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0317 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 317)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1874)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0317

theorem periodCandidateSetSpec0317 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      317 30030 packedWheelOffsets
      0 5760 1874
      periodCandidates0317 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 317)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1874)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0317

theorem period0317_primeCounting_candidate_step :
    Nat.primeCounting (317 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (317 * 30030 - 1) + 1874 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 317)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1874)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0317
    periodCandidateSetSpec0317
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0317_primeCounting_step :
    Nat.primeCounting (317 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (317 * 30030 - 1) + 2020 := by
  exact period0317_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1874 ≤ 2020)
      (Nat.primeCounting (317 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
