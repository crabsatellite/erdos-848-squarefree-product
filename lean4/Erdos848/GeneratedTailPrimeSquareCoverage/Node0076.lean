import Erdos848.GeneratedTailPrimeSquareCoverage.Block0078
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0075

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0076 : Erdos848.PrimeIntervalProofTree
    159746 6144 505 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0078 costTreeNode0075

theorem costTreeNode0076_cost :
    costTreeNode0076.squareTailCost 47 10_000_000_000 = 505 := by
  calc
    costTreeNode0076.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0078.squareTailCost 47 10_000_000_000 +
          costTreeNode0075.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0076, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 505 := by
      rw [blockCost0078, costTreeNode0075_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
