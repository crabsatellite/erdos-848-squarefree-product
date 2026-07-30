import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0020Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0020ActualShard01Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0020ActualRows.drop 32).take 32

theorem k6PrefixGroup0020ActualShard01_passes :
    k6PrefixGroup0020ActualShard01Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0020RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0020ActualShard01_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
