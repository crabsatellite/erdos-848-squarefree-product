import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0011Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k5PrefixGroup0011ActualShard08Rows : List (List Nat × Nat) :=
  (k5PrefixGroup0011ActualRows.drop 256).take 19

theorem k5PrefixGroup0011ActualShard08_passes :
    k5PrefixGroup0011ActualShard08Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0011RootCoefficientPasses = true := by
  rfl

#print axioms k5PrefixGroup0011ActualShard08_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
