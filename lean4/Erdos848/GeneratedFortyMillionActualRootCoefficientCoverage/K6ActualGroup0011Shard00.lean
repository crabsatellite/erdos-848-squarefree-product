import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0011Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0011ActualShard00Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0011ActualRows.drop 0).take 6

theorem k6PrefixGroup0011ActualShard00_passes :
    k6PrefixGroup0011ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0011RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0011ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
