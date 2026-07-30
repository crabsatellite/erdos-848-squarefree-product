import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0017Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0017ActualShard08Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0017ActualRows.drop 256).take 32

theorem k4PrefixGroup0017ActualShard08_passes :
    k4PrefixGroup0017ActualShard08Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0017RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0017ActualShard08_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
