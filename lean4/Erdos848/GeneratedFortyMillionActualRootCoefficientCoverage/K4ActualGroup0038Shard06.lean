import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0038Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0038ActualShard06Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0038ActualRows.drop 192).take 32

theorem k4PrefixGroup0038ActualShard06_passes :
    k4PrefixGroup0038ActualShard06Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0038RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0038ActualShard06_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
