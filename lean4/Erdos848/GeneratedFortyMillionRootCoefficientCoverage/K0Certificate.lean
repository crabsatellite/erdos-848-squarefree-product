import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K0PrefixGroup0000Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K0SoundCertificate

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k0RootCoefficientCertifiedPrefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000.map Prod.fst

theorem k0RootCoefficientCertifiedPrefixes_eq :
    k0RootCoefficientCertifiedPrefixes = Erdos848.globalMixedFeasiblePrefixesKernel 0 := by
  rw [← Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0StandardCertifiedPrefixes_eq]
  rfl

theorem k0RootCoefficientCertifiedPrefixes_pass :
    k0RootCoefficientCertifiedPrefixes.all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 0) = true := by
  simpa only [k0RootCoefficientCertifiedPrefixes] using
    k0PrefixGroup0000_global_root_coefficient_passes

theorem k0FeasiblePrefixes_root_coefficient_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 0).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 0) = true := by
  rw [← k0RootCoefficientCertifiedPrefixes_eq]
  exact k0RootCoefficientCertifiedPrefixes_pass

theorem k0RootCoefficientCertifiedPrefixes_endpoint_threshold_pass :
    k0RootCoefficientCertifiedPrefixes.all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 0)) = true := by
  simpa only [k0RootCoefficientCertifiedPrefixes] using
    k0PrefixGroup0000_endpoint_threshold_passes

theorem k0FeasiblePrefixes_endpoint_threshold_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 0).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 0)) = true := by
  rw [← k0RootCoefficientCertifiedPrefixes_eq]
  exact k0RootCoefficientCertifiedPrefixes_endpoint_threshold_pass

#print axioms k0FeasiblePrefixes_root_coefficient_pass
#print axioms k0FeasiblePrefixes_endpoint_threshold_pass

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
