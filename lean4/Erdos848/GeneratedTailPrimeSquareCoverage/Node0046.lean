import Erdos848.GeneratedTailPrimeSquareCoverage.Node0039
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0045

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0046 : Erdos848.PrimeIntervalProofTree
    75778 26624 2340 :=
  .node costTreeNode0039 costTreeNode0045

theorem costTreeNode0046_cost :
    costTreeNode0046.squareTailCost 47 10_000_000_000 = 4_467 := by
  calc
    costTreeNode0046.squareTailCost 47 10_000_000_000 =
        costTreeNode0039.squareTailCost 47 10_000_000_000 +
          costTreeNode0045.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0046, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 4_467 := by
      rw [costTreeNode0039_cost, costTreeNode0045_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
