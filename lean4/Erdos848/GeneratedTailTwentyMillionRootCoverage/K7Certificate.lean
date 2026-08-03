import Erdos848.GeneratedTailTwentyMillionRootCoverage.K7PrefixGroup0000

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7CertifiedPrefixes : List (List ℕ) :=
  k7PrefixGroup0000

theorem k7CertifiedPrefixes_eq :
    k7CertifiedPrefixes =
      Erdos848.twentyMillionRootFeasiblePrefixes 7 := by
  rfl

theorem k7_certified_of_mem
    {support : List ℕ}
    (hsupport : support ∈
      Erdos848.twentyMillionRootFeasiblePrefixes 7) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 7 support = true := by
  rw [← k7CertifiedPrefixes_eq] at hsupport
  simp only [k7CertifiedPrefixes, List.mem_append] at hsupport
  exact k7PrefixGroup0000_certified hsupport

#print axioms k7_certified_of_mem

end Erdos848.GeneratedTailTwentyMillionRootCoverage
