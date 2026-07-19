import Erdos848.GeneratedTailPrimeSquareCoverage.Node0059
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0071

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0072 : Erdos848.PrimeIntervalProofTree
    102402 51200 4354 :=
  .node costTreeNode0059 costTreeNode0071

theorem costTreeNode0072_cost :
    costTreeNode0072.squareTailCost 47 10_000_000_000 = 4_354 := by
  calc
    costTreeNode0072.squareTailCost 47 10_000_000_000 =
        costTreeNode0059.squareTailCost 47 10_000_000_000 +
          costTreeNode0071.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0072, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 4_354 := by
      rw [costTreeNode0059_cost, costTreeNode0071_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
