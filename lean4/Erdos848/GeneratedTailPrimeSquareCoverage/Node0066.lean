import Erdos848.GeneratedTailPrimeSquareCoverage.Block0068
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0065

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0066 : Erdos848.PrimeIntervalProofTree
    139266 6144 511 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0068 costTreeNode0065

theorem costTreeNode0066_cost :
    costTreeNode0066.squareTailCost 47 10_000_000_000 = 511 := by
  calc
    costTreeNode0066.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0068.squareTailCost 47 10_000_000_000 +
          costTreeNode0065.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0066, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 511 := by
      rw [blockCost0068, costTreeNode0065_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
