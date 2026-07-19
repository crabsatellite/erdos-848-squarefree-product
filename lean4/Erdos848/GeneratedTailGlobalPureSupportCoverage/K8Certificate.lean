import Erdos848.GeneratedTailGlobalPureSupportCoverage.K8PrefixGroup0000
import Erdos848.TailGlobalPureSupportKernelDomain

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k8CertifiedPrefixes : List (List ℕ) :=
  k8PrefixGroup0000

theorem k8CertifiedPrefixes_eq :
    k8CertifiedPrefixes = Erdos848.globalOddRootFeasiblePrefixesKernel 8 := by
  rfl

theorem k8CertifiedPrefixes_pass :
    k8CertifiedPrefixes.all
      (Erdos848.globalPureSupportPrefixPasses 8) = true := by
  exact k8PrefixGroup0000_passes

theorem k8FeasiblePrefixes_pass :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 8).all
      (Erdos848.globalPureSupportPrefixPasses 8) = true := by
  rw [← k8CertifiedPrefixes_eq]
  exact k8CertifiedPrefixes_pass

theorem k8CertifiedPrefixes_mask_upper :
    k8CertifiedPrefixes.all
      Erdos848.globalPureSupportMaskUpper = true := by
  exact k8PrefixGroup0000_mask_upper

theorem k8FeasiblePrefixes_mask_upper :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 8).all
      Erdos848.globalPureSupportMaskUpper = true := by
  rw [← k8CertifiedPrefixes_eq]
  exact k8CertifiedPrefixes_mask_upper

end Erdos848.GeneratedTailGlobalPureSupportCoverage
