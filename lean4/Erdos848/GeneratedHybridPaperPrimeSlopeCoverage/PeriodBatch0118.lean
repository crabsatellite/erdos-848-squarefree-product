import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.PeriodCoverage0118
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.WheelCoverage

namespace Erdos848.GeneratedHybridPaperPrimeSlopeCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable def periodCandidates0239 : Finset Nat :=
  Erdos848.PackedWheelPrimeChunkProperty.candidateSet
    (period := 239)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1911)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0239

theorem periodCandidateSetSpec0239 :
    Erdos848.PackedWheelPrimeChunkSetProperty
      239 30030 packedWheelOffsets
      0 5760 1911
      periodCandidates0239 := by
  exact Erdos848.PackedWheelPrimeChunkProperty.candidateSet_spec
    (period := 239)
    (periodWidth := 30030)
    (index := 0)
    (width := 5760)
    (candidateCount := 1911)
    (packedOffsets := packedWheelOffsets)
    periodCoverage0239

theorem period0239_primeCounting_candidate_step :
    Nat.primeCounting (239 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (239 * 30030 - 1) + 1911 := by
  exact (Erdos848.PackedWheelPrimeChunkProperty.primeCounting_endpoint_le_of_explicit_set
    (period := 239)
    (periodWidth := 30030)
    (offsetCount := 5760)
    (candidateCount := 1911)
    (packedOffsets := packedWheelOffsets)
    periodCandidates0239
    periodCandidateSetSpec0239
    wheelOffsetCoverage (by norm_num) (by norm_num))

theorem period0239_primeCounting_step :
    Nat.primeCounting (239 * 30030 + 30030 - 1) ≤
      Nat.primeCounting (239 * 30030 - 1) + 2020 := by
  exact period0239_primeCounting_candidate_step.trans
    (Nat.add_le_add_left
      (by norm_num : 1911 ≤ 2020)
      (Nat.primeCounting (239 * 30030 - 1)))

end Erdos848.GeneratedHybridPaperPrimeSlopeCoverage
