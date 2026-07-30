import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K0Certificate
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K1Certificate
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2Certificate
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3Certificate

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem lowFeasiblePrefixes_root_coefficient_pass
    {k : Nat} (hk : k <= 3) :
    (Erdos848.globalMixedFeasiblePrefixesKernel k).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling k) = true := by
  interval_cases k
  · exact k0FeasiblePrefixes_root_coefficient_pass
  · exact k1FeasiblePrefixes_root_coefficient_pass
  · exact k2FeasiblePrefixes_root_coefficient_pass
  · exact k3FeasiblePrefixes_root_coefficient_pass

theorem lowFeasiblePrefix_endpoint_le_threshold
    {k : Nat} (hk : k <= 3) {supportPrefix : List Nat}
    (hmem : supportPrefix ∈ Erdos848.globalMixedFeasiblePrefixesKernel k) :
    Erdos848.globalMixedSupportEndpoint supportPrefix <=
      Erdos848.globalMixedSupportProductThreshold k := by
  have hall : (Erdos848.globalMixedFeasiblePrefixesKernel k).all
      (fun support => decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold k)) = true := by
    interval_cases k
    · exact k0FeasiblePrefixes_endpoint_threshold_pass
    · exact k1FeasiblePrefixes_endpoint_threshold_pass
    · exact k2FeasiblePrefixes_endpoint_threshold_pass
    · exact k3FeasiblePrefixes_endpoint_threshold_pass
  exact of_decide_eq_true ((List.all_eq_true.mp hall) supportPrefix hmem)

#print axioms lowFeasiblePrefixes_root_coefficient_pass
#print axioms lowFeasiblePrefix_endpoint_le_threshold

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
