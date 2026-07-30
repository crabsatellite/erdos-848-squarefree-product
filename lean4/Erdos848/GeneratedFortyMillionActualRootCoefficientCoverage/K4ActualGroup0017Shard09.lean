import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0017Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0017ActualShard09Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0017ActualRows.drop 288).take 18

theorem k4PrefixGroup0017ActualShard09_passes :
    k4PrefixGroup0017ActualShard09Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0017RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0017ActualShard09_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
