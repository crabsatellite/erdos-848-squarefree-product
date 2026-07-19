import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0000Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0001Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0002Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0003Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0004Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0005Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0006Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0007Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0008Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0009Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0010Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0011Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0012Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0013Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0014Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0015Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0016Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0017Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0018Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0019Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0020Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0021Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0022Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0023Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0024Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0025Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0026Sound
import Erdos848.TailGlobalMixedCoverageBridge

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k3StandardCertifiedPrefixes : List (List ℕ) :=
  k3PrefixGroup0000.map Prod.fst ++
  k3PrefixGroup0001.map Prod.fst ++
  k3PrefixGroup0002.map Prod.fst ++
  k3PrefixGroup0003.map Prod.fst ++
  k3PrefixGroup0004.map Prod.fst ++
  k3PrefixGroup0005.map Prod.fst ++
  k3PrefixGroup0006.map Prod.fst ++
  k3PrefixGroup0007.map Prod.fst ++
  k3PrefixGroup0008.map Prod.fst ++
  k3PrefixGroup0009.map Prod.fst ++
  k3PrefixGroup0010.map Prod.fst ++
  k3PrefixGroup0011.map Prod.fst ++
  k3PrefixGroup0012.map Prod.fst ++
  k3PrefixGroup0013.map Prod.fst ++
  k3PrefixGroup0014.map Prod.fst ++
  k3PrefixGroup0015.map Prod.fst ++
  k3PrefixGroup0016.map Prod.fst ++
  k3PrefixGroup0017.map Prod.fst ++
  k3PrefixGroup0018.map Prod.fst ++
  k3PrefixGroup0019.map Prod.fst ++
  k3PrefixGroup0020.map Prod.fst ++
  k3PrefixGroup0021.map Prod.fst ++
  k3PrefixGroup0022.map Prod.fst ++
  k3PrefixGroup0023.map Prod.fst ++
  k3PrefixGroup0024.map Prod.fst ++
  k3PrefixGroup0025.map Prod.fst ++
  k3PrefixGroup0026.map Prod.fst

theorem k3StandardCertifiedPrefixes_eq :
    k3StandardCertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 3 := by
  rfl

theorem k3PrefixGroup0000_standard_all :
    (k3PrefixGroup0000.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0000_standard_passes

theorem k3PrefixGroup0001_standard_all :
    (k3PrefixGroup0001.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0001_standard_passes

theorem k3PrefixGroup0002_standard_all :
    (k3PrefixGroup0002.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0002_standard_passes

theorem k3PrefixGroup0003_standard_all :
    (k3PrefixGroup0003.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0003_standard_passes

theorem k3PrefixGroup0004_standard_all :
    (k3PrefixGroup0004.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0004_standard_passes

theorem k3PrefixGroup0005_standard_all :
    (k3PrefixGroup0005.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0005_standard_passes

theorem k3PrefixGroup0006_standard_all :
    (k3PrefixGroup0006.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0006_standard_passes

theorem k3PrefixGroup0007_standard_all :
    (k3PrefixGroup0007.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0007_standard_passes

theorem k3PrefixGroup0008_standard_all :
    (k3PrefixGroup0008.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0008_standard_passes

theorem k3PrefixGroup0009_standard_all :
    (k3PrefixGroup0009.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0009_standard_passes

theorem k3PrefixGroup0010_standard_all :
    (k3PrefixGroup0010.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0010_standard_passes

theorem k3PrefixGroup0011_standard_all :
    (k3PrefixGroup0011.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0011_standard_passes

theorem k3PrefixGroup0012_standard_all :
    (k3PrefixGroup0012.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0012_standard_passes

theorem k3PrefixGroup0013_standard_all :
    (k3PrefixGroup0013.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0013_standard_passes

theorem k3PrefixGroup0014_standard_all :
    (k3PrefixGroup0014.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0014_standard_passes

theorem k3PrefixGroup0015_standard_all :
    (k3PrefixGroup0015.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0015_standard_passes

theorem k3PrefixGroup0016_standard_all :
    (k3PrefixGroup0016.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0016_standard_passes

theorem k3PrefixGroup0017_standard_all :
    (k3PrefixGroup0017.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0017_standard_passes

theorem k3PrefixGroup0018_standard_all :
    (k3PrefixGroup0018.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0018_standard_passes

theorem k3PrefixGroup0019_standard_all :
    (k3PrefixGroup0019.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0019_standard_passes

theorem k3PrefixGroup0020_standard_all :
    (k3PrefixGroup0020.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0020_standard_passes

theorem k3PrefixGroup0021_standard_all :
    (k3PrefixGroup0021.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0021_standard_passes

theorem k3PrefixGroup0022_standard_all :
    (k3PrefixGroup0022.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0022_standard_passes

theorem k3PrefixGroup0023_standard_all :
    (k3PrefixGroup0023.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0023_standard_passes

theorem k3PrefixGroup0024_standard_all :
    (k3PrefixGroup0024.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0024_standard_passes

theorem k3PrefixGroup0025_standard_all :
    (k3PrefixGroup0025.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0025_standard_passes

theorem k3PrefixGroup0026_standard_all :
    (k3PrefixGroup0026.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k3PrefixGroup0026_standard_passes

theorem k3StandardCertifiedPrefixes_pass :
    k3StandardCertifiedPrefixes.all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  simp only [k3StandardCertifiedPrefixes, List.all_append]
  rw [k3PrefixGroup0000_standard_all]
  rw [k3PrefixGroup0001_standard_all]
  rw [k3PrefixGroup0002_standard_all]
  rw [k3PrefixGroup0003_standard_all]
  rw [k3PrefixGroup0004_standard_all]
  rw [k3PrefixGroup0005_standard_all]
  rw [k3PrefixGroup0006_standard_all]
  rw [k3PrefixGroup0007_standard_all]
  rw [k3PrefixGroup0008_standard_all]
  rw [k3PrefixGroup0009_standard_all]
  rw [k3PrefixGroup0010_standard_all]
  rw [k3PrefixGroup0011_standard_all]
  rw [k3PrefixGroup0012_standard_all]
  rw [k3PrefixGroup0013_standard_all]
  rw [k3PrefixGroup0014_standard_all]
  rw [k3PrefixGroup0015_standard_all]
  rw [k3PrefixGroup0016_standard_all]
  rw [k3PrefixGroup0017_standard_all]
  rw [k3PrefixGroup0018_standard_all]
  rw [k3PrefixGroup0019_standard_all]
  rw [k3PrefixGroup0020_standard_all]
  rw [k3PrefixGroup0021_standard_all]
  rw [k3PrefixGroup0022_standard_all]
  rw [k3PrefixGroup0023_standard_all]
  rw [k3PrefixGroup0024_standard_all]
  rw [k3PrefixGroup0025_standard_all]
  rw [k3PrefixGroup0026_standard_all]
  rfl

theorem k3FeasiblePrefixes_standard_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 3).all
      (Erdos848.globalMixedSupportPrefixPasses 3) = true := by
  rw [← k3StandardCertifiedPrefixes_eq]
  exact k3StandardCertifiedPrefixes_pass

#print axioms k3FeasiblePrefixes_standard_pass

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
