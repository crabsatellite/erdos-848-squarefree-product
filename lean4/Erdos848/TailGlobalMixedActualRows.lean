import Erdos848.TailGlobalMixedOneRowSound
import Erdos848.TailGlobalMixedSupportPass
import Erdos848.TailGlobalMixedSupportBridge

namespace Erdos848

/-! # Four global checker bounds for every actual mixed support -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- The finite support certificate, its completeness theorem and the endpoint
extension certificate compose into four literal row bounds for an arbitrary
actual increasing support. -/
theorem actualMixedSupport_dropLast_rowBounds
    {k N : ℕ} (support : List ℕ)
    (hk : k ≤ 8) (hLength : support.length = k)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < globalMixedSupportProductThreshold k)
    (hN : 5_000_000 ≤ N) (hProduct : support.prod ≤ N) :
    globalMixedRowBound k support.dropLast false false N ∧
      globalMixedRowBound k support.dropLast false true N ∧
      globalMixedRowBound k support.dropLast true false N ∧
      globalMixedRowBound k support.dropLast true true N := by
  have hRetained : ∀ p ∈ support.dropLast, p < 9161 :=
    mixedSupport_dropLast_lt_9161 hk support hLength hPrimes
      hIncreasing hFinite
  have hDomain :
      ∀ p ∈ support.dropLast,
        p ∈ GeneratedTailGlobalMixedSupportCoverage.mixedSupportPrimes := by
    intro p hp
    have hpSupport : p ∈ support := List.dropLast_subset support hp
    have hpLt : p < 9161 := hRetained p hp
    have hpKernel := mem_globalMixedKernelSupportPrimes_of_supportPrime
      (hPrimes p hpSupport) (show p ≤ 9161 by omega)
    rcases List.mem_append.mp hpKernel with hpMixed | hpSentinel
    · exact hpMixed
    · simp only [List.mem_singleton] at hpSentinel
      omega
  have hEndpoint : globalMixedSupportEndpoint support.dropLast ≤ N :=
    globalMixedSupportEndpoint_le support hN hPrimes hIncreasing
      hProduct hDomain
  have hpass : globalMixedSupportPrefixPasses k support.dropLast = true :=
    actualMixedSupport_dropLast_passes hk support hLength hPrimes
      hIncreasing hFinite
  exact globalMixedSupportPrefixPasses_sound hN hEndpoint hpass

#print axioms actualMixedSupport_dropLast_rowBounds

end Erdos848
