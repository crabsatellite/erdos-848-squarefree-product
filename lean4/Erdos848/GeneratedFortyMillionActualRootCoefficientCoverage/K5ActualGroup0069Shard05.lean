import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0069Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0069ActualShard05Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0069ActualRows.drop 160).take 26

theorem k5PrefixGroup0069ActualShard05_passes :
    k5PrefixGroup0069ActualShard05Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0069RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0069ActualShard05_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
