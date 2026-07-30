import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0022Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0022ActualShard10Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0022ActualRows.drop 320).take 32

theorem k4PrefixGroup0022ActualShard10_passes :
    k4PrefixGroup0022ActualShard10Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0022RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0022ActualShard10_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
