import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0039Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0039ActualShard01Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0039ActualRows.drop 32).take 32

theorem k4PrefixGroup0039ActualShard01_passes :
    k4PrefixGroup0039ActualShard01Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0039RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0039ActualShard01_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
