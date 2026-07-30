import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0000Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0000ActualShard01Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0000ActualRows.drop 32).take 32

theorem k5PrefixGroup0000ActualShard01_passes :
    k5PrefixGroup0000ActualShard01Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0000RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0000ActualShard01_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
