import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0074Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0074ActualShard00Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0074ActualRows.drop 0).take 32

theorem k4PrefixGroup0074ActualShard00_passes :
    k4PrefixGroup0074ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0074RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0074ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
