import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7ActualGroup0001Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7PrefixGroup0001ActualShard00Rows : List (List Nat × Nat) :=
  (k7PrefixGroup0001ActualRows.drop 0).take 7

theorem k7PrefixGroup0001ActualShard00_passes :
    k7PrefixGroup0001ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k7PrefixGroup0001RootCoefficientPasses = true := by
  rfl

#print axioms k7PrefixGroup0001ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
