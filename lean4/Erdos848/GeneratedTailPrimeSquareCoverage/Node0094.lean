import Erdos848.GeneratedTailPrimeSquareCoverage.Node0090
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0093

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0094 : Erdos848.PrimeIntervalProofTree
    190466 13616 1111 :=
  .node costTreeNode0090 costTreeNode0093

theorem costTreeNode0094_cost :
    costTreeNode0094.squareTailCost 47 10_000_000_000 = 1_111 := by
  calc
    costTreeNode0094.squareTailCost 47 10_000_000_000 =
        costTreeNode0090.squareTailCost 47 10_000_000_000 +
          costTreeNode0093.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0094, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_111 := by
      rw [costTreeNode0090_cost, costTreeNode0093_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
