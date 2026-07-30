import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0003Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0003ActualShard03Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0003ActualRows.drop 96).take 32

theorem k6PrefixGroup0003ActualShard03_passes :
    k6PrefixGroup0003ActualShard03Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0003RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0003ActualShard03_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
