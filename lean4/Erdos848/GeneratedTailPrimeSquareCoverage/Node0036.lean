import Erdos848.GeneratedTailPrimeSquareCoverage.Block0037
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0035

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0036 : Erdos848.PrimeIntervalProofTree
    75778 6144 544 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0037 costTreeNode0035

theorem costTreeNode0036_cost :
    costTreeNode0036.squareTailCost 47 10_000_000_000 = 1_088 := by
  calc
    costTreeNode0036.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0037.squareTailCost 47 10_000_000_000 +
          costTreeNode0035.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0036, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 1_088 := by
      rw [blockCost0037, costTreeNode0035_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
