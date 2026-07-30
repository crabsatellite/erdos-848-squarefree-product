import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0007Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0007ActualShard12Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0007ActualRows.drop 384).take 30

theorem k4PrefixGroup0007ActualShard12_passes :
    k4PrefixGroup0007ActualShard12Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0007RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0007ActualShard12_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
