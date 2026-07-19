import Erdos848.GeneratedTailPrimeSquareCoverage.Node0028
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0033

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0034 : Erdos848.PrimeIntervalProofTree
    51202 24576 2226 :=
  .node costTreeNode0028 costTreeNode0033

theorem costTreeNode0034_cost :
    costTreeNode0034.squareTailCost 47 10_000_000_000 = 6_827 := by
  calc
    costTreeNode0034.squareTailCost 47 10_000_000_000 =
        costTreeNode0028.squareTailCost 47 10_000_000_000 +
          costTreeNode0033.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0034, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 6_827 := by
      rw [costTreeNode0028_cost, costTreeNode0033_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
