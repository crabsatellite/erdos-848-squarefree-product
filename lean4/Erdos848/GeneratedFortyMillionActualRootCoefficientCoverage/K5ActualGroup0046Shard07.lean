import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0046Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0046ActualShard07Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0046ActualRows.drop 224).take 32

theorem k5PrefixGroup0046ActualShard07_passes :
    k5PrefixGroup0046ActualShard07Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0046RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0046ActualShard07_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
