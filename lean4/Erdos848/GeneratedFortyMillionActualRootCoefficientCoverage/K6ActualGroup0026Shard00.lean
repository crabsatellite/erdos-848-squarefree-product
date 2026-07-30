import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0026Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0026ActualShard00Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0026ActualRows.drop 0).take 15

theorem k6PrefixGroup0026ActualShard00_passes :
    k6PrefixGroup0026ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0026RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0026ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
