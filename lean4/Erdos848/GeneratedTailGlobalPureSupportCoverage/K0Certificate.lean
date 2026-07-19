import Erdos848.GeneratedTailGlobalPureSupportCoverage.K0PrefixGroup0000
import Erdos848.TailGlobalPureSupportKernelDomain

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k0CertifiedPrefixes : List (List ℕ) :=
  k0PrefixGroup0000

theorem k0CertifiedPrefixes_eq :
    k0CertifiedPrefixes = Erdos848.globalOddRootFeasiblePrefixesKernel 0 := by
  rfl

theorem k0CertifiedPrefixes_pass :
    k0CertifiedPrefixes.all
      (Erdos848.globalPureSupportPrefixPasses 0) = true := by
  exact k0PrefixGroup0000_passes

theorem k0FeasiblePrefixes_pass :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 0).all
      (Erdos848.globalPureSupportPrefixPasses 0) = true := by
  rw [← k0CertifiedPrefixes_eq]
  exact k0CertifiedPrefixes_pass

theorem k0CertifiedPrefixes_mask_upper :
    k0CertifiedPrefixes.all
      Erdos848.globalPureSupportMaskUpper = true := by
  exact k0PrefixGroup0000_mask_upper

theorem k0FeasiblePrefixes_mask_upper :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 0).all
      Erdos848.globalPureSupportMaskUpper = true := by
  rw [← k0CertifiedPrefixes_eq]
  exact k0CertifiedPrefixes_mask_upper

end Erdos848.GeneratedTailGlobalPureSupportCoverage
