import Erdos848.TailGlobalMixedSupportComplete
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.SoundCertificate

namespace Erdos848

/-!
# From the finite mixed-support certificate to every actual support

The generated certificate is indexed only by the support length `k`.  This
module removes that finite index from the public interface and composes the
certificate with the completeness theorem for actual finite-product supports.
No ambient value of `N` is enumerated here.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

/-- Every prefix in the kernel-certified feasible table passes all four
global mixed-support rows. -/
theorem globalMixedSupportPrefixPasses_of_mem_feasible
    {k : ℕ} (hk : k ≤ 8) {supportPrefix : List ℕ}
    (hmem : supportPrefix ∈ globalMixedFeasiblePrefixesKernel k) :
    globalMixedSupportPrefixPasses k supportPrefix = true := by
  interval_cases k
  · exact (List.all_eq_true.mp
      GeneratedTailGlobalMixedSupportCoverage.k0FeasiblePrefixes_standard_pass)
      supportPrefix hmem
  · exact (List.all_eq_true.mp
      GeneratedTailGlobalMixedSupportCoverage.k1FeasiblePrefixes_standard_pass)
      supportPrefix hmem
  · exact (List.all_eq_true.mp
      GeneratedTailGlobalMixedSupportCoverage.k2FeasiblePrefixes_standard_pass)
      supportPrefix hmem
  · exact (List.all_eq_true.mp
      GeneratedTailGlobalMixedSupportCoverage.k3FeasiblePrefixes_standard_pass)
      supportPrefix hmem
  · exact (List.all_eq_true.mp
      GeneratedTailGlobalMixedSupportCoverage.k4FeasiblePrefixes_standard_pass)
      supportPrefix hmem
  · exact (List.all_eq_true.mp
      GeneratedTailGlobalMixedSupportCoverage.k5FeasiblePrefixes_standard_pass)
      supportPrefix hmem
  · exact (List.all_eq_true.mp
      GeneratedTailGlobalMixedSupportCoverage.k6FeasiblePrefixes_standard_pass)
      supportPrefix hmem
  · exact (List.all_eq_true.mp
      GeneratedTailGlobalMixedSupportCoverage.k7FeasiblePrefixes_standard_pass)
      supportPrefix hmem
  · exact (List.all_eq_true.mp
      GeneratedTailGlobalMixedSupportCoverage.k8FeasiblePrefixes_standard_pass)
      supportPrefix hmem

/-- The checker certificate applies to the prefix of every actual increasing
mixed support below the fixed product threshold. -/
theorem actualMixedSupport_dropLast_passes
    {k : ℕ} (hk : k ≤ 8) (support : List ℕ)
    (hLength : support.length = k)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (· < ·))
    (hFinite : support.prod < globalMixedSupportProductThreshold k) :
    globalMixedSupportPrefixPasses k support.dropLast = true := by
  apply globalMixedSupportPrefixPasses_of_mem_feasible hk
  exact actualMixedSupport_dropLast_mem_globalFeasible
    hk support hLength hPrimes hIncreasing hFinite

#print axioms globalMixedSupportPrefixPasses_of_mem_feasible
#print axioms actualMixedSupport_dropLast_passes

end Erdos848
