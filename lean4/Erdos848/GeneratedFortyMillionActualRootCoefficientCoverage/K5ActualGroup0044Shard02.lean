import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0044Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0044ActualShard02Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0044ActualRows.drop 64).take 32

theorem k5PrefixGroup0044ActualShard02_passes :
    k5PrefixGroup0044ActualShard02Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0044RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0044ActualShard02_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
