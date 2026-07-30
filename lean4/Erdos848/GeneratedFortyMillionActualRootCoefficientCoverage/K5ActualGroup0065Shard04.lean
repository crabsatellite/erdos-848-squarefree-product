import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0065Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0065ActualShard04Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0065ActualRows.drop 128).take 32

theorem k5PrefixGroup0065ActualShard04_passes :
    k5PrefixGroup0065ActualShard04Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0065RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0065ActualShard04_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
