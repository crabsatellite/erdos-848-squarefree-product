import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0030Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0030ActualShard04Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0030ActualRows.drop 128).take 32

theorem k5PrefixGroup0030ActualShard04_passes :
    k5PrefixGroup0030ActualShard04Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0030RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0030ActualShard04_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
