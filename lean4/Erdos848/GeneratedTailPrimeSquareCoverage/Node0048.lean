import Erdos848.GeneratedTailPrimeSquareCoverage.Node0023
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0047

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0048 : Erdos848.PrimeIntervalProofTree
    2 102400 9805 :=
  .node costTreeNode0023 costTreeNode0047

theorem costTreeNode0048_cost :
    costTreeNode0048.squareTailCost 47 10_000_000_000 = 38_770_922 := by
  calc
    costTreeNode0048.squareTailCost 47 10_000_000_000 =
        costTreeNode0023.squareTailCost 47 10_000_000_000 +
          costTreeNode0047.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0048, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 38_770_922 := by
      rw [costTreeNode0023_cost, costTreeNode0047_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
