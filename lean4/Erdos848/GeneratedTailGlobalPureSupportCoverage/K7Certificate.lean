import Erdos848.GeneratedTailGlobalPureSupportCoverage.K7PrefixGroup0000
import Erdos848.GeneratedTailGlobalPureSupportCoverage.K7PrefixGroup0001
import Erdos848.TailGlobalPureSupportKernelDomain

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7CertifiedPrefixes : List (List ℕ) :=
  k7PrefixGroup0000 ++
  k7PrefixGroup0001

theorem k7CertifiedPrefixes_eq :
    k7CertifiedPrefixes = Erdos848.globalOddRootFeasiblePrefixesKernel 7 := by
  rfl

theorem k7CertifiedPrefixes_pass :
    k7CertifiedPrefixes.all
      (Erdos848.globalPureSupportPrefixPasses 7) = true := by
  simp only [k7CertifiedPrefixes, List.all_append]
  rw [k7PrefixGroup0000_passes]
  rw [k7PrefixGroup0001_passes]
  decide

theorem k7FeasiblePrefixes_pass :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 7).all
      (Erdos848.globalPureSupportPrefixPasses 7) = true := by
  rw [← k7CertifiedPrefixes_eq]
  exact k7CertifiedPrefixes_pass

theorem k7CertifiedPrefixes_mask_upper :
    k7CertifiedPrefixes.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k7CertifiedPrefixes, List.all_append]
  rw [k7PrefixGroup0000_mask_upper]
  rw [k7PrefixGroup0001_mask_upper]
  decide

theorem k7FeasiblePrefixes_mask_upper :
    (Erdos848.globalOddRootFeasiblePrefixesKernel 7).all
      Erdos848.globalPureSupportMaskUpper = true := by
  rw [← k7CertifiedPrefixes_eq]
  exact k7CertifiedPrefixes_mask_upper

end Erdos848.GeneratedTailGlobalPureSupportCoverage
