import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K7PrefixGroup0000Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K7PrefixGroup0001Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K7PrefixGroup0002Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K7PrefixGroup0003Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K7PrefixGroup0004Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K7PrefixGroup0005Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K7PrefixGroup0006Sound
import Erdos848.TailGlobalMixedCoverageBridge

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k7StandardCertifiedPrefixes : List (List ℕ) :=
  k7PrefixGroup0000.map Prod.fst ++
  k7PrefixGroup0001.map Prod.fst ++
  k7PrefixGroup0002.map Prod.fst ++
  k7PrefixGroup0003.map Prod.fst ++
  k7PrefixGroup0004.map Prod.fst ++
  k7PrefixGroup0005.map Prod.fst ++
  k7PrefixGroup0006.map Prod.fst

theorem k7StandardCertifiedPrefixes_eq :
    k7StandardCertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 7 := by
  rfl

theorem k7PrefixGroup0000_standard_all :
    (k7PrefixGroup0000.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 7) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k7PrefixGroup0000_standard_passes

theorem k7PrefixGroup0001_standard_all :
    (k7PrefixGroup0001.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 7) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k7PrefixGroup0001_standard_passes

theorem k7PrefixGroup0002_standard_all :
    (k7PrefixGroup0002.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 7) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k7PrefixGroup0002_standard_passes

theorem k7PrefixGroup0003_standard_all :
    (k7PrefixGroup0003.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 7) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k7PrefixGroup0003_standard_passes

theorem k7PrefixGroup0004_standard_all :
    (k7PrefixGroup0004.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 7) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k7PrefixGroup0004_standard_passes

theorem k7PrefixGroup0005_standard_all :
    (k7PrefixGroup0005.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 7) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k7PrefixGroup0005_standard_passes

theorem k7PrefixGroup0006_standard_all :
    (k7PrefixGroup0006.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 7) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k7PrefixGroup0006_standard_passes

theorem k7StandardCertifiedPrefixes_pass :
    k7StandardCertifiedPrefixes.all
      (Erdos848.globalMixedSupportPrefixPasses 7) = true := by
  simp only [k7StandardCertifiedPrefixes, List.all_append]
  rw [k7PrefixGroup0000_standard_all]
  rw [k7PrefixGroup0001_standard_all]
  rw [k7PrefixGroup0002_standard_all]
  rw [k7PrefixGroup0003_standard_all]
  rw [k7PrefixGroup0004_standard_all]
  rw [k7PrefixGroup0005_standard_all]
  rw [k7PrefixGroup0006_standard_all]
  rfl

theorem k7FeasiblePrefixes_standard_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 7).all
      (Erdos848.globalMixedSupportPrefixPasses 7) = true := by
  rw [← k7StandardCertifiedPrefixes_eq]
  exact k7StandardCertifiedPrefixes_pass

#print axioms k7FeasiblePrefixes_standard_pass

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
