import Erdos848.GeneratedTailPrimeSquareCoverage.Node0034
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0046

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0047 : Erdos848.PrimeIntervalProofTree
    51202 51200 4566 :=
  .node costTreeNode0034 costTreeNode0046

theorem costTreeNode0047_cost :
    costTreeNode0047.squareTailCost 47 10_000_000_000 = 11_294 := by
  calc
    costTreeNode0047.squareTailCost 47 10_000_000_000 =
        costTreeNode0034.squareTailCost 47 10_000_000_000 +
          costTreeNode0046.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0047, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 11_294 := by
      rw [costTreeNode0034_cost, costTreeNode0046_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
