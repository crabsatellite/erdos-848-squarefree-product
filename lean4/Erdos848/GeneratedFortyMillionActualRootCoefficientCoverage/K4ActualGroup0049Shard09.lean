import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0049Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0049ActualShard09Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0049ActualRows.drop 288).take 2

theorem k4PrefixGroup0049ActualShard09_passes :
    k4PrefixGroup0049ActualShard09Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0049RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0049ActualShard09_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
