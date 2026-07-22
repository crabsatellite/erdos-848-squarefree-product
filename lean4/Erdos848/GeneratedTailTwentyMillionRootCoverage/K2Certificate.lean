import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0004
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0005
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0006
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0007
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0008
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0009
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0010
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0011
import Erdos848.GeneratedTailTwentyMillionRootCoverage.K2PrefixGroup0012

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2CertifiedPrefixes : List (List ℕ) :=
  k2PrefixGroup0000 ++
  k2PrefixGroup0001 ++
  k2PrefixGroup0002 ++
  k2PrefixGroup0003 ++
  k2PrefixGroup0004 ++
  k2PrefixGroup0005 ++
  k2PrefixGroup0006 ++
  k2PrefixGroup0007 ++
  k2PrefixGroup0008 ++
  k2PrefixGroup0009 ++
  k2PrefixGroup0010 ++
  k2PrefixGroup0011 ++
  k2PrefixGroup0012

theorem k2CertifiedPrefixes_eq :
    k2CertifiedPrefixes =
      Erdos848.twentyMillionRootFeasiblePrefixes 2 := by
  rfl

theorem k2_certified_of_mem
    {support : List ℕ}
    (hsupport : support ∈
      Erdos848.twentyMillionRootFeasiblePrefixes 2) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.twentyMillionRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.twentyMillionRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  rw [← k2CertifiedPrefixes_eq] at hsupport
  simp only [k2CertifiedPrefixes, List.mem_append] at hsupport
  rcases hsupport with ((((((((((((h0 | h1) | h2) | h3) | h4) | h5) | h6) | h7) | h8) | h9) | h10) | h11) | h12)
  · exact k2PrefixGroup0000_certified h0
  · exact k2PrefixGroup0001_certified h1
  · exact k2PrefixGroup0002_certified h2
  · exact k2PrefixGroup0003_certified h3
  · exact k2PrefixGroup0004_certified h4
  · exact k2PrefixGroup0005_certified h5
  · exact k2PrefixGroup0006_certified h6
  · exact k2PrefixGroup0007_certified h7
  · exact k2PrefixGroup0008_certified h8
  · exact k2PrefixGroup0009_certified h9
  · exact k2PrefixGroup0010_certified h10
  · exact k2PrefixGroup0011_certified h11
  · exact k2PrefixGroup0012_certified h12

#print axioms k2_certified_of_mem

end Erdos848.GeneratedTailTwentyMillionRootCoverage
