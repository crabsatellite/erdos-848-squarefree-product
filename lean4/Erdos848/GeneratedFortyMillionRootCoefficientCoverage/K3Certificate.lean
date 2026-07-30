import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0000Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0001Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0002Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0003Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0004Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0005Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0006Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0007Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0008Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0009Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0010Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0012Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0013Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0014Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0017Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0018Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0019Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0020Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0021Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0022Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0025Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0026Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3SoundCertificate

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3RootCoefficientCertifiedPrefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0000.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0001.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0002.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0003.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0004.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0005.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0006.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0007.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0008.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0009.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0010.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0012.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0013.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0014.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0017.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0018.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0019.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0020.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0021.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0022.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0025.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0026.map Prod.fst

theorem k3RootCoefficientCertifiedPrefixes_eq :
    k3RootCoefficientCertifiedPrefixes = Erdos848.globalMixedFeasiblePrefixesKernel 3 := by
  rw [← Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3StandardCertifiedPrefixes_eq]
  rfl

theorem k3RootCoefficientCertifiedPrefixes_pass :
    k3RootCoefficientCertifiedPrefixes.all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 3) = true := by
  simp only [k3RootCoefficientCertifiedPrefixes, List.all_append]
  rw [k3PrefixGroup0000_global_root_coefficient_passes]
  rw [k3PrefixGroup0001_global_root_coefficient_passes]
  rw [k3PrefixGroup0002_global_root_coefficient_passes]
  rw [k3PrefixGroup0003_global_root_coefficient_passes]
  rw [k3PrefixGroup0004_global_root_coefficient_passes]
  rw [k3PrefixGroup0005_global_root_coefficient_passes]
  rw [k3PrefixGroup0006_global_root_coefficient_passes]
  rw [k3PrefixGroup0007_global_root_coefficient_passes]
  rw [k3PrefixGroup0008_global_root_coefficient_passes]
  rw [k3PrefixGroup0009_global_root_coefficient_passes]
  rw [k3PrefixGroup0010_global_root_coefficient_passes]
  rw [k3PrefixGroup0011_global_root_coefficient_passes]
  rw [k3PrefixGroup0012_global_root_coefficient_passes]
  rw [k3PrefixGroup0013_global_root_coefficient_passes]
  rw [k3PrefixGroup0014_global_root_coefficient_passes]
  rw [k3PrefixGroup0015_global_root_coefficient_passes]
  rw [k3PrefixGroup0016_global_root_coefficient_passes]
  rw [k3PrefixGroup0017_global_root_coefficient_passes]
  rw [k3PrefixGroup0018_global_root_coefficient_passes]
  rw [k3PrefixGroup0019_global_root_coefficient_passes]
  rw [k3PrefixGroup0020_global_root_coefficient_passes]
  rw [k3PrefixGroup0021_global_root_coefficient_passes]
  rw [k3PrefixGroup0022_global_root_coefficient_passes]
  rw [k3PrefixGroup0023_global_root_coefficient_passes]
  rw [k3PrefixGroup0024_global_root_coefficient_passes]
  rw [k3PrefixGroup0025_global_root_coefficient_passes]
  rw [k3PrefixGroup0026_global_root_coefficient_passes]
  rfl

theorem k3FeasiblePrefixes_root_coefficient_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 3).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 3) = true := by
  rw [← k3RootCoefficientCertifiedPrefixes_eq]
  exact k3RootCoefficientCertifiedPrefixes_pass

theorem k3RootCoefficientCertifiedPrefixes_endpoint_threshold_pass :
    k3RootCoefficientCertifiedPrefixes.all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 3)) = true := by
  simp only [k3RootCoefficientCertifiedPrefixes, List.all_append]
  rw [k3PrefixGroup0000_endpoint_threshold_passes]
  rw [k3PrefixGroup0001_endpoint_threshold_passes]
  rw [k3PrefixGroup0002_endpoint_threshold_passes]
  rw [k3PrefixGroup0003_endpoint_threshold_passes]
  rw [k3PrefixGroup0004_endpoint_threshold_passes]
  rw [k3PrefixGroup0005_endpoint_threshold_passes]
  rw [k3PrefixGroup0006_endpoint_threshold_passes]
  rw [k3PrefixGroup0007_endpoint_threshold_passes]
  rw [k3PrefixGroup0008_endpoint_threshold_passes]
  rw [k3PrefixGroup0009_endpoint_threshold_passes]
  rw [k3PrefixGroup0010_endpoint_threshold_passes]
  rw [k3PrefixGroup0011_endpoint_threshold_passes]
  rw [k3PrefixGroup0012_endpoint_threshold_passes]
  rw [k3PrefixGroup0013_endpoint_threshold_passes]
  rw [k3PrefixGroup0014_endpoint_threshold_passes]
  rw [k3PrefixGroup0015_endpoint_threshold_passes]
  rw [k3PrefixGroup0016_endpoint_threshold_passes]
  rw [k3PrefixGroup0017_endpoint_threshold_passes]
  rw [k3PrefixGroup0018_endpoint_threshold_passes]
  rw [k3PrefixGroup0019_endpoint_threshold_passes]
  rw [k3PrefixGroup0020_endpoint_threshold_passes]
  rw [k3PrefixGroup0021_endpoint_threshold_passes]
  rw [k3PrefixGroup0022_endpoint_threshold_passes]
  rw [k3PrefixGroup0023_endpoint_threshold_passes]
  rw [k3PrefixGroup0024_endpoint_threshold_passes]
  rw [k3PrefixGroup0025_endpoint_threshold_passes]
  rw [k3PrefixGroup0026_endpoint_threshold_passes]
  rfl

theorem k3FeasiblePrefixes_endpoint_threshold_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 3).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 3)) = true := by
  rw [← k3RootCoefficientCertifiedPrefixes_eq]
  exact k3RootCoefficientCertifiedPrefixes_endpoint_threshold_pass

#print axioms k3FeasiblePrefixes_root_coefficient_pass
#print axioms k3FeasiblePrefixes_endpoint_threshold_pass

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
