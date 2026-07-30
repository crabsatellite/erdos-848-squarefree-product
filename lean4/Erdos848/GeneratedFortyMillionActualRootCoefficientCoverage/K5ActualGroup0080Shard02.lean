import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0080Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0080ActualShard02Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0080ActualRows.drop 64).take 32

theorem k5PrefixGroup0080ActualShard02_passes :
    k5PrefixGroup0080ActualShard02Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0080RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0080ActualShard02_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
