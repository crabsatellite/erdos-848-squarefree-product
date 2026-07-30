import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0018Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0018ActualShard04Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0018ActualRows.drop 128).take 32

theorem k4PrefixGroup0018ActualShard04_passes :
    k4PrefixGroup0018ActualShard04Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0018RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0018ActualShard04_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
