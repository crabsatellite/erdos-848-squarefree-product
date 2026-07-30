import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0039Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0039ActualShard08Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0039ActualRows.drop 256).take 32

theorem k4PrefixGroup0039ActualShard08_passes :
    k4PrefixGroup0039ActualShard08Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0039RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0039ActualShard08_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
