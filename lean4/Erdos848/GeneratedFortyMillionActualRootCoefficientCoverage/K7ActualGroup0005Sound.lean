import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7ActualGroup0005Defs
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

theorem k7PrefixGroup0005ActualRows_pass :
    k7PrefixGroup0005ActualRows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k7PrefixGroup0005RootCoefficientPasses = true := by
  rfl

theorem k7PrefixGroup0005_actual_global_root_coefficient_passes :
    (k7PrefixGroup0005ActualRows.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses
        Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 7) = true := by
  rfl

#print axioms k7PrefixGroup0005_actual_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
