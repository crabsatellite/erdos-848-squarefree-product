import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0184
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0305 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 305)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1890)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0305

theorem periodCandidateSetSpec0305 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      305 30030 packedWheelOffsets
      0 5760 1890
      periodCandidates0305 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 305)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1890)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0305

theorem period0305_primeCounting_candidate_step :
    Nat.primeCounting (305 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (305 * 30030 - 1) + 1890 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 305)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1890)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0305
    periodCandidateSetSpec0305
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0305_primeCounting_step :
    Nat.primeCounting (305 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (305 * 30030 - 1) + 2020 := by
  exact period0305_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1890 ≤ 2020)
      (Nat.primeCounting (305 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
