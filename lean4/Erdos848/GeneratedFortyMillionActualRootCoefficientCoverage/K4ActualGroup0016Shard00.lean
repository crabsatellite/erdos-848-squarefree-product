import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0016Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0016ActualShard00Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0016ActualRows.drop 0).take 32

theorem k4PrefixGroup0016ActualShard00_passes :
    k4PrefixGroup0016ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0016RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0016ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
