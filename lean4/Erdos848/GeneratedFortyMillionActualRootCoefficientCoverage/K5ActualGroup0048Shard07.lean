import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0048Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0048ActualShard07Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0048ActualRows.drop 224).take 25

theorem k5PrefixGroup0048ActualShard07_passes :
    k5PrefixGroup0048ActualShard07Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0048RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0048ActualShard07_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
