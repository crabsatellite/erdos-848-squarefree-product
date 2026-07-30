import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0075Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0075ActualShard01Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0075ActualRows.drop 32).take 32

theorem k4PrefixGroup0075ActualShard01_passes :
    k4PrefixGroup0075ActualShard01Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0075RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0075ActualShard01_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
