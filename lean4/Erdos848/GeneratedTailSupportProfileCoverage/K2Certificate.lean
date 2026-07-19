import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0000
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0001
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0002
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0003
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0004
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0005
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0006
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0007
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0008
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0009
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0010
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0011
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0012
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0013
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0014
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0015
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0016
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0017
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0018
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0019
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0020
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0021
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0022
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0023
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0024
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0025
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0026
import Erdos848.GeneratedTailSupportProfileCoverage.K2PrefixGroup0027

namespace Erdos848.GeneratedTailSupportProfileCoverage

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
  k2PrefixGroup0012 ++
  k2PrefixGroup0013 ++
  k2PrefixGroup0014 ++
  k2PrefixGroup0015 ++
  k2PrefixGroup0016 ++
  k2PrefixGroup0017 ++
  k2PrefixGroup0018 ++
  k2PrefixGroup0019 ++
  k2PrefixGroup0020 ++
  k2PrefixGroup0021 ++
  k2PrefixGroup0022 ++
  k2PrefixGroup0023 ++
  k2PrefixGroup0024 ++
  k2PrefixGroup0025 ++
  k2PrefixGroup0026 ++
  k2PrefixGroup0027

theorem k2CertifiedPrefixes_eq :
    k2CertifiedPrefixes = Erdos848.fiveMillionOddRootK2FeasiblePrefixes := by
  decide

theorem k2CertifiedPrefixes_pass :
    k2CertifiedPrefixes.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  simp only [k2CertifiedPrefixes, List.all_append]
  rw [k2PrefixGroup0000_passes]
  rw [k2PrefixGroup0001_passes]
  rw [k2PrefixGroup0002_passes]
  rw [k2PrefixGroup0003_passes]
  rw [k2PrefixGroup0004_passes]
  rw [k2PrefixGroup0005_passes]
  rw [k2PrefixGroup0006_passes]
  rw [k2PrefixGroup0007_passes]
  rw [k2PrefixGroup0008_passes]
  rw [k2PrefixGroup0009_passes]
  rw [k2PrefixGroup0010_passes]
  rw [k2PrefixGroup0011_passes]
  rw [k2PrefixGroup0012_passes]
  rw [k2PrefixGroup0013_passes]
  rw [k2PrefixGroup0014_passes]
  rw [k2PrefixGroup0015_passes]
  rw [k2PrefixGroup0016_passes]
  rw [k2PrefixGroup0017_passes]
  rw [k2PrefixGroup0018_passes]
  rw [k2PrefixGroup0019_passes]
  rw [k2PrefixGroup0020_passes]
  rw [k2PrefixGroup0021_passes]
  rw [k2PrefixGroup0022_passes]
  rw [k2PrefixGroup0023_passes]
  rw [k2PrefixGroup0024_passes]
  rw [k2PrefixGroup0025_passes]
  rw [k2PrefixGroup0026_passes]
  rw [k2PrefixGroup0027_passes]
  decide

theorem k2FeasiblePrefixes_pass :
    Erdos848.fiveMillionOddRootK2FeasiblePrefixes.all
      (Erdos848.fiveMillionOddRootProfilePrefixPasses 522) = true := by
  rw [← k2CertifiedPrefixes_eq]
  exact k2CertifiedPrefixes_pass

#print axioms k2FeasiblePrefixes_pass

end Erdos848.GeneratedTailSupportProfileCoverage
