import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0049Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0049ActualShard06Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0049ActualRows.drop 192).take 16

theorem k5PrefixGroup0049ActualShard06_passes :
    k5PrefixGroup0049ActualShard06Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0049RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0049ActualShard06_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
