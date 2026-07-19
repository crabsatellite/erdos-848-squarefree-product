import Erdos848.GeneratedTailPrimeSquareCoverage.Node0066
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0069

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0070 : Erdos848.PrimeIntervalProofTree
    139266 14336 1218 :=
  .node costTreeNode0066 costTreeNode0069

theorem costTreeNode0070_cost :
    costTreeNode0070.squareTailCost 47 10_000_000_000 = 1_218 := by
  calc
    costTreeNode0070.squareTailCost 47 10_000_000_000 =
        costTreeNode0066.squareTailCost 47 10_000_000_000 +
          costTreeNode0069.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0070, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_218 := by
      rw [costTreeNode0066_cost, costTreeNode0069_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
