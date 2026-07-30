import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0003Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0003ActualShard13Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0003ActualRows.drop 416).take 20

theorem k4PrefixGroup0003ActualShard13_passes :
    k4PrefixGroup0003ActualShard13Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0003RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0003ActualShard13_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
