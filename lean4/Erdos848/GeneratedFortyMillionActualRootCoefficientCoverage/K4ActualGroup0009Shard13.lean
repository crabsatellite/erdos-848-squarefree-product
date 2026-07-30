import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0009Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0009ActualShard13Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0009ActualRows.drop 416).take 6

theorem k4PrefixGroup0009ActualShard13_passes :
    k4PrefixGroup0009ActualShard13Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0009RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0009ActualShard13_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
