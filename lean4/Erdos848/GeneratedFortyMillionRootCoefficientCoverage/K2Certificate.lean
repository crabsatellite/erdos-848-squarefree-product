import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Sound
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0002Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2SoundCertificate

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2RootCoefficientCertifiedPrefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001.map Prod.fst ++
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0002.map Prod.fst

theorem k2RootCoefficientCertifiedPrefixes_eq :
    k2RootCoefficientCertifiedPrefixes = Erdos848.globalMixedFeasiblePrefixesKernel 2 := by
  rw [← Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2StandardCertifiedPrefixes_eq]
  rfl

theorem k2RootCoefficientCertifiedPrefixes_pass :
    k2RootCoefficientCertifiedPrefixes.all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 2) = true := by
  simp only [k2RootCoefficientCertifiedPrefixes, List.all_append]
  rw [k2PrefixGroup0000_global_root_coefficient_passes]
  rw [k2PrefixGroup0001_global_root_coefficient_passes]
  rw [k2PrefixGroup0002_global_root_coefficient_passes]
  rfl

theorem k2FeasiblePrefixes_root_coefficient_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 2).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 2) = true := by
  rw [← k2RootCoefficientCertifiedPrefixes_eq]
  exact k2RootCoefficientCertifiedPrefixes_pass

theorem k2RootCoefficientCertifiedPrefixes_endpoint_threshold_pass :
    k2RootCoefficientCertifiedPrefixes.all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 2)) = true := by
  simp only [k2RootCoefficientCertifiedPrefixes, List.all_append]
  rw [k2PrefixGroup0000_endpoint_threshold_passes]
  rw [k2PrefixGroup0001_endpoint_threshold_passes]
  rw [k2PrefixGroup0002_endpoint_threshold_passes]
  rfl

theorem k2FeasiblePrefixes_endpoint_threshold_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 2).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 2)) = true := by
  rw [← k2RootCoefficientCertifiedPrefixes_eq]
  exact k2RootCoefficientCertifiedPrefixes_endpoint_threshold_pass

#print axioms k2FeasiblePrefixes_root_coefficient_pass
#print axioms k2FeasiblePrefixes_endpoint_threshold_pass

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
