import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0050Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0050ActualShard12Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0050ActualRows.drop 384).take 3

theorem k4PrefixGroup0050ActualShard12_passes :
    k4PrefixGroup0050ActualShard12Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0050RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0050ActualShard12_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
