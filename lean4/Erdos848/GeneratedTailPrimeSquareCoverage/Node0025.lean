import Erdos848.GeneratedTailPrimeSquareCoverage.Block0025
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0024

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0025 : Erdos848.PrimeIntervalProofTree
    51202 6144 575 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0025 costTreeNode0024

theorem costTreeNode0025_cost :
    costTreeNode0025.squareTailCost 47 10_000_000_000 = 2_300 := by
  calc
    costTreeNode0025.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0025.squareTailCost 47 10_000_000_000 +
          costTreeNode0024.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0025, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 2_300 := by
      rw [blockCost0025, costTreeNode0024_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
