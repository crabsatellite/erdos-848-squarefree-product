import Erdos848.GeneratedTailPrimeSquareCoverage.Node0030
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0032

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0033 : Erdos848.PrimeIntervalProofTree
    63490 12288 1102 :=
  .node costTreeNode0030 costTreeNode0032

theorem costTreeNode0033_cost :
    costTreeNode0033.squareTailCost 47 10_000_000_000 = 2_845 := by
  calc
    costTreeNode0033.squareTailCost 47 10_000_000_000 =
        costTreeNode0030.squareTailCost 47 10_000_000_000 +
          costTreeNode0032.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0033, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 2_845 := by
      rw [costTreeNode0030_cost, costTreeNode0032_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
