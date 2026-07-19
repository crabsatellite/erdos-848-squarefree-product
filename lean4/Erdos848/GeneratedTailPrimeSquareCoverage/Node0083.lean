import Erdos848.GeneratedTailPrimeSquareCoverage.Node0077
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0082

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0083 : Erdos848.PrimeIntervalProofTree
    153602 24576 2014 :=
  .node costTreeNode0077 costTreeNode0082

theorem costTreeNode0083_cost :
    costTreeNode0083.squareTailCost 47 10_000_000_000 = 2_014 := by
  calc
    costTreeNode0083.squareTailCost 47 10_000_000_000 =
        costTreeNode0077.squareTailCost 47 10_000_000_000 +
          costTreeNode0082.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0083, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 2_014 := by
      rw [costTreeNode0077_cost, costTreeNode0082_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
