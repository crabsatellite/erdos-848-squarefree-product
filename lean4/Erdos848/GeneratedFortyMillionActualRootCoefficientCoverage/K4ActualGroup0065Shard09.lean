import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0065Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0065ActualShard09Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0065ActualRows.drop 288).take 32

theorem k4PrefixGroup0065ActualShard09_passes :
    k4PrefixGroup0065ActualShard09Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0065RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0065ActualShard09_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
