import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0000Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0001Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0002Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0003Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0004Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0005Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0006Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0007Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0008Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0009Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0010Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0011Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0012Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0013Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0014Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0015Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0016Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0017Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0018Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0019Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0020Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0021Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0022Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0023Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0024Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0025Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0026Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0027Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0028Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0029Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0030Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0031Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0032Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0033Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0034Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0035Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0036Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0037Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0038Sound
import Erdos848.TailGlobalMixedCoverageBridge

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k6StandardCertifiedPrefixes : List (List ℕ) :=
  k6PrefixGroup0000.map Prod.fst ++
  k6PrefixGroup0001.map Prod.fst ++
  k6PrefixGroup0002.map Prod.fst ++
  k6PrefixGroup0003.map Prod.fst ++
  k6PrefixGroup0004.map Prod.fst ++
  k6PrefixGroup0005.map Prod.fst ++
  k6PrefixGroup0006.map Prod.fst ++
  k6PrefixGroup0007.map Prod.fst ++
  k6PrefixGroup0008.map Prod.fst ++
  k6PrefixGroup0009.map Prod.fst ++
  k6PrefixGroup0010.map Prod.fst ++
  k6PrefixGroup0011.map Prod.fst ++
  k6PrefixGroup0012.map Prod.fst ++
  k6PrefixGroup0013.map Prod.fst ++
  k6PrefixGroup0014.map Prod.fst ++
  k6PrefixGroup0015.map Prod.fst ++
  k6PrefixGroup0016.map Prod.fst ++
  k6PrefixGroup0017.map Prod.fst ++
  k6PrefixGroup0018.map Prod.fst ++
  k6PrefixGroup0019.map Prod.fst ++
  k6PrefixGroup0020.map Prod.fst ++
  k6PrefixGroup0021.map Prod.fst ++
  k6PrefixGroup0022.map Prod.fst ++
  k6PrefixGroup0023.map Prod.fst ++
  k6PrefixGroup0024.map Prod.fst ++
  k6PrefixGroup0025.map Prod.fst ++
  k6PrefixGroup0026.map Prod.fst ++
  k6PrefixGroup0027.map Prod.fst ++
  k6PrefixGroup0028.map Prod.fst ++
  k6PrefixGroup0029.map Prod.fst ++
  k6PrefixGroup0030.map Prod.fst ++
  k6PrefixGroup0031.map Prod.fst ++
  k6PrefixGroup0032.map Prod.fst ++
  k6PrefixGroup0033.map Prod.fst ++
  k6PrefixGroup0034.map Prod.fst ++
  k6PrefixGroup0035.map Prod.fst ++
  k6PrefixGroup0036.map Prod.fst ++
  k6PrefixGroup0037.map Prod.fst ++
  k6PrefixGroup0038.map Prod.fst

theorem k6StandardCertifiedPrefixes_eq :
    k6StandardCertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 6 := by
  rfl

