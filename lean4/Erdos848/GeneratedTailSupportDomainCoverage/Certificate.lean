import Erdos848.GeneratedTailSupportDomainCoverage.Block0000
import Erdos848.GeneratedTailSupportDomainCoverage.Block0001
import Erdos848.GeneratedTailSupportDomainCoverage.Block0002
import Erdos848.GeneratedTailSupportDomainCoverage.Block0003
import Erdos848.GeneratedTailSupportDomainCoverage.Block0004
import Erdos848.GeneratedTailSupportDomainCoverage.Block0005
import Erdos848.GeneratedTailSupportDomainCoverage.Block0006
import Erdos848.GeneratedTailSupportDomainCoverage.Block0007
import Erdos848.GeneratedTailSupportDomainCoverage.Block0008
import Erdos848.GeneratedTailSupportDomainCoverage.Block0009
import Erdos848.GeneratedTailSupportDomainCoverage.Block0010
import Erdos848.GeneratedTailSupportDomainCoverage.Block0011
import Erdos848.GeneratedTailSupportDomainCoverage.Block0012
import Erdos848.GeneratedTailSupportDomainCoverage.Block0013
import Erdos848.GeneratedTailSupportDomainCoverage.Block0014
import Erdos848.GeneratedTailSupportDomainCoverage.Block0015
import Erdos848.GeneratedTailSupportDomainCoverage.Block0016
import Erdos848.GeneratedTailSupportDomainCoverage.Block0017
import Erdos848.GeneratedTailSupportDomainCoverage.Block0018
import Erdos848.GeneratedTailSupportDomainCoverage.Block0019
import Erdos848.GeneratedTailSupportDomainCoverage.Block0020
import Erdos848.GeneratedTailSupportDomainCoverage.Block0021
import Erdos848.GeneratedTailSupportDomainCoverage.Block0022
import Erdos848.GeneratedTailSupportDomainCoverage.Block0023
import Erdos848.GeneratedTailSupportDomainCoverage.Block0024
import Erdos848.GeneratedTailSupportDomainCoverage.Block0025
import Erdos848.GeneratedTailSupportDomainCoverage.Block0026
import Erdos848.GeneratedTailSupportDomainCoverage.Block0027
import Erdos848.GeneratedTailSupportDomainCoverage.Block0028
import Erdos848.GeneratedTailSupportDomainCoverage.Block0029
import Erdos848.GeneratedTailSupportDomainCoverage.Block0030
import Erdos848.GeneratedTailSupportDomainCoverage.Block0031
import Erdos848.GeneratedTailSupportDomainCoverage.Block0032
import Erdos848.GeneratedTailSupportDomainCoverage.Block0033
import Erdos848.GeneratedTailSupportDomainCoverage.Block0034
import Erdos848.GeneratedTailSupportDomainCoverage.Block0035
import Erdos848.GeneratedTailSupportDomainCoverage.Block0036
import Erdos848.GeneratedTailSupportDomainCoverage.Block0037
import Erdos848.GeneratedTailSupportDomainCoverage.Block0038
import Erdos848.GeneratedTailSupportDomainCoverage.Block0039
import Erdos848.GeneratedTailSupportDomainCoverage.Block0040
import Erdos848.GeneratedTailSupportDomainCoverage.Block0041
import Erdos848.GeneratedTailSupportDomainCoverage.Block0042
import Erdos848.GeneratedTailSupportDomainCoverage.Block0043
import Erdos848.GeneratedTailSupportDomainCoverage.Block0044
import Erdos848.GeneratedTailSupportDomainCoverage.Block0045
import Erdos848.GeneratedTailSupportDomainCoverage.Block0046
import Erdos848.GeneratedTailSupportDomainCoverage.Block0047
import Erdos848.GeneratedTailSupportDomainCoverage.Block0048
import Erdos848.GeneratedTailSupportDomainCoverage.Block0049

