import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0046Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0046ActualShard12Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0046ActualRows.drop 384).take 13

theorem k4PrefixGroup0046ActualShard12_passes :
    k4PrefixGroup0046ActualShard12Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0046RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0046ActualShard12_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
