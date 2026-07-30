import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0020Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0020ActualShard07Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0020ActualRows.drop 224).take 32

theorem k5PrefixGroup0020ActualShard07_passes :
    k5PrefixGroup0020ActualShard07Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0020RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0020ActualShard07_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
