import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0022Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0022ActualShard01Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0022ActualRows.drop 32).take 32

theorem k4PrefixGroup0022ActualShard01_passes :
    k4PrefixGroup0022ActualShard01Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0022RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0022ActualShard01_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
