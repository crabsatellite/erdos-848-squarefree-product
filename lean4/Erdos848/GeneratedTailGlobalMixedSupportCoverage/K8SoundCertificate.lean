import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K8PrefixGroup0000Sound
import Erdos848.TailGlobalMixedCoverageBridge

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k8StandardCertifiedPrefixes : List (List ℕ) :=
  k8PrefixGroup0000.map Prod.fst

theorem k8StandardCertifiedPrefixes_eq :
    k8StandardCertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 8 := by
  rfl

theorem k8PrefixGroup0000_standard_all :
    (k8PrefixGroup0000.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 8) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k8PrefixGroup0000_standard_passes

theorem k8StandardCertifiedPrefixes_pass :
    k8StandardCertifiedPrefixes.all
      (Erdos848.globalMixedSupportPrefixPasses 8) = true := by
  exact k8PrefixGroup0000_standard_all

theorem k8FeasiblePrefixes_standard_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 8).all
      (Erdos848.globalMixedSupportPrefixPasses 8) = true := by
  rw [← k8StandardCertifiedPrefixes_eq]
  exact k8StandardCertifiedPrefixes_pass

#print axioms k8FeasiblePrefixes_standard_pass

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
