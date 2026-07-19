import Erdos848.GeneratedTailPrimeSquareCoverage.Node0061
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0063

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0064 : Erdos848.PrimeIntervalProofTree
    126978 12288 1041 :=
  .node costTreeNode0061 costTreeNode0063

theorem costTreeNode0064_cost :
    costTreeNode0064.squareTailCost 47 10_000_000_000 = 1_041 := by
  calc
    costTreeNode0064.squareTailCost 47 10_000_000_000 =
        costTreeNode0061.squareTailCost 47 10_000_000_000 +
          costTreeNode0063.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0064, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_041 := by
      rw [costTreeNode0061_cost, costTreeNode0063_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
