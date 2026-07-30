import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0000Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0000ActualShard13Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0000ActualRows.drop 416).take 21

theorem k4PrefixGroup0000ActualShard13_passes :
    k4PrefixGroup0000ActualShard13Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0000RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0000ActualShard13_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
