import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0003Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0003ActualShard07Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0003ActualRows.drop 224).take 32

theorem k5PrefixGroup0003ActualShard07_passes :
    k5PrefixGroup0003ActualShard07Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0003RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0003ActualShard07_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
