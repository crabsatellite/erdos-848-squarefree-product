import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0075Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0075ActualShard04Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0075ActualRows.drop 128).take 11

theorem k5PrefixGroup0075ActualShard04_passes :
    k5PrefixGroup0075ActualShard04Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0075RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0075ActualShard04_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
