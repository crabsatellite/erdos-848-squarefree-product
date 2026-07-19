import Erdos848.GeneratedTailPrimeSquareCoverage.Block0075
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0073

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0074 : Erdos848.PrimeIntervalProofTree
    153602 6144 503 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0075 costTreeNode0073

theorem costTreeNode0074_cost :
    costTreeNode0074.squareTailCost 47 10_000_000_000 = 503 := by
  calc
    costTreeNode0074.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0075.squareTailCost 47 10_000_000_000 +
          costTreeNode0073.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0074, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 503 := by
      rw [blockCost0075, costTreeNode0073_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
