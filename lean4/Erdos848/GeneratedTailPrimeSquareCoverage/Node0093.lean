import Erdos848.GeneratedTailPrimeSquareCoverage.Node0091
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0092

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0093 : Erdos848.PrimeIntervalProofTree
    196610 7472 607 :=
  .node costTreeNode0091 costTreeNode0092

theorem costTreeNode0093_cost :
    costTreeNode0093.squareTailCost 47 10_000_000_000 = 607 := by
  calc
    costTreeNode0093.squareTailCost 47 10_000_000_000 =
        costTreeNode0091.squareTailCost 47 10_000_000_000 +
          costTreeNode0092.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0093, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 607 := by
      rw [costTreeNode0091_cost, costTreeNode0092_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
