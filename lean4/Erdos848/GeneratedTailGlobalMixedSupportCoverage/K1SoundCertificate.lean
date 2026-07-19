import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K1PrefixGroup0000Sound
import Erdos848.TailGlobalMixedCoverageBridge

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k1StandardCertifiedPrefixes : List (List ℕ) :=
  k1PrefixGroup0000.map Prod.fst

theorem k1StandardCertifiedPrefixes_eq :
    k1StandardCertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 1 := by
  rfl

theorem k1PrefixGroup0000_standard_all :
    (k1PrefixGroup0000.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 1) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k1PrefixGroup0000_standard_passes

theorem k1StandardCertifiedPrefixes_pass :
    k1StandardCertifiedPrefixes.all
      (Erdos848.globalMixedSupportPrefixPasses 1) = true := by
  exact k1PrefixGroup0000_standard_all

theorem k1FeasiblePrefixes_standard_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 1).all
      (Erdos848.globalMixedSupportPrefixPasses 1) = true := by
  rw [← k1StandardCertifiedPrefixes_eq]
  exact k1StandardCertifiedPrefixes_pass

#print axioms k1FeasiblePrefixes_standard_pass

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
