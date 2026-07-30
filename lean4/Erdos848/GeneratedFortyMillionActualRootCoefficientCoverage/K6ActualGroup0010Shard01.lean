import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0010Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0010ActualShard01Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0010ActualRows.drop 32).take 8

theorem k6PrefixGroup0010ActualShard01_passes :
    k6PrefixGroup0010ActualShard01Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0010RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0010ActualShard01_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
