import Erdos848.GeneratedTailPrimeSquareCoverage.Block0050
import Erdos848.GeneratedTailPrimeSquareCoverage.Node0049

namespace Erdos848.GeneratedTailPrimeSquareCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def costTreeNode0050 : Erdos848.PrimeIntervalProofTree
    102402 6144 519 :=
  .node Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0050 costTreeNode0049

theorem costTreeNode0050_cost :
    costTreeNode0050.squareTailCost 47 10_000_000_000 = 519 := by
  calc
    costTreeNode0050.squareTailCost 47 10_000_000_000 =
        Erdos848.GeneratedTailPrimeIntervalCoverage.blockTree0050.squareTailCost 47 10_000_000_000 +
          costTreeNode0049.squareTailCost 47 10_000_000_000 := by
      rw [costTreeNode0050, Erdos848.PrimeIntervalProofTree.squareTailCost_node]
    _ = 519 := by
      rw [blockCost0050, costTreeNode0049_cost]

end Erdos848.GeneratedTailPrimeSquareCoverage
