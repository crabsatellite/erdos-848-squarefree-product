import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0043Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0043ActualShard07Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0043ActualRows.drop 224).take 26

theorem k5PrefixGroup0043ActualShard07_passes :
    k5PrefixGroup0043ActualShard07Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0043RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0043ActualShard07_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
