import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0013Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0013ActualShard04Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0013ActualRows.drop 128).take 4

theorem k5PrefixGroup0013ActualShard04_passes :
    k5PrefixGroup0013ActualShard04Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0013RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0013ActualShard04_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
