import Erdos848.GeneratedTailPrimeSquareCoverage.Node0053
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0058

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0059 : Erdos848.PrimeIntervalProofTree
    102402 24576 2095 :=
  .node costTreeNode0053 costTreeNode0058

theorem costTreeNode0059_cost :
    costTreeNode0059.squareTailCost 47 10_000_000_000 = 2_095 := by
  calc
    costTreeNode0059.squareTailCost 47 10_000_000_000 =
        costTreeNode0053.squareTailCost 47 10_000_000_000 +
          costTreeNode0058.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0059, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 2_095 := by
      rw [costTreeNode0053_cost, costTreeNode0058_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