theorem k6PrefixGroup0000_standard_all :
    (k6PrefixGroup0000.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0000_standard_passes

theorem k6PrefixGroup0001_standard_all :
    (k6PrefixGroup0001.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0001_standard_passes

theorem k6PrefixGroup0002_standard_all :
    (k6PrefixGroup0002.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0002_standard_passes

theorem k6PrefixGroup0003_standard_all :
    (k6PrefixGroup0003.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0003_standard_passes

theorem k6PrefixGroup0004_standard_all :
    (k6PrefixGroup0004.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0004_standard_passes

theorem k6PrefixGroup0005_standard_all :
    (k6PrefixGroup0005.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0005_standard_passes

theorem k6PrefixGroup0006_standard_all :
    (k6PrefixGroup0006.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0006_standard_passes

theorem k6PrefixGroup0007_standard_all :
    (k6PrefixGroup0007.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0007_standard_passes

theorem k6PrefixGroup0008_standard_all :
    (k6PrefixGroup0008.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0008_standard_passes

theorem k6PrefixGroup0009_standard_all :
    (k6PrefixGroup0009.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0009_standard_passes

theorem k6PrefixGroup0010_standard_all :
    (k6PrefixGroup0010.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0010_standard_passes

theorem k6PrefixGroup0011_standard_all :
    (k6PrefixGroup0011.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0011_standard_passes

theorem k6PrefixGroup0012_standard_all :
    (k6PrefixGroup0012.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0012_standard_passes

theorem k6PrefixGroup0013_standard_all :
    (k6PrefixGroup0013.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0013_standard_passes

theorem k6PrefixGroup0014_standard_all :
    (k6PrefixGroup0014.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0014_standard_passes

theorem k6PrefixGroup0015_standard_all :
    (k6PrefixGroup0015.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0015_standard_passes

theorem k6PrefixGroup0016_standard_all :
    (k6PrefixGroup0016.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0016_standard_passes

theorem k6PrefixGroup0017_standard_all :
    (k6PrefixGroup0017.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0017_standard_passes

theorem k6PrefixGroup0018_standard_all :
    (k6PrefixGroup0018.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0018_standard_passes

theorem k6PrefixGroup0019_standard_all :
    (k6PrefixGroup0019.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0019_standard_passes

theorem k6PrefixGroup0020_standard_all :
    (k6PrefixGroup0020.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0020_standard_passes

theorem k6PrefixGroup0021_standard_all :
    (k6PrefixGroup0021.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0021_standard_passes

theorem k6PrefixGroup0022_standard_all :
    (k6PrefixGroup0022.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0022_standard_passes

theorem k6PrefixGroup0023_standard_all :
    (k6PrefixGroup0023.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0023_standard_passes

theorem k6PrefixGroup0024_standard_all :
    (k6PrefixGroup0024.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0024_standard_passes

theorem k6PrefixGroup0025_standard_all :
    (k6PrefixGroup0025.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0025_standard_passes

theorem k6PrefixGroup0026_standard_all :
    (k6PrefixGroup0026.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0026_standard_passes

theorem k6PrefixGroup0027_standard_all :
    (k6PrefixGroup0027.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0027_standard_passes

theorem k6PrefixGroup0028_standard_all :
    (k6PrefixGroup0028.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0028_standard_passes

theorem k6PrefixGroup0029_standard_all :
    (k6PrefixGroup0029.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0029_standard_passes

theorem k6PrefixGroup0030_standard_all :
    (k6PrefixGroup0030.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0030_standard_passes

theorem k6PrefixGroup0031_standard_all :
    (k6PrefixGroup0031.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0031_standard_passes

theorem k6PrefixGroup0032_standard_all :
    (k6PrefixGroup0032.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0032_standard_passes

theorem k6PrefixGroup0033_standard_all :
    (k6PrefixGroup0033.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0033_standard_passes

theorem k6PrefixGroup0034_standard_all :
    (k6PrefixGroup0034.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0034_standard_passes

theorem k6PrefixGroup0035_standard_all :
    (k6PrefixGroup0035.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0035_standard_passes

theorem k6PrefixGroup0036_standard_all :
    (k6PrefixGroup0036.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0036_standard_passes

theorem k6PrefixGroup0037_standard_all :
    (k6PrefixGroup0037.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0037_standard_passes

theorem k6PrefixGroup0038_standard_all :
    (k6PrefixGroup0038.map Prod.fst).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  exact Erdos848.all_map_fst_eq_true_of_forall_mem
    k6PrefixGroup0038_standard_passes

theorem k6StandardCertifiedPrefixes_pass :
    k6StandardCertifiedPrefixes.all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  simp only [k6StandardCertifiedPrefixes, List.all_append]
  rw [k6PrefixGroup0000_standard_all]
  rw [k6PrefixGroup0001_standard_all]
  rw [k6PrefixGroup0002_standard_all]
  rw [k6PrefixGroup0003_standard_all]
  rw [k6PrefixGroup0004_standard_all]
  rw [k6PrefixGroup0005_standard_all]
  rw [k6PrefixGroup0006_standard_all]
  rw [k6PrefixGroup0007_standard_all]
  rw [k6PrefixGroup0008_standard_all]
  rw [k6PrefixGroup0009_standard_all]
  rw [k6PrefixGroup0010_standard_all]
  rw [k6PrefixGroup0011_standard_all]
  rw [k6PrefixGroup0012_standard_all]
  rw [k6PrefixGroup0013_standard_all]
  rw [k6PrefixGroup0014_standard_all]
  rw [k6PrefixGroup0015_standard_all]
  rw [k6PrefixGroup0016_standard_all]
  rw [k6PrefixGroup0017_standard_all]
  rw [k6PrefixGroup0018_standard_all]
  rw [k6PrefixGroup0019_standard_all]
  rw [k6PrefixGroup0020_standard_all]
  rw [k6PrefixGroup0021_standard_all]
  rw [k6PrefixGroup0022_standard_all]
  rw [k6PrefixGroup0023_standard_all]
  rw [k6PrefixGroup0024_standard_all]
  rw [k6PrefixGroup0025_standard_all]
  rw [k6PrefixGroup0026_standard_all]
  rw [k6PrefixGroup0027_standard_all]
  rw [k6PrefixGroup0028_standard_all]
  rw [k6PrefixGroup0029_standard_all]
  rw [k6PrefixGroup0030_standard_all]
  rw [k6PrefixGroup0031_standard_all]
  rw [k6PrefixGroup0032_standard_all]
  rw [k6PrefixGroup0033_standard_all]
  rw [k6PrefixGroup0034_standard_all]
  rw [k6PrefixGroup0035_standard_all]
  rw [k6PrefixGroup0036_standard_all]
  rw [k6PrefixGroup0037_standard_all]
  rw [k6PrefixGroup0038_standard_all]
  rfl

theorem k6FeasiblePrefixes_standard_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 6).all
      (Erdos848.globalMixedSupportPrefixPasses 6) = true := by
  rw [← k6StandardCertifiedPrefixes_eq]
  exact k6StandardCertifiedPrefixes_pass

#print axioms k6FeasiblePrefixes_standard_pass

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
