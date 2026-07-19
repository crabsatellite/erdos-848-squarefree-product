import Erdos848.GeneratedTailPrimeSquareCoverage.Node0074
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0076

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0077 : Erdos848.PrimeIntervalProofTree
    153602 12288 1008 :=
  .node costTreeNode0074 costTreeNode0076

theorem costTreeNode0077_cost :
    costTreeNode0077.squareTailCost 47 10_000_000_000 = 1_008 := by
  calc
    costTreeNode0077.squareTailCost 47 10_000_000_000 =
        costTreeNode0074.squareTailCost 47 10_000_000_000 +
          costTreeNode0076.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0077, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_008 := by
      rw [costTreeNode0074_cost, costTreeNode0076_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
