import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0000
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0001
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0002
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0003
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0004
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0005
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0006
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0007
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0008
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0009
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0010
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0011
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0012
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0013
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0014
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0015
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0016
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0017
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0018
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0019
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K6PrefixGroup0020
import Erdos848.TailGlobalPureSupportKernelDomain

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6CertifiedPrefixes : List (List ℕ) :=
  k6PrefixGroup0000 ++
  k6PrefixGroup0001 ++
  k6PrefixGroup0002 ++
  k6PrefixGroup0003 ++
  k6PrefixGroup0004 ++
  k6PrefixGroup0005 ++
  k6PrefixGroup0006 ++
  k6PrefixGroup0007 ++
  k6PrefixGroup0008 ++
  k6PrefixGroup0009 ++
  k6PrefixGroup0010 ++
  k6PrefixGroup0011 ++
  k6PrefixGroup0012 ++
  k6PrefixGroup0013 ++
  k6PrefixGroup0014 ++
  k6PrefixGroup0015 ++
  k6PrefixGroup0016 ++
  k6PrefixGroup0017 ++
  k6PrefixGroup0018 ++
  k6PrefixGroup0019 ++
  k6PrefixGroup0020

theorem k6CertifiedPrefixes_eq :
    k6CertifiedPrefixes = Erdos848.globalOddRootFeasiblePrefixesKernel 6 := by
  rfl

theorem k6CertifiedPrefixes_pass :
    k6CertifiedPrefixes.all
      (Erdos848.globalPureSupportPrefixPasses 6) = true := by
  simp only [k6CertifiedPrefixes, List.all_append]
  rw [k6PrefixGroup0000_passes]
  rw [k6PrefixGroup0001_passes]
  rw [k6PrefixGroup0002_passes]
  rw [k6PrefixGroup0003_passes]
  rw [k6PrefixGroup0004_passes]
  rw [k6PrefixGroup0005_passes]
  rw [k6PrefixGroup0006_passes]
  rw [k6PrefixGroup0007_passes]
  rw [k6PrefixGroup0008_passes]
  rw [k6PrefixGroup0009_passes]
  rw [k6PrefixGroup0010_passes]
  rw [k6PrefixGroup0011_passes]
  rw [k6PrefixGroup0012_passes]
  rw [k6PrefixGroup0013_passes]
  rw [k6PrefixGroup0014_passes]
  rw [k6PrefixGroup0015_passes]
  rw [k6PrefixGroup0016_passes]
  rw [k6PrefixGroup0017_passes]
  rw [k6PrefixGroup0018_passes]
  rw [k6PrefixGroup0019_passes]
  rw [k6PrefixGroup0020_passes]
  decide

theorem k6FeasiblePrefixes_pass :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 6).all
      (Erdos848.globalPureSupportPrefixPasses 6) = true := by
  rw [← k6CertifiedPrefixes_eq]
  exact k6CertifiedPrefixes_pass

theorem k6CertifiedPrefixes_mask_upper :
    k6CertifiedPrefixes.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k6CertifiedPrefixes, List.all_append]
  rw [k6PrefixGroup0000_mask_upper]
  rw [k6PrefixGroup0001_mask_upper]
  rw [k6PrefixGroup0002_mask_upper]
  rw [k6PrefixGroup0003_mask_upper]
  rw [k6PrefixGroup0004_mask_upper]
  rw [k6PrefixGroup0005_mask_upper]
  rw [k6PrefixGroup0006_mask_upper]
  rw [k6PrefixGroup0007_mask_upper]
  rw [k6PrefixGroup0008_mask_upper]
  rw [k6PrefixGroup0009_mask_upper]
  rw [k6PrefixGroup0010_mask_upper]
  rw [k6PrefixGroup0011_mask_upper]
  rw [k6PrefixGroup0012_mask_upper]
  rw [k6PrefixGroup0013_mask_upper]
  rw [k6PrefixGroup0014_mask_upper]
  rw [k6PrefixGroup0015_mask_upper]
  rw [k6PrefixGroup0016_mask_upper]
  rw [k6PrefixGroup0017_mask_upper]
  rw [k6PrefixGroup0018_mask_upper]
  rw [k6PrefixGroup0019_mask_upper]
  rw [k6PrefixGroup0020_mask_upper]
  decide

theorem k6FeasiblePrefixes_mask_upper :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 6).all
      Erdos848.globalPureSupportMaskUpper = true := by
  rw [← k6CertifiedPrefixes_eq]
  exact k6CertifiedPrefixes_mask_upper

end Erdos848.GeneratedTailGlobalPureSupportCoverage
