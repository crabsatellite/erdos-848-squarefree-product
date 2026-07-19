import Erdos848.GeneratedTailPrimeSquareCoverage.Node0004
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0009

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0010 : Erdos848.PrimeIntervalProofTree
    2 24576 2725 :=
  .node costTreeNode0004 costTreeNode0009

theorem costTreeNode0010_cost :
    costTreeNode0010.squareTailCost 47 10_000_000_000 = 38_738_245 := by
  calc
    costTreeNode0010.squareTailCost 47 10_000_000_000 =
        costTreeNode0004.squareTailCost 47 10_000_000_000 +
          costTreeNode0009.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0010, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 38_738_245 := by
      rw [costTreeNode0004_cost, costTreeNode0009_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