namespace Erdos848.GeneratedTailSupportDomainCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def certifiedDomain : List ℕ :=
  domainBlock0000 ++
  domainBlock0001 ++
  domainBlock0002 ++
  domainBlock0003 ++
  domainBlock0004 ++
  domainBlock0005 ++
  domainBlock0006 ++
  domainBlock0007 ++
  domainBlock0008 ++
  domainBlock0009 ++
  domainBlock0010 ++
  domainBlock0011 ++
  domainBlock0012 ++
  domainBlock0013 ++
  domainBlock0014 ++
  domainBlock0015 ++
  domainBlock0016 ++
  domainBlock0017 ++
  domainBlock0018 ++
  domainBlock0019 ++
  domainBlock0020 ++
  domainBlock0021 ++
  domainBlock0022 ++
  domainBlock0023 ++
  domainBlock0024 ++
  domainBlock0025 ++
  domainBlock0026 ++
  domainBlock0027 ++
  domainBlock0028 ++
  domainBlock0029 ++
  domainBlock0030 ++
  domainBlock0031 ++
  domainBlock0032 ++
  domainBlock0033 ++
  domainBlock0034 ++
  domainBlock0035 ++
  domainBlock0036 ++
  domainBlock0037 ++
  domainBlock0038 ++
  domainBlock0039 ++
  domainBlock0040 ++
  domainBlock0041 ++
  domainBlock0042 ++
  domainBlock0043 ++
  domainBlock0044 ++
  domainBlock0045 ++
  domainBlock0046 ++
  domainBlock0047 ++
  domainBlock0048 ++
  domainBlock0049

theorem certifiedDomain_eq : certifiedDomain = List.range 3164 := by
  decide

theorem certifiedDomain_passes :
    certifiedDomain.all Erdos848.supportPrimeEntryPasses = true := by
  simp only [certifiedDomain, List.all_append]
  rw [domainBlock0000_passes]
  rw [domainBlock0001_passes]
  rw [domainBlock0002_passes]
  rw [domainBlock0003_passes]
  rw [domainBlock0004_passes]
  rw [domainBlock0005_passes]
  rw [domainBlock0006_passes]
  rw [domainBlock0007_passes]
  rw [domainBlock0008_passes]
  rw [domainBlock0009_passes]
  rw [domainBlock0010_passes]
  rw [domainBlock0011_passes]
  rw [domainBlock0012_passes]
  rw [domainBlock0013_passes]
  rw [domainBlock0014_passes]
  rw [domainBlock0015_passes]
  rw [domainBlock0016_passes]
  rw [domainBlock0017_passes]
  rw [domainBlock0018_passes]
  rw [domainBlock0019_passes]
  rw [domainBlock0020_passes]
  rw [domainBlock0021_passes]
  rw [domainBlock0022_passes]
  rw [domainBlock0023_passes]
  rw [domainBlock0024_passes]
  rw [domainBlock0025_passes]
  rw [domainBlock0026_passes]
  rw [domainBlock0027_passes]
  rw [domainBlock0028_passes]
  rw [domainBlock0029_passes]
  rw [domainBlock0030_passes]
  rw [domainBlock0031_passes]
  rw [domainBlock0032_passes]
  rw [domainBlock0033_passes]
  rw [domainBlock0034_passes]
  rw [domainBlock0035_passes]
  rw [domainBlock0036_passes]
  rw [domainBlock0037_passes]
  rw [domainBlock0038_passes]
  rw [domainBlock0039_passes]
  rw [domainBlock0040_passes]
  rw [domainBlock0041_passes]
  rw [domainBlock0042_passes]
  rw [domainBlock0043_passes]
  rw [domainBlock0044_passes]
  rw [domainBlock0045_passes]
  rw [domainBlock0046_passes]
  rw [domainBlock0047_passes]
  rw [domainBlock0048_passes]
  rw [domainBlock0049_passes]
  decide

theorem supportPrimeDomain_passes :
    (List.range 3164).all Erdos848.supportPrimeEntryPasses = true := by
  rw [← certifiedDomain_eq]
  exact certifiedDomain_passes

#print axioms supportPrimeDomain_passes

end Erdos848.GeneratedTailSupportDomainCoverage
