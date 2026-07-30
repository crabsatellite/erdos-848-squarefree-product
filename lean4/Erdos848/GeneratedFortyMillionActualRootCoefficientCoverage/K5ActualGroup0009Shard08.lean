import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0009Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0009ActualShard08Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0009ActualRows.drop 256).take 21

theorem k5PrefixGroup0009ActualShard08_passes :
    k5PrefixGroup0009ActualShard08Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0009RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0009ActualShard08_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
