import Erdos848.GeneratedTailPrimeSquareCoverage.Node0010
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0022

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0023 : Erdos848.PrimeIntervalProofTree
    2 51200 5239 :=
  .node costTreeNode0010 costTreeNode0022

theorem costTreeNode0023_cost :
    costTreeNode0023.squareTailCost 47 10_000_000_000 = 38_759_628 := by
  calc
    costTreeNode0023.squareTailCost 47 10_000_000_000 =
        costTreeNode0010.squareTailCost 47 10_000_000_000 +
          costTreeNode0022.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0023, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 38_759_628 := by
      rw [costTreeNode0010_cost, costTreeNode0022_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
