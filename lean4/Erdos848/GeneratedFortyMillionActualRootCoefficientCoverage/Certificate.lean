import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4Certificate
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5Certificate
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6Certificate
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7Certificate

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem actualRootCoefficientPass
    {k : Nat} (hkLower : 4 <= k) (hkUpper : k <= 7)
    {supportPrefix : List Nat}
    (hmem : supportPrefix ∈ Erdos848.globalMixedFeasiblePrefixesKernel k)
    (hUpper : Erdos848.globalMixedSupportEndpoint supportPrefix <
      200_000_000) :
    Erdos848.fortyMillionRootPrefixPasses
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling k
      supportPrefix = true := by
  interval_cases k
  · exact k4ActualRootCoefficientPass hmem hUpper
  · exact k5ActualRootCoefficientPass hmem hUpper
  · exact k6ActualRootCoefficientPass hmem hUpper
  · exact k7ActualRootCoefficientPass hmem hUpper

#print axioms actualRootCoefficientPass

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
