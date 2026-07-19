import Erdos848.GeneratedTailPrimeSquareCoverage.Node0083
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0095

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0096 : Erdos848.PrimeIntervalProofTree
    153602 50480 4152 :=
  .node costTreeNode0083 costTreeNode0095

theorem costTreeNode0096_cost :
    costTreeNode0096.squareTailCost 47 10_000_000_000 = 4_152 := by
  calc
    costTreeNode0096.squareTailCost 47 10_000_000_000 =
        costTreeNode0083.squareTailCost 47 10_000_000_000 +
          costTreeNode0095.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0096, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 4_152 := by
      rw [costTreeNode0083_cost, costTreeNode0095_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
