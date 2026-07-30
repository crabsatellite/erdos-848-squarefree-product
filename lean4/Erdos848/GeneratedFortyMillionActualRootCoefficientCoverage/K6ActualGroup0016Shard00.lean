import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0016Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0016ActualShard00Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0016ActualRows.drop 0).take 32

theorem k6PrefixGroup0016ActualShard00_passes :
    k6PrefixGroup0016ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0016RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0016ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
