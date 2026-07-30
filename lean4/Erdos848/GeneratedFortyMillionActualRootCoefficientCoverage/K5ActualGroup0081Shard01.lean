import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0081Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0081ActualShard01Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0081ActualRows.drop 32).take 26

theorem k5PrefixGroup0081ActualShard01_passes :
    k5PrefixGroup0081ActualShard01Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0081RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0081ActualShard01_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
