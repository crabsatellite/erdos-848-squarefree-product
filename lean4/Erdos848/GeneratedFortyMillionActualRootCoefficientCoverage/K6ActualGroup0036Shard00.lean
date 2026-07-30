import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0036Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0036ActualShard00Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0036ActualRows.drop 0).take 14

theorem k6PrefixGroup0036ActualShard00_passes :
    k6PrefixGroup0036ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0036RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0036ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
