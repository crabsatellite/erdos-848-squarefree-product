import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K2PrefixGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K2PrefixGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K2PrefixGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K2PrefixGroup0003
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K2PrefixGroup0004
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K2PrefixGroup0005
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K2PrefixGroup0006
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K2PrefixGroup0007
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K2PrefixGroup0008
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K2PrefixGroup0009

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

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
  k2PrefixGroup0009

theorem k2CertifiedPrefixes_eq :
    k2CertifiedPrefixes =
      Erdos848.tenMillionKernelRootFeasiblePrefixes 2 := by
  rfl

theorem k2_certified_of_mem
    {support : List ℕ}
    (hsupport : support ∈
      Erdos848.tenMillionKernelRootFeasiblePrefixes 2) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 2 support = true := by
  rw [← k2CertifiedPrefixes_eq] at hsupport
  simp only [k2CertifiedPrefixes, List.mem_append] at hsupport
  rcases hsupport with (((((((((hgroup0 | hgroup1) | hgroup2) | hgroup3) | hgroup4) | hgroup5) | hgroup6) | hgroup7) | hgroup8) | hgroup9)
  · exact k2PrefixGroup0000_certified hgroup0
  · exact k2PrefixGroup0001_certified hgroup1
  · exact k2PrefixGroup0002_certified hgroup2
  · exact k2PrefixGroup0003_certified hgroup3
  · exact k2PrefixGroup0004_certified hgroup4
  · exact k2PrefixGroup0005_certified hgroup5
  · exact k2PrefixGroup0006_certified hgroup6
  · exact k2PrefixGroup0007_certified hgroup7
  · exact k2PrefixGroup0008_certified hgroup8
  · exact k2PrefixGroup0009_certified hgroup9

#print axioms k2_certified_of_mem

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
