import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0008Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0008ActualShard11Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0008ActualRows.drop 352).take 32

theorem k4PrefixGroup0008ActualShard11_passes :
    k4PrefixGroup0008ActualShard11Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0008RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0008ActualShard11_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
