import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0017Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0017ActualShard07Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0017ActualRows.drop 224).take 5

theorem k5PrefixGroup0017ActualShard07_passes :
    k5PrefixGroup0017ActualShard07Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0017RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0017ActualShard07_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
