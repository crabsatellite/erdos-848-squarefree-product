import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0006Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0006ActualShard03Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0006ActualRows.drop 96).take 6

theorem k6PrefixGroup0006ActualShard03_passes :
    k6PrefixGroup0006ActualShard03Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0006RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0006ActualShard03_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
