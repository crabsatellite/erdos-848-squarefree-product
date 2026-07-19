import Erdos848.GeneratedTailPrimeSquareCoverage.Node0042
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0043

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0044 : Erdos848.PrimeIntervalProofTree
    94210 8192 718 :=
  .node costTreeNode0042 costTreeNode0043

theorem costTreeNode0044_cost :
    costTreeNode0044.squareTailCost 47 10_000_000_000 = 1_223 := by
  calc
    costTreeNode0044.squareTailCost 47 10_000_000_000 =
        costTreeNode0042.squareTailCost 47 10_000_000_000 +
          costTreeNode0043.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0044, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_223 := by
      rw [costTreeNode0042_cost, costTreeNode0043_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
