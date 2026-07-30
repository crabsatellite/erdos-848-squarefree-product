import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0083Defs
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

theorem k5PrefixGroup0083ActualRows_pass :
    k5PrefixGroup0083ActualRows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0083RootCoefficientPasses = true := by
  rfl

theorem k5PrefixGroup0083_actual_global_root_coefficient_passes :
    (k5PrefixGroup0083ActualRows.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses
        Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 5) = true := by
  rfl

#print axioms k5PrefixGroup0083_actual_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
