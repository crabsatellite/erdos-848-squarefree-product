import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7ActualGroup0000Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7PrefixGroup0000ActualShard01Rows : List (List Nat × Nat) :=
  (k7PrefixGroup0000ActualRows.drop 32).take 15

theorem k7PrefixGroup0000ActualShard01_passes :
    k7PrefixGroup0000ActualShard01Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k7PrefixGroup0000RootCoefficientPasses = true := by
  rfl

#print axioms k7PrefixGroup0000ActualShard01_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
