import Erdos848.GeneratedTailPrimeSquareCoverage.Node0072
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0096

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0097 : Erdos848.PrimeIntervalProofTree
    102402 101680 8506 :=
  .node costTreeNode0072 costTreeNode0096

theorem costTreeNode0097_cost :
    costTreeNode0097.squareTailCost 47 10_000_000_000 = 8_506 := by
  calc
    costTreeNode0097.squareTailCost 47 10_000_000_000 =
        costTreeNode0072.squareTailCost 47 10_000_000_000 +
          costTreeNode0096.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0097, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 8_506 := by
      rw [costTreeNode0072_cost, costTreeNode0096_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
