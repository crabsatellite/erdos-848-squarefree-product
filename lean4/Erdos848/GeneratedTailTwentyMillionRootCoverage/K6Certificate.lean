import Erdos848.GeneratedTailTwentyMillionRootCoverage.K6PrefixGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K6PrefixGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K6PrefixGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K6PrefixGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K6PrefixGroup0004
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K6PrefixGroup0005
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K6PrefixGroup0006

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6CertifiedPrefixes : List (List ℕ) :=
  k6PrefixGroup0000 ++
  k6PrefixGroup0001 ++
  k6PrefixGroup0002 ++
  k6PrefixGroup0003 ++
  k6PrefixGroup0004 ++
  k6PrefixGroup0005 ++
  k6PrefixGroup0006

theorem k6CertifiedPrefixes_eq :
    k6CertifiedPrefixes =
      Erdos848.twentyMillionRootFeasiblePrefixes 6 := by
  rfl

theorem k6_certified_of_mem
    {support : List ℕ}
    (hsupport : support ∈
      Erdos848.twentyMillionRootFeasiblePrefixes 6) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 6 support = true := by
  rw [← k6CertifiedPrefixes_eq] at hsupport
  simp only [k6CertifiedPrefixes, List.mem_append] at hsupport
  rcases hsupport with ((((((h0 | h1) | h2) | h3) | h4) | h5) | h6)
  · exact k6PrefixGroup0000_certified h0
  · exact k6PrefixGroup0001_certified h1
  · exact k6PrefixGroup0002_certified h2
  · exact k6PrefixGroup0003_certified h3
  · exact k6PrefixGroup0004_certified h4
  · exact k6PrefixGroup0005_certified h5
  · exact k6PrefixGroup0006_certified h6

#print axioms k6_certified_of_mem

end Erdos848.GeneratedTailTwentyMillionRootCoverage
