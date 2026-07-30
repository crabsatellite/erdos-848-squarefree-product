import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0001Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0001ActualShard10Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0001ActualRows.drop 320).take 19

theorem k5PrefixGroup0001ActualShard10_passes :
    k5PrefixGroup0001ActualShard10Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0001RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0001ActualShard10_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
