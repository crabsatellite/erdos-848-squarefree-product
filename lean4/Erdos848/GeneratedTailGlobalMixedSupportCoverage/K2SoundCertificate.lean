import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2PrefixGroup0000Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2PrefixGroup0001Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2PrefixGroup0002Sound
import Erdos848.TailGlobalMixedCoverageBridge

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k2StandardCertifiedPrefixes : List (List ℕ) :=
  k2PrefixGroup0000.map Prod.fst ++
  k2PrefixGroup0001.map Prod.fst ++
  k2PrefixGroup0002.map Prod.fst

theorem k2StandardCertifiedPrefixes_eq :
    k2StandardCertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 2 := by
  rfl

theorem k2PrefixGroup0000_standard_all :
    (k2PrefixGroup0000.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 2) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k2PrefixGroup0000_standard_passes

theorem k2PrefixGroup0001_standard_all :
    (k2PrefixGroup0001.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 2) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k2PrefixGroup0001_standard_passes

theorem k2PrefixGroup0002_standard_all :
    (k2PrefixGroup0002.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 2) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k2PrefixGroup0002_standard_passes

theorem k2StandardCertifiedPrefixes_pass :
    k2StandardCertifiedPrefixes.all
      (Erdos848.globalMixedSupportPrefixPasses 2) = true := by
  simp only [k2StandardCertifiedPrefixes, List.all_append]
  rw [k2PrefixGroup0000_standard_all]
  rw [k2PrefixGroup0001_standard_all]
  rw [k2PrefixGroup0002_standard_all]
  rfl

theorem k2FeasiblePrefixes_standard_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 2).all
      (Erdos848.globalMixedSupportPrefixPasses 2) = true := by
  rw [← k2StandardCertifiedPrefixes_eq]
  exact k2StandardCertifiedPrefixes_pass

#print axioms k2FeasiblePrefixes_standard_pass

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
