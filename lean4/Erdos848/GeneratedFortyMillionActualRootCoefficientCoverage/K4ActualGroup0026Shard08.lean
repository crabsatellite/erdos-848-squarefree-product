import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0026Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0026ActualShard08Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0026ActualRows.drop 256).take 32

theorem k4PrefixGroup0026ActualShard08_passes :
    k4PrefixGroup0026ActualShard08Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0026RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0026ActualShard08_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
