import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0018Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0018ActualShard04Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0018ActualRows.drop 128).take 28

theorem k5PrefixGroup0018ActualShard04_passes :
    k5PrefixGroup0018ActualShard04Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0018RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0018ActualShard04_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
