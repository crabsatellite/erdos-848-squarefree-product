import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0048Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0048ActualShard10Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0048ActualRows.drop 320).take 18

theorem k4PrefixGroup0048ActualShard10_passes :
    k4PrefixGroup0048ActualShard10Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0048RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0048ActualShard10_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
