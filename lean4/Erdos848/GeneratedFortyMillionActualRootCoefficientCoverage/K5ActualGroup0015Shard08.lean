import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0015Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0015ActualShard08Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0015ActualRows.drop 256).take 25

theorem k5PrefixGroup0015ActualShard08_passes :
    k5PrefixGroup0015ActualShard08Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0015RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0015ActualShard08_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
