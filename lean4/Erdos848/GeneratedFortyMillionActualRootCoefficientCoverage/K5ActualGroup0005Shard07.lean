import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0005Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0005ActualShard07Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0005ActualRows.drop 224).take 23

theorem k5PrefixGroup0005ActualShard07_passes :
    k5PrefixGroup0005ActualShard07Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0005RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0005ActualShard07_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
