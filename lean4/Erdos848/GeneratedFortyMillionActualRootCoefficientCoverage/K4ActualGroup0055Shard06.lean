import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0055Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0055ActualShard06Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0055ActualRows.drop 192).take 32

theorem k4PrefixGroup0055ActualShard06_passes :
    k4PrefixGroup0055ActualShard06Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0055RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0055ActualShard06_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
