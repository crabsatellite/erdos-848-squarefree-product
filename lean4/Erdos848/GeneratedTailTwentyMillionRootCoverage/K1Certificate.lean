import Erdos848.GeneratedTailTwentyMillionRootCoverage.K1PrefixGroup0000

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k1CertifiedPrefixes : List (List ℕ) :=
  k1PrefixGroup0000

theorem k1CertifiedPrefixes_eq :
    k1CertifiedPrefixes =
      Erdos848.twentyMillionRootFeasiblePrefixes 1 := by
  rfl

theorem k1_certified_of_mem
    {support : List ℕ}
    (hsupport : support ∈
      Erdos848.twentyMillionRootFeasiblePrefixes 1) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 1 support = true := by
  rw [← k1CertifiedPrefixes_eq] at hsupport
  simp only [k1CertifiedPrefixes, List.mem_append] at hsupport
  exact k1PrefixGroup0000_certified hsupport

#print axioms k1_certified_of_mem

end Erdos848.GeneratedTailTwentyMillionRootCoverage
