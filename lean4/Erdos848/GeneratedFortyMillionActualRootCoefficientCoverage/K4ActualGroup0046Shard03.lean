import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0046Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0046ActualShard03Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0046ActualRows.drop 96).take 32

theorem k4PrefixGroup0046ActualShard03_passes :
    k4PrefixGroup0046ActualShard03Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0046RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0046ActualShard03_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
