import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0077Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0077ActualShard01Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0077ActualRows.drop 32).take 32

theorem k5PrefixGroup0077ActualShard01_passes :
    k5PrefixGroup0077ActualShard01Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0077RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0077ActualShard01_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
