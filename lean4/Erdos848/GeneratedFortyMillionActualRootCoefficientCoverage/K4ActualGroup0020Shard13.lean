import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0020Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0020ActualShard13Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0020ActualRows.drop 416).take 1

theorem k4PrefixGroup0020ActualShard13_passes :
    k4PrefixGroup0020ActualShard13Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0020RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0020ActualShard13_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
