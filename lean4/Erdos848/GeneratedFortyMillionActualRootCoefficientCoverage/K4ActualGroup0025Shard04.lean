import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0025Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0025ActualShard04Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0025ActualRows.drop 128).take 32

theorem k4PrefixGroup0025ActualShard04_passes :
    k4PrefixGroup0025ActualShard04Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0025RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0025ActualShard04_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
