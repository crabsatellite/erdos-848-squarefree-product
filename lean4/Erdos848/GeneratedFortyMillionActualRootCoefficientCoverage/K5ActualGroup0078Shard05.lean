import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0078Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0078ActualShard05Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0078ActualRows.drop 160).take 19

theorem k5PrefixGroup0078ActualShard05_passes :
    k5PrefixGroup0078ActualShard05Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0078RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0078ActualShard05_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
