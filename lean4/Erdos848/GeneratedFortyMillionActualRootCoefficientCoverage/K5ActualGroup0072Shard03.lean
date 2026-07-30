import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0072Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0072ActualShard03Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0072ActualRows.drop 96).take 32

theorem k5PrefixGroup0072ActualShard03_passes :
    k5PrefixGroup0072ActualShard03Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0072RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0072ActualShard03_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
