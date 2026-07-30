import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0043Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0043ActualShard06Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0043ActualRows.drop 192).take 32

theorem k5PrefixGroup0043ActualShard06_passes :
    k5PrefixGroup0043ActualShard06Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0043RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0043ActualShard06_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
