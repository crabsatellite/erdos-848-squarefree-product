import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0000
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0001
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0002
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0003
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0004
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0005
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0006
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0007
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0008
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0009
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0010
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0011
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0012
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0013
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0014
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K2PrefixGroup0015
import Erdos848.TailGlobalPureSupportKernelDomain

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

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
  k2PrefixGroup0015

theorem k2CertifiedPrefixes_eq :
    k2CertifiedPrefixes = Erdos848.globalOddRootFeasiblePrefixesKernel 2 := by
  rfl

theorem k2CertifiedPrefixes_pass :
    k2CertifiedPrefixes.all
      (Erdos848.globalPureSupportPrefixPasses 2) = true := by
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
  decide

theorem k2FeasiblePrefixes_pass :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 2).all
      (Erdos848.globalPureSupportPrefixPasses 2) = true := by
  rw [← k2CertifiedPrefixes_eq]
  exact k2CertifiedPrefixes_pass

theorem k2CertifiedPrefixes_mask_upper :
    k2CertifiedPrefixes.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k2CertifiedPrefixes, List.all_append]
  rw [k2PrefixGroup0000_mask_upper]
  rw [k2PrefixGroup0001_mask_upper]
  rw [k2PrefixGroup0002_mask_upper]
  rw [k2PrefixGroup0003_mask_upper]
  rw [k2PrefixGroup0004_mask_upper]
  rw [k2PrefixGroup0005_mask_upper]
  rw [k2PrefixGroup0006_mask_upper]
  rw [k2PrefixGroup0007_mask_upper]
  rw [k2PrefixGroup0008_mask_upper]
  rw [k2PrefixGroup0009_mask_upper]
  rw [k2PrefixGroup0010_mask_upper]
  rw [k2PrefixGroup0011_mask_upper]
  rw [k2PrefixGroup0012_mask_upper]
  rw [k2PrefixGroup0013_mask_upper]
  rw [k2PrefixGroup0014_mask_upper]
  rw [k2PrefixGroup0015_mask_upper]
  decide

theorem k2FeasiblePrefixes_mask_upper :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 2).all
      Erdos848.globalPureSupportMaskUpper = true := by
  rw [← k2CertifiedPrefixes_eq]
  exact k2CertifiedPrefixes_mask_upper

end Erdos848.GeneratedTailGlobalPureSupportCoverage
