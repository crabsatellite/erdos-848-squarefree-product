import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0187
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0308 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 308)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1880)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0308

theorem periodCandidateSetSpec0308 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      308 30030 packedWheelOffsets
      0 5760 1880
      periodCandidates0308 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 308)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1880)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0308

theorem period0308_primeCounting_candidate_step :
    Nat.primeCounting (308 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (308 * 30030 - 1) + 1880 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 308)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1880)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0308
    periodCandidateSetSpec0308
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0308_primeCounting_step :
    Nat.primeCounting (308 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (308 * 30030 - 1) + 2020 := by
  exact period0308_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1880 ≤ 2020)
      (Nat.primeCounting (308 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
