import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0064Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0064ActualShard10Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0064ActualRows.drop 320).take 29

theorem k4PrefixGroup0064ActualShard10_passes :
    k4PrefixGroup0064ActualShard10Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0064RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0064ActualShard10_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
