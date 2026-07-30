import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0034Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0034ActualShard00Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0034ActualRows.drop 0).take 9

theorem k6PrefixGroup0034ActualShard00_passes :
    k6PrefixGroup0034ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0034RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0034ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
