import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0004Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0004ActualShard02Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0004ActualRows.drop 64).take 10

theorem k6PrefixGroup0004ActualShard02_passes :
    k6PrefixGroup0004ActualShard02Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0004RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0004ActualShard02_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
