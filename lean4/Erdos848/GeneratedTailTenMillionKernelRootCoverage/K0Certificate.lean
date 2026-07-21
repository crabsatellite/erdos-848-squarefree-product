import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K0PrefixGroup0000

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k0CertifiedPrefixes : List (List ℕ) :=
  k0PrefixGroup0000

theorem k0CertifiedPrefixes_eq :
    k0CertifiedPrefixes =
      Erdos848.tenMillionKernelRootFeasiblePrefixes 0 := by
  rfl

theorem k0_certified_of_mem
    {support : List ℕ}
    (hsupport : support ∈
      Erdos848.tenMillionKernelRootFeasiblePrefixes 0) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 0 support = true := by
  rw [← k0CertifiedPrefixes_eq] at hsupport
  simp only [k0CertifiedPrefixes, List.mem_append] at hsupport
  exact k0PrefixGroup0000_certified hsupport

#print axioms k0_certified_of_mem

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
