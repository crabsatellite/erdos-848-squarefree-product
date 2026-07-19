import Erdos848.GeneratedTailPrimeSquareCoverage.Node0064
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0070

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0071 : Erdos848.PrimeIntervalProofTree
    126978 26624 2259 :=
  .node costTreeNode0064 costTreeNode0070

theorem costTreeNode0071_cost :
    costTreeNode0071.squareTailCost 47 10_000_000_000 = 2_259 := by
  calc
    costTreeNode0071.squareTailCost 47 10_000_000_000 =
        costTreeNode0064.squareTailCost 47 10_000_000_000 +
          costTreeNode0070.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0071, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 2_259 := by
      rw [costTreeNode0064_cost, costTreeNode0070_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
