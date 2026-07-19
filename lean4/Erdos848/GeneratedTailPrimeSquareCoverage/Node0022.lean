import Erdos848.GeneratedTailPrimeSquareCoverage.Node0015
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0021

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0022 : Erdos848.PrimeIntervalProofTree
    24578 26624 2514 :=
  .node costTreeNode0015 costTreeNode0021

theorem costTreeNode0022_cost :
    costTreeNode0022.squareTailCost 47 10_000_000_000 = 21_383 := by
  calc
    costTreeNode0022.squareTailCost 47 10_000_000_000 =
        costTreeNode0015.squareTailCost 47 10_000_000_000 +
          costTreeNode0021.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0022, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 21_383 := by
      rw [costTreeNode0015_cost, costTreeNode0021_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
