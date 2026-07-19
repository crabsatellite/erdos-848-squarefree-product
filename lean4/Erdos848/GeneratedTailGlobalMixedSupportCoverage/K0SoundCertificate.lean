import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K0PrefixGroup0000Sound
import Erdos848.TailGlobalMixedCoverageBridge

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k0StandardCertifiedPrefixes : List (List ℕ) :=
  k0PrefixGroup0000.map Prod.fst

theorem k0StandardCertifiedPrefixes_eq :
    k0StandardCertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 0 := by
  rfl

theorem k0PrefixGroup0000_standard_all :
    (k0PrefixGroup0000.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 0) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k0PrefixGroup0000_standard_passes

theorem k0StandardCertifiedPrefixes_pass :
    k0StandardCertifiedPrefixes.all
      (Erdos848.globalMixedSupportPrefixPasses 0) = true := by
  exact k0PrefixGroup0000_standard_all

theorem k0FeasiblePrefixes_standard_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 0).all
      (Erdos848.globalMixedSupportPrefixPasses 0) = true := by
  rw [← k0StandardCertifiedPrefixes_eq]
  exact k0StandardCertifiedPrefixes_pass

#print axioms k0FeasiblePrefixes_standard_pass

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
