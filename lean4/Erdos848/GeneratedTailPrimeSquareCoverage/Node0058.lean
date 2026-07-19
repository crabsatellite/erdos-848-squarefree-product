import Erdos848.GeneratedTailPrimeSquareCoverage.Node0055
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0057

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0058 : Erdos848.PrimeIntervalProofTree
    114690 12288 1053 :=
  .node costTreeNode0055 costTreeNode0057

theorem costTreeNode0058_cost :
    costTreeNode0058.squareTailCost 47 10_000_000_000 = 1_053 := by
  calc
    costTreeNode0058.squareTailCost 47 10_000_000_000 =
        costTreeNode0055.squareTailCost 47 10_000_000_000 +
          costTreeNode0057.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0058, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_053 := by
      rw [costTreeNode0055_cost, costTreeNode0057_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
