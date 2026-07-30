import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0041Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0041ActualShard02Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0041ActualRows.drop 64).take 22

theorem k5PrefixGroup0041ActualShard02_passes :
    k5PrefixGroup0041ActualShard02Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0041RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0041ActualShard02_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
