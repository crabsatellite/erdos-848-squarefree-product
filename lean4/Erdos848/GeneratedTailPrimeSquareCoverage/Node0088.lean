import Erdos848.GeneratedTailPrimeSquareCoverage.Node0085
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0087

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0088 : Erdos848.PrimeIntervalProofTree
    178178 12288 1027 :=
  .node costTreeNode0085 costTreeNode0087

theorem costTreeNode0088_cost :
    costTreeNode0088.squareTailCost 47 10_000_000_000 = 1_027 := by
  calc
    costTreeNode0088.squareTailCost 47 10_000_000_000 =
        costTreeNode0085.squareTailCost 47 10_000_000_000 +
          costTreeNode0087.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0088, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_027 := by
      rw [costTreeNode0085_cost, costTreeNode0087_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
