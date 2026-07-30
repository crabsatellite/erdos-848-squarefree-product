import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0028Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0028ActualShard03Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0028ActualRows.drop 96).take 32

theorem k4PrefixGroup0028ActualShard03_passes :
    k4PrefixGroup0028ActualShard03Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0028RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0028ActualShard03_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
