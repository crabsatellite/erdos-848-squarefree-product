import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0034ActualShard11Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0034ActualRows.drop 352).take 32

theorem k4PrefixGroup0034ActualShard11_passes :
    k4PrefixGroup0034ActualShard11Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0034RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0034ActualShard11_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
