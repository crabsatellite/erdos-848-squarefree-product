import Erdos848.GeneratedTailPrimeSquareCoverage.Node0018
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0019

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0020 : Erdos848.PrimeIntervalProofTree
    43010 8192 744 :=
  .node costTreeNode0018 costTreeNode0019

theorem costTreeNode0020_cost :
    costTreeNode0020.squareTailCost 47 10_000_000_000 = 3_767 := by
  calc
    costTreeNode0020.squareTailCost 47 10_000_000_000 =
        costTreeNode0018.squareTailCost 47 10_000_000_000 +
          costTreeNode0019.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0020, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 3_767 := by
      rw [costTreeNode0018_cost, costTreeNode0019_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
