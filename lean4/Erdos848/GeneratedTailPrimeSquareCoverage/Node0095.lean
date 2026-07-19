import Erdos848.GeneratedTailPrimeSquareCoverage.Node0088
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0094

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0095 : Erdos848.PrimeIntervalProofTree
    178178 25904 2138 :=
  .node costTreeNode0088 costTreeNode0094

theorem costTreeNode0095_cost :
    costTreeNode0095.squareTailCost 47 10_000_000_000 = 2_138 := by
  calc
    costTreeNode0095.squareTailCost 47 10_000_000_000 =
        costTreeNode0088.squareTailCost 47 10_000_000_000 +
          costTreeNode0094.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0095, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 2_138 := by
      rw [costTreeNode0088_cost, costTreeNode0094_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
