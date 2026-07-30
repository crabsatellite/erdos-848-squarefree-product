import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0002Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0002ActualShard08Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0002ActualRows.drop 256).take 12

theorem k5PrefixGroup0002ActualShard08_passes :
    k5PrefixGroup0002ActualShard08Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0002RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0002ActualShard08_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
