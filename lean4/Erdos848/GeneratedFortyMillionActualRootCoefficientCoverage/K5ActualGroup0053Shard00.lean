import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0053Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0053ActualShard00Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0053ActualRows.drop 0).take 32

theorem k5PrefixGroup0053ActualShard00_passes :
    k5PrefixGroup0053ActualShard00Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0053RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0053ActualShard00_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
