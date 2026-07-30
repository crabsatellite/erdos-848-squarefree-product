import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0017Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0017ActualShard01Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0017ActualRows.drop 32).take 2

theorem k6PrefixGroup0017ActualShard01_passes :
    k6PrefixGroup0017ActualShard01Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0017RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0017ActualShard01_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
