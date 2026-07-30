import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0024Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0024ActualShard00Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0024ActualRows.drop 0).take 28

theorem k6PrefixGroup0024ActualShard00_passes :
    k6PrefixGroup0024ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0024RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0024ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
