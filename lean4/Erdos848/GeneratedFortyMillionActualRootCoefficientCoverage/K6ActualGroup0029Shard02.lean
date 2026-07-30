import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0029Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0029ActualShard02Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0029ActualRows.drop 64).take 15

theorem k6PrefixGroup0029ActualShard02_passes :
    k6PrefixGroup0029ActualShard02Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0029RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0029ActualShard02_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
