import Erdos848.GeneratedTailPrimeSquareCoverage.Block0059
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0056

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0057 : Erdos848.PrimeIntervalProofTree
    120834 6144 528 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0059 costTreeNode0056

theorem costTreeNode0057_cost :
    costTreeNode0057.squareTailCost 47 10_000_000_000 = 528 := by
  calc
    costTreeNode0057.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0059.squareTailCost 47 10_000_000_000 +
          costTreeNode0056.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0057, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 528 := by
      rw [blockCost0059, costTreeNode0056_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
