import Erdos848.GeneratedTailPrimeSquareCoverage.Node0041
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0044

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0045 : Erdos848.PrimeIntervalProofTree
    88066 14336 1257 :=
  .node costTreeNode0041 costTreeNode0044

theorem costTreeNode0045_cost :
    costTreeNode0045.squareTailCost 47 10_000_000_000 = 2_301 := by
  calc
    costTreeNode0045.squareTailCost 47 10_000_000_000 =
        costTreeNode0041.squareTailCost 47 10_000_000_000 +
          costTreeNode0044.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0045, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 2_301 := by
      rw [costTreeNode0041_cost, costTreeNode0044_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
