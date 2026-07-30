import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0016Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0016ActualShard02Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0016ActualRows.drop 64).take 32

theorem k4PrefixGroup0016ActualShard02_passes :
    k4PrefixGroup0016ActualShard02Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0016RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0016ActualShard02_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
