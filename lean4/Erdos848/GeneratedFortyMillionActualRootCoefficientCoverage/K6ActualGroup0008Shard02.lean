import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0008Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0008ActualShard02Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0008ActualRows.drop 64).take 21

theorem k6PrefixGroup0008ActualShard02_passes :
    k6PrefixGroup0008ActualShard02Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0008RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0008ActualShard02_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
