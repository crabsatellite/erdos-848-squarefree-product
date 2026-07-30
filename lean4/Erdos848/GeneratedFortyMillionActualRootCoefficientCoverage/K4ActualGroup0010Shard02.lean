import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0010Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0010ActualShard02Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0010ActualRows.drop 64).take 32

theorem k4PrefixGroup0010ActualShard02_passes :
    k4PrefixGroup0010ActualShard02Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0010RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0010ActualShard02_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
