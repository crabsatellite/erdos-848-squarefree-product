import Erdos848.GeneratedTailPrimeSquareCoverage.Node0001
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0003

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0004 : Erdos848.PrimeIntervalProofTree
    2 12288 1470 :=
  .node costTreeNode0001 costTreeNode0003

theorem costTreeNode0004_cost :
    costTreeNode0004.squareTailCost 47 10_000_000_000 = 38_695_767 := by
  calc
    costTreeNode0004.squareTailCost 47 10_000_000_000 =
        costTreeNode0001.squareTailCost 47 10_000_000_000 +
          costTreeNode0003.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0004, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 38_695_767 := by
      rw [costTreeNode0001_cost, costTreeNode0003_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
