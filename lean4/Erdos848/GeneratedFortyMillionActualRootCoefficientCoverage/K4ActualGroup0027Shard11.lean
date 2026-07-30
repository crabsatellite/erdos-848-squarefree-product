import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0027Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0027ActualShard11Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0027ActualRows.drop 352).take 15

theorem k4PrefixGroup0027ActualShard11_passes :
    k4PrefixGroup0027ActualShard11Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0027RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0027ActualShard11_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
