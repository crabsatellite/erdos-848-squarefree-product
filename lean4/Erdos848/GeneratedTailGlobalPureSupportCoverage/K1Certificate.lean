import Erdos848.GeneratedTailGlobalPureSupportCoverage.K1PrefixGroup0000
import Erdos848.TailGlobalPureSupportKernelDomain

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k1CertifiedPrefixes : List (List ℕ) :=
  k1PrefixGroup0000

theorem k1CertifiedPrefixes_eq :
    k1CertifiedPrefixes = Erdos848.globalOddRootFeasiblePrefixesKernel 1 := by
  rfl

theorem k1CertifiedPrefixes_pass :
    k1CertifiedPrefixes.all
      (Erdos848.globalPureSupportPrefixPasses 1) = true := by
  exact k1PrefixGroup0000_passes

theorem k1FeasiblePrefixes_pass :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 1).all
      (Erdos848.globalPureSupportPrefixPasses 1) = true := by
  rw [← k1CertifiedPrefixes_eq]
  exact k1CertifiedPrefixes_pass

theorem k1CertifiedPrefixes_mask_upper :
    k1CertifiedPrefixes.all
      Erdos848.globalPureSupportMaskUpper = true := by
  exact k1PrefixGroup0000_mask_upper

theorem k1FeasiblePrefixes_mask_upper :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 1).all
      Erdos848.globalPureSupportMaskUpper = true := by
  rw [← k1CertifiedPrefixes_eq]
  exact k1CertifiedPrefixes_mask_upper

end Erdos848.GeneratedTailGlobalPureSupportCoverage
