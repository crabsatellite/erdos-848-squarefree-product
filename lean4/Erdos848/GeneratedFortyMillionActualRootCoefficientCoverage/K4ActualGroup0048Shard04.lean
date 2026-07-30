import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0048Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0048ActualShard04Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0048ActualRows.drop 128).take 32

theorem k4PrefixGroup0048ActualShard04_passes :
    k4PrefixGroup0048ActualShard04Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0048RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0048ActualShard04_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
