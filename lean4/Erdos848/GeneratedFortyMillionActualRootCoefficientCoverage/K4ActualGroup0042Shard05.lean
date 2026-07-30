import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0042Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0042ActualShard05Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0042ActualRows.drop 160).take 32

theorem k4PrefixGroup0042ActualShard05_passes :
    k4PrefixGroup0042ActualShard05Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0042RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0042ActualShard05_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
