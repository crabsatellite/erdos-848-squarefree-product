import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0019Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0019ActualShard08Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0019ActualRows.drop 256).take 11

theorem k4PrefixGroup0019ActualShard08_passes :
    k4PrefixGroup0019ActualShard08Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0019RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0019ActualShard08_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
