import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0012Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0012ActualShard03Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0012ActualRows.drop 96).take 32

theorem k5PrefixGroup0012ActualShard03_passes :
    k5PrefixGroup0012ActualShard03Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0012RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0012ActualShard03_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
