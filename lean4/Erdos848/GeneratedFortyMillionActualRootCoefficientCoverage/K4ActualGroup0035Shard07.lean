import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0035Defs

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k4PrefixGroup0035ActualShard07Rows : List (List Nat × Nat) :=
  (k4PrefixGroup0035ActualRows.drop 224).take 32

theorem k4PrefixGroup0035ActualShard07_passes :
    k4PrefixGroup0035ActualShard07Rows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0035RootCoefficientPasses = true := by
  rfl

#print axioms k4PrefixGroup0035ActualShard07_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
