import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0029Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0029ActualShard06Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0029ActualRows.drop 192).take 32

theorem k4PrefixGroup0029ActualShard06_passes :
    k4PrefixGroup0029ActualShard06Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0029RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0029ActualShard06_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
