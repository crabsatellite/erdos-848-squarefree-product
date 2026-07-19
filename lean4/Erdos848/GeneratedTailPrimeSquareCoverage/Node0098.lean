import Erdos848.GeneratedTailPrimeSquareCoverage.Node0048
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0097

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0098 : Erdos848.PrimeIntervalProofTree
    2 204080 18311 :=
  .node costTreeNode0048 costTreeNode0097

theorem costTreeNode0098_cost :
    costTreeNode0098.squareTailCost 47 10_000_000_000 = 38_779_428 := by
  calc
    costTreeNode0098.squareTailCost 47 10_000_000_000 =
        costTreeNode0048.squareTailCost 47 10_000_000_000 +
          costTreeNode0097.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0098, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 38_779_428 := by
      rw [costTreeNode0048_cost, costTreeNode0097_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
