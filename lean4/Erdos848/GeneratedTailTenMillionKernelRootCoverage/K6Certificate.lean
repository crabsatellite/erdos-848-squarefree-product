import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K6PrefixGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K6PrefixGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K6PrefixGroup0002

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6CertifiedPrefixes : List (List ℕ) :=
  k6PrefixGroup0000 ++
  k6PrefixGroup0001 ++
  k6PrefixGroup0002

theorem k6CertifiedPrefixes_eq :
    k6CertifiedPrefixes =
      Erdos848.tenMillionKernelRootFeasiblePrefixes 6 := by
  rfl

theorem k6_certified_of_mem
    {support : List ℕ}
    (hsupport : support ∈
      Erdos848.tenMillionKernelRootFeasiblePrefixes 6) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 6 support = true := by
  rw [← k6CertifiedPrefixes_eq] at hsupport
  simp only [k6CertifiedPrefixes, List.mem_append] at hsupport
  rcases hsupport with ((hgroup0 | hgroup1) | hgroup2)
  · exact k6PrefixGroup0000_certified hgroup0
  · exact k6PrefixGroup0001_certified hgroup1
  · exact k6PrefixGroup0002_certified hgroup2

#print axioms k6_certified_of_mem

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
