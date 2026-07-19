import Erdos848.GeneratedTailPrimeSquareCoverage.Node0050
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0052

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0053 : Erdos848.PrimeIntervalProofTree
    102402 12288 1042 :=
  .node costTreeNode0050 costTreeNode0052

theorem costTreeNode0053_cost :
    costTreeNode0053.squareTailCost 47 10_000_000_000 = 1_042 := by
  calc
    costTreeNode0053.squareTailCost 47 10_000_000_000 =
        costTreeNode0050.squareTailCost 47 10_000_000_000 +
          costTreeNode0052.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0053, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_042 := by
      rw [costTreeNode0050_cost, costTreeNode0052_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
