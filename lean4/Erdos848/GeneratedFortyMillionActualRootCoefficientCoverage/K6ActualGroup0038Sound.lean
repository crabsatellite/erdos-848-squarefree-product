import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0038Defs
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

theorem k6PrefixGroup0038ActualRows_pass :
    k6PrefixGroup0038ActualRows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0038RootCoefficientPasses = true := by
  rfl

theorem k6PrefixGroup0038_actual_global_root_coefficient_passes :
    (k6PrefixGroup0038ActualRows.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses
        Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 6) = true := by
  rfl

#print axioms k6PrefixGroup0038_actual_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
