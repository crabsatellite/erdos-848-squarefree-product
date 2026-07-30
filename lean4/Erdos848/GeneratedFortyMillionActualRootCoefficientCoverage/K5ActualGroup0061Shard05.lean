import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0061Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0061ActualShard05Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0061ActualRows.drop 160).take 32

theorem k5PrefixGroup0061ActualShard05_passes :
    k5PrefixGroup0061ActualShard05Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0061RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0061ActualShard05_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
