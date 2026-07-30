import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0000Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0000ActualShard02Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0000ActualRows.drop 64).take 32

theorem k4PrefixGroup0000ActualShard02_passes :
    k4PrefixGroup0000ActualShard02Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0000RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0000ActualShard02_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
