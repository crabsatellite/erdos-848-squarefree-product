import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0012Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0012ActualShard07Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0012ActualRows.drop 224).take 19

theorem k5PrefixGroup0012ActualShard07_passes :
    k5PrefixGroup0012ActualShard07Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0012RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0012ActualShard07_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
