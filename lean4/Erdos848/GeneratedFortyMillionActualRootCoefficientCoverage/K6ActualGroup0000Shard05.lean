import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0000Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0000ActualShard05Rows : List (List Nat × Nat) :=
  (k6PrefixGroup0000ActualRows.drop 160).take 32

theorem k6PrefixGroup0000ActualShard05_passes :
    k6PrefixGroup0000ActualShard05Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0000RootCoefficientPasses = true := by
  rfl

#print axioms k6PrefixGroup0000ActualShard05_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
