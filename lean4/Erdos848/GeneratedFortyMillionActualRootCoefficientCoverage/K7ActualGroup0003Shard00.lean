import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7ActualGroup0003Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k7PrefixGroup0003ActualShard00Rows : List (List Nat × Nat) :=
  (k7PrefixGroup0003ActualRows.drop 0).take 2

theorem k7PrefixGroup0003ActualShard00_passes :
    k7PrefixGroup0003ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k7PrefixGroup0003RootCoefficientPasses = true := by
  rfl

#print axioms k7PrefixGroup0003ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
