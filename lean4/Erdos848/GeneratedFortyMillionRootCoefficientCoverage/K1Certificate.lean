import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K1PrefixGroup0000Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K1SoundCertificate

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k1RootCoefficientCertifiedPrefixes : List (List Nat) :=
  Erdos848.GeneratedTailGlobalMixedSupportCoverage.k1PrefixGroup0000.map Prod.fst

theorem k1RootCoefficientCertifiedPrefixes_eq :
    k1RootCoefficientCertifiedPrefixes = Erdos848.globalMixedFeasiblePrefixesKernel 1 := by
  rw [← Erdos848.GeneratedTailGlobalMixedSupportCoverage.k1StandardCertifiedPrefixes_eq]
  rfl

theorem k1RootCoefficientCertifiedPrefixes_pass :
    k1RootCoefficientCertifiedPrefixes.all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 1) = true := by
  simpa only [k1RootCoefficientCertifiedPrefixes] using
    k1PrefixGroup0000_global_root_coefficient_passes

theorem k1FeasiblePrefixes_root_coefficient_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 1).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 1) = true := by
  rw [← k1RootCoefficientCertifiedPrefixes_eq]
  exact k1RootCoefficientCertifiedPrefixes_pass

theorem k1RootCoefficientCertifiedPrefixes_endpoint_threshold_pass :
    k1RootCoefficientCertifiedPrefixes.all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 1)) = true := by
  simpa only [k1RootCoefficientCertifiedPrefixes] using
    k1PrefixGroup0000_endpoint_threshold_passes

theorem k1FeasiblePrefixes_endpoint_threshold_pass :
    (Erdos848.globalMixedFeasiblePrefixesKernel 1).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 1)) = true := by
  rw [← k1RootCoefficientCertifiedPrefixes_eq]
  exact k1RootCoefficientCertifiedPrefixes_endpoint_threshold_pass

#print axioms k1FeasiblePrefixes_root_coefficient_pass
#print axioms k1FeasiblePrefixes_endpoint_threshold_pass

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
