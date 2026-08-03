import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0000
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0001
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0002
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0003
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0004
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0005
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0006
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0007
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0008
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0009
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0010
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0011
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0012
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0013
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0014
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0015
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0016
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0017
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0018
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0019
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0020
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0021
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0022
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0023
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0024
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0025
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0026
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0027
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0028
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0029
import Erdos848.GeneratedTailTenMillionKernelRootCoverage.K5PrefixGroup0030

namespace Erdos848.GeneratedTailTenMillionKernelRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5CertifiedPrefixes : List (List ℕ) :=
  k5PrefixGroup0000 ++
  k5PrefixGroup0001 ++
  k5PrefixGroup0002 ++
  k5PrefixGroup0003 ++
  k5PrefixGroup0004 ++
  k5PrefixGroup0005 ++
  k5PrefixGroup0006 ++
  k5PrefixGroup0007 ++
  k5PrefixGroup0008 ++
  k5PrefixGroup0009 ++
  k5PrefixGroup0010 ++
  k5PrefixGroup0011 ++
  k5PrefixGroup0012 ++
  k5PrefixGroup0013 ++
  k5PrefixGroup0014 ++
  k5PrefixGroup0015 ++
  k5PrefixGroup0016 ++
  k5PrefixGroup0017 ++
  k5PrefixGroup0018 ++
  k5PrefixGroup0019 ++
  k5PrefixGroup0020 ++
  k5PrefixGroup0021 ++
  k5PrefixGroup0022 ++
  k5PrefixGroup0023 ++
  k5PrefixGroup0024 ++
  k5PrefixGroup0025 ++
  k5PrefixGroup0026 ++
  k5PrefixGroup0027 ++
  k5PrefixGroup0028 ++
  k5PrefixGroup0029 ++
  k5PrefixGroup0030

theorem k5CertifiedPrefixes_eq :
    k5CertifiedPrefixes =
      Erdos848.tenMillionKernelRootFeasiblePrefixes 5 := by
  rfl

theorem k5_certified_of_mem
    {support : List ℕ}
    (hsupport : support ∈
      Erdos848.tenMillionKernelRootFeasiblePrefixes 5) :
    ∃ normalLookup twistLookup : ℕ → List ℕ,
      (∀ p ∈ support,
        Erdos848.tenMillionKernelRootMaskPassesWith
          normalLookup twistLookup p = true) ∧
      Erdos848.tenMillionKernelRootCorePrefixPasses
        normalLookup twistLookup rootBaseWords 5 support = true := by
  rw [← k5CertifiedPrefixes_eq] at hsupport
  simp only [k5CertifiedPrefixes, List.mem_append] at hsupport
  rcases hsupport with ((((((((((((((((((((((((((((((hgroup0 | hgroup1) | hgroup2) | hgroup3) | hgroup4) | hgroup5) | hgroup6) | hgroup7) | hgroup8) | hgroup9) | hgroup10) | hgroup11) | hgroup12) | hgroup13) | hgroup14) | hgroup15) | hgroup16) | hgroup17) | hgroup18) | hgroup19) | hgroup20) | hgroup21) | hgroup22) | hgroup23) | hgroup24) | hgroup25) | hgroup26) | hgroup27) | hgroup28) | hgroup29) | hgroup30)
  · exact k5PrefixGroup0000_certified hgroup0
  · exact k5PrefixGroup0001_certified hgroup1
  · exact k5PrefixGroup0002_certified hgroup2
  · exact k5PrefixGroup0003_certified hgroup3
  · exact k5PrefixGroup0004_certified hgroup4
  · exact k5PrefixGroup0005_certified hgroup5
  · exact k5PrefixGroup0006_certified hgroup6
  · exact k5PrefixGroup0007_certified hgroup7
  · exact k5PrefixGroup0008_certified hgroup8
  · exact k5PrefixGroup0009_certified hgroup9
  · exact k5PrefixGroup0010_certified hgroup10
  · exact k5PrefixGroup0011_certified hgroup11
  · exact k5PrefixGroup0012_certified hgroup12
  · exact k5PrefixGroup0013_certified hgroup13
  · exact k5PrefixGroup0014_certified hgroup14
  · exact k5PrefixGroup0015_certified hgroup15
  · exact k5PrefixGroup0016_certified hgroup16
  · exact k5PrefixGroup0017_certified hgroup17
  · exact k5PrefixGroup0018_certified hgroup18
  · exact k5PrefixGroup0019_certified hgroup19
  · exact k5PrefixGroup0020_certified hgroup20
  · exact k5PrefixGroup0021_certified hgroup21
  · exact k5PrefixGroup0022_certified hgroup22
  · exact k5PrefixGroup0023_certified hgroup23
  · exact k5PrefixGroup0024_certified hgroup24
  · exact k5PrefixGroup0025_certified hgroup25
  · exact k5PrefixGroup0026_certified hgroup26
  · exact k5PrefixGroup0027_certified hgroup27
  · exact k5PrefixGroup0028_certified hgroup28
  · exact k5PrefixGroup0029_certified hgroup29
  · exact k5PrefixGroup0030_certified hgroup30

#print axioms k5_certified_of_mem

end Erdos848.GeneratedTailTenMillionKernelRootCoverage
