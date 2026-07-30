import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0007Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0007ActualShard00Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0007ActualRows.drop 0).take 32

theorem k6PrefixGroup0007ActualShard00_passes :
    k6PrefixGroup0007ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0007RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0007ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
